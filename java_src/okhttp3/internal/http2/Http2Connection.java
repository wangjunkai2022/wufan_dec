package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.Protocol;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
/* loaded from: classes5.dex */
public final class Http2Connection implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private static final ExecutorService listenerExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp Http2Connection", true));
    private boolean awaitingPong;
    long bytesLeftInWriteWindow;
    final boolean client;
    final Set<Integer> currentPushRequests;
    final String hostname;
    int lastGoodStreamId;
    final Listener listener;
    int nextStreamId;
    final Settings peerSettings;
    private final ExecutorService pushExecutor;
    final PushObserver pushObserver;
    final ReaderRunnable readerRunnable;
    boolean receivedInitialPeerSettings;
    boolean shutdown;
    final Socket socket;
    final Http2Writer writer;
    private final ScheduledExecutorService writerExecutor;
    final Map<Integer, Http2Stream> streams = new LinkedHashMap();
    long unacknowledgedBytesRead = 0;
    Settings okHttpSettings = new Settings();

    /* loaded from: classes5.dex */
    public static abstract class Listener {
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection.Listener.1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(Http2Stream http2Stream) throws IOException {
                http2Stream.close(ErrorCode.REFUSED_STREAM);
            }
        };

        public void onSettings(Http2Connection http2Connection) {
        }

        public abstract void onStream(Http2Stream http2Stream) throws IOException;
    }

    /* loaded from: classes5.dex */
    final class PingRunnable extends NamedRunnable {
        final int payload1;
        final int payload2;
        final boolean reply;

        PingRunnable(boolean z3, int i2, int i4) {
            super("OkHttp %s ping %08x%08x", Http2Connection.this.hostname, Integer.valueOf(i2), Integer.valueOf(i4));
            this.reply = z3;
            this.payload1 = i2;
            this.payload2 = i4;
        }

        @Override // okhttp3.internal.NamedRunnable
        public void execute() {
            Http2Connection.this.writePing(this.reply, this.payload1, this.payload2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class ReaderRunnable extends NamedRunnable implements Http2Reader.Handler {
        final Http2Reader reader;

        ReaderRunnable(Http2Reader http2Reader) {
            super("OkHttp %s", Http2Connection.this.hostname);
            this.reader = http2Reader;
        }

        private void applyAndAckSettings(final Settings settings) {
            try {
                Http2Connection.this.writerExecutor.execute(new NamedRunnable("OkHttp %s ACK Settings", new Object[]{Http2Connection.this.hostname}) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.3
                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        try {
                            Http2Connection.this.writer.applyAndAckSettings(settings);
                        } catch (IOException unused) {
                            Http2Connection.this.failConnection();
                        }
                    }
                });
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int i2, String str, ByteString byteString, String str2, int i4, long j4) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean z3, int i2, BufferedSource bufferedSource, int i4) throws IOException {
            if (Http2Connection.this.pushedStream(i2)) {
                Http2Connection.this.pushDataLater(i2, bufferedSource, i4, z3);
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i2);
            if (stream == null) {
                Http2Connection.this.writeSynResetLater(i2, ErrorCode.PROTOCOL_ERROR);
                long j4 = i4;
                Http2Connection.this.updateConnectionFlowControl(j4);
                bufferedSource.skip(j4);
                return;
            }
            stream.receiveData(bufferedSource, i4);
            if (z3) {
                stream.receiveFin();
            }
        }

        @Override // okhttp3.internal.NamedRunnable
        protected void execute() {
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    this.reader.readConnectionPreface(this);
                    while (this.reader.nextFrame(false, this)) {
                    }
                    errorCode = ErrorCode.NO_ERROR;
                    try {
                        try {
                            Http2Connection.this.close(errorCode, ErrorCode.CANCEL);
                        } catch (IOException unused) {
                            ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                            Http2Connection.this.close(errorCode3, errorCode3);
                            Util.closeQuietly(this.reader);
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            Http2Connection.this.close(errorCode, errorCode2);
                        } catch (IOException unused2) {
                        }
                        Util.closeQuietly(this.reader);
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                errorCode = errorCode2;
            } catch (Throwable th2) {
                th = th2;
                errorCode = errorCode2;
                Http2Connection.this.close(errorCode, errorCode2);
                Util.closeQuietly(this.reader);
                throw th;
            }
            Util.closeQuietly(this.reader);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i2, ErrorCode errorCode, ByteString byteString) {
            Http2Stream[] http2StreamArr;
            byteString.size();
            synchronized (Http2Connection.this) {
                http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                Http2Connection.this.shutdown = true;
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                if (http2Stream.getId() > i2 && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    Http2Connection.this.removeStream(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean z3, int i2, int i4, List<Header> list) {
            if (Http2Connection.this.pushedStream(i2)) {
                Http2Connection.this.pushHeadersLater(i2, list, z3);
                return;
            }
            synchronized (Http2Connection.this) {
                Http2Stream stream = Http2Connection.this.getStream(i2);
                if (stream == null) {
                    Http2Connection http2Connection = Http2Connection.this;
                    if (http2Connection.shutdown) {
                        return;
                    }
                    if (i2 <= http2Connection.lastGoodStreamId) {
                        return;
                    }
                    if (i2 % 2 == http2Connection.nextStreamId % 2) {
                        return;
                    }
                    final Http2Stream http2Stream = new Http2Stream(i2, Http2Connection.this, false, z3, Util.toHeaders(list));
                    Http2Connection http2Connection2 = Http2Connection.this;
                    http2Connection2.lastGoodStreamId = i2;
                    http2Connection2.streams.put(Integer.valueOf(i2), http2Stream);
                    Http2Connection.listenerExecutor.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{Http2Connection.this.hostname, Integer.valueOf(i2)}) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.1
                        @Override // okhttp3.internal.NamedRunnable
                        public void execute() {
                            try {
                                Http2Connection.this.listener.onStream(http2Stream);
                            } catch (IOException e4) {
                                Platform platform = Platform.get();
                                platform.log(4, "Http2Connection.Listener failure for " + Http2Connection.this.hostname, e4);
                                try {
                                    http2Stream.close(ErrorCode.PROTOCOL_ERROR);
                                } catch (IOException unused) {
                                }
                            }
                        }
                    });
                    return;
                }
                stream.receiveHeaders(list);
                if (z3) {
                    stream.receiveFin();
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z3, int i2, int i4) {
            if (z3) {
                synchronized (Http2Connection.this) {
                    Http2Connection.this.awaitingPong = false;
                    Http2Connection.this.notifyAll();
                }
                return;
            }
            try {
                Http2Connection.this.writerExecutor.execute(new PingRunnable(true, i2, i4));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i2, int i4, int i5, boolean z3) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i2, int i4, List<Header> list) {
            Http2Connection.this.pushRequestLater(i4, list);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int i2, ErrorCode errorCode) {
            if (Http2Connection.this.pushedStream(i2)) {
                Http2Connection.this.pushResetLater(i2, errorCode);
                return;
            }
            Http2Stream removeStream = Http2Connection.this.removeStream(i2);
            if (removeStream != null) {
                removeStream.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(boolean z3, Settings settings) {
            Http2Stream[] http2StreamArr;
            long j4;
            int i2;
            synchronized (Http2Connection.this) {
                int initialWindowSize = Http2Connection.this.peerSettings.getInitialWindowSize();
                if (z3) {
                    Http2Connection.this.peerSettings.clear();
                }
                Http2Connection.this.peerSettings.merge(settings);
                applyAndAckSettings(settings);
                int initialWindowSize2 = Http2Connection.this.peerSettings.getInitialWindowSize();
                http2StreamArr = null;
                if (initialWindowSize2 == -1 || initialWindowSize2 == initialWindowSize) {
                    j4 = 0;
                } else {
                    j4 = initialWindowSize2 - initialWindowSize;
                    Http2Connection http2Connection = Http2Connection.this;
                    if (!http2Connection.receivedInitialPeerSettings) {
                        http2Connection.receivedInitialPeerSettings = true;
                    }
                    if (!http2Connection.streams.isEmpty()) {
                        http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                    }
                }
                Http2Connection.listenerExecutor.execute(new NamedRunnable("OkHttp %s settings", Http2Connection.this.hostname) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.2
                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        Http2Connection http2Connection2 = Http2Connection.this;
                        http2Connection2.listener.onSettings(http2Connection2);
                    }
                });
            }
            if (http2StreamArr == null || j4 == 0) {
                return;
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                synchronized (http2Stream) {
                    http2Stream.addBytesToWriteWindow(j4);
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i2, long j4) {
            if (i2 == 0) {
                synchronized (Http2Connection.this) {
                    Http2Connection http2Connection = Http2Connection.this;
                    http2Connection.bytesLeftInWriteWindow += j4;
                    http2Connection.notifyAll();
                }
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i2);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j4);
                }
            }
        }
    }

    Http2Connection(Builder builder) {
        Settings settings = new Settings();
        this.peerSettings = settings;
        this.receivedInitialPeerSettings = false;
        this.currentPushRequests = new LinkedHashSet();
        this.pushObserver = builder.pushObserver;
        boolean z3 = builder.client;
        this.client = z3;
        this.listener = builder.listener;
        int i2 = z3 ? 1 : 2;
        this.nextStreamId = i2;
        if (z3) {
            this.nextStreamId = i2 + 2;
        }
        if (z3) {
            this.okHttpSettings.set(7, 16777216);
        }
        String str = builder.hostname;
        this.hostname = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, Util.threadFactory(Util.format("OkHttp %s Writer", str), false));
        this.writerExecutor = scheduledThreadPoolExecutor;
        if (builder.pingIntervalMillis != 0) {
            PingRunnable pingRunnable = new PingRunnable(false, 0, 0);
            int i4 = builder.pingIntervalMillis;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(pingRunnable, i4, i4, TimeUnit.MILLISECONDS);
        }
        this.pushExecutor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(Util.format("OkHttp %s Push Observer", str), true));
        settings.set(7, 65535);
        settings.set(5, 16384);
        this.bytesLeftInWriteWindow = settings.getInitialWindowSize();
        this.socket = builder.socket;
        this.writer = new Http2Writer(builder.sink, z3);
        this.readerRunnable = new ReaderRunnable(new Http2Reader(builder.source, z3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failConnection() {
        try {
            ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
            close(errorCode, errorCode);
        } catch (IOException unused) {
        }
    }

    private synchronized void pushExecutorExecute(NamedRunnable namedRunnable) {
        if (!isShutdown()) {
            this.pushExecutor.execute(namedRunnable);
        }
    }

    synchronized void awaitPong() throws InterruptedException {
        while (this.awaitingPong) {
            wait();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    public void flush() throws IOException {
        this.writer.flush();
    }

    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    synchronized Http2Stream getStream(int i2) {
        return this.streams.get(Integer.valueOf(i2));
    }

    public synchronized boolean isShutdown() {
        return this.shutdown;
    }

    public synchronized int maxConcurrentStreams() {
        return this.peerSettings.getMaxConcurrentStreams(Integer.MAX_VALUE);
    }

    public Http2Stream newStream(List<Header> list, boolean z3) throws IOException {
        return newStream(0, list, z3);
    }

    public synchronized int openStreamCount() {
        return this.streams.size();
    }

    void pushDataLater(final int i2, BufferedSource bufferedSource, final int i4, final boolean z3) throws IOException {
        final Buffer buffer = new Buffer();
        long j4 = i4;
        bufferedSource.require(j4);
        bufferedSource.read(buffer, j4);
        if (buffer.size() == j4) {
            pushExecutorExecute(new NamedRunnable("OkHttp %s Push Data[%s]", new Object[]{this.hostname, Integer.valueOf(i2)}) { // from class: okhttp3.internal.http2.Http2Connection.5
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        boolean onData = Http2Connection.this.pushObserver.onData(i2, buffer, i4, z3);
                        if (onData) {
                            Http2Connection.this.writer.rstStream(i2, ErrorCode.CANCEL);
                        }
                        if (onData || z3) {
                            synchronized (Http2Connection.this) {
                                Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i2));
                            }
                        }
                    } catch (IOException unused) {
                    }
                }
            });
            return;
        }
        throw new IOException(buffer.size() + " != " + i4);
    }

    void pushHeadersLater(final int i2, final List<Header> list, final boolean z3) {
        try {
            pushExecutorExecute(new NamedRunnable("OkHttp %s Push Headers[%s]", new Object[]{this.hostname, Integer.valueOf(i2)}) { // from class: okhttp3.internal.http2.Http2Connection.4
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    boolean onHeaders = Http2Connection.this.pushObserver.onHeaders(i2, list, z3);
                    if (onHeaders) {
                        try {
                            Http2Connection.this.writer.rstStream(i2, ErrorCode.CANCEL);
                        } catch (IOException unused) {
                            return;
                        }
                    }
                    if (onHeaders || z3) {
                        synchronized (Http2Connection.this) {
                            Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i2));
                        }
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
        }
    }

    void pushRequestLater(final int i2, final List<Header> list) {
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i2))) {
                writeSynResetLater(i2, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i2));
            try {
                pushExecutorExecute(new NamedRunnable("OkHttp %s Push Request[%s]", new Object[]{this.hostname, Integer.valueOf(i2)}) { // from class: okhttp3.internal.http2.Http2Connection.3
                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        if (Http2Connection.this.pushObserver.onRequest(i2, list)) {
                            try {
                                Http2Connection.this.writer.rstStream(i2, ErrorCode.CANCEL);
                                synchronized (Http2Connection.this) {
                                    Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i2));
                                }
                            } catch (IOException unused) {
                            }
                        }
                    }
                });
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    void pushResetLater(final int i2, final ErrorCode errorCode) {
        pushExecutorExecute(new NamedRunnable("OkHttp %s Push Reset[%s]", new Object[]{this.hostname, Integer.valueOf(i2)}) { // from class: okhttp3.internal.http2.Http2Connection.6
            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                Http2Connection.this.pushObserver.onReset(i2, errorCode);
                synchronized (Http2Connection.this) {
                    Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i2));
                }
            }
        });
    }

    public Http2Stream pushStream(int i2, List<Header> list, boolean z3) throws IOException {
        if (!this.client) {
            return newStream(i2, list, z3);
        }
        throw new IllegalStateException("Client cannot push requests.");
    }

    boolean pushedStream(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Http2Stream removeStream(int i2) {
        Http2Stream remove;
        remove = this.streams.remove(Integer.valueOf(i2));
        notifyAll();
        return remove;
    }

    public void setSettings(Settings settings) throws IOException {
        synchronized (this.writer) {
            synchronized (this) {
                if (!this.shutdown) {
                    this.okHttpSettings.merge(settings);
                } else {
                    throw new ConnectionShutdownException();
                }
            }
            this.writer.settings(settings);
        }
    }

    public void shutdown(ErrorCode errorCode) throws IOException {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    return;
                }
                this.shutdown = true;
                this.writer.goAway(this.lastGoodStreamId, errorCode, Util.EMPTY_BYTE_ARRAY);
            }
        }
    }

    public void start() throws IOException {
        start(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void updateConnectionFlowControl(long j4) {
        long j5 = this.unacknowledgedBytesRead + j4;
        this.unacknowledgedBytesRead = j5;
        if (j5 >= this.okHttpSettings.getInitialWindowSize() / 2) {
            writeWindowUpdateLater(0, this.unacknowledgedBytesRead);
            this.unacknowledgedBytesRead = 0L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r3), r8.writer.maxDataLength());
        r6 = r3;
        r8.bytesLeftInWriteWindow -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeData(int r9, boolean r10, okio.Buffer r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 != 0) goto Ld
            okhttp3.internal.http2.Http2Writer r12 = r8.writer
            r12.data(r10, r9, r11, r0)
            return
        Ld:
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 <= 0) goto L67
            monitor-enter(r8)
        L12:
            long r3 = r8.bytesLeftInWriteWindow     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 > 0) goto L30
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r3 = r8.streams     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            boolean r3 = r3.containsKey(r4)     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            if (r3 == 0) goto L28
            r8.wait()     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            goto L12
        L28:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            throw r9     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
        L30:
            long r3 = java.lang.Math.min(r12, r3)     // Catch: java.lang.Throwable -> L56
            int r4 = (int) r3     // Catch: java.lang.Throwable -> L56
            okhttp3.internal.http2.Http2Writer r3 = r8.writer     // Catch: java.lang.Throwable -> L56
            int r3 = r3.maxDataLength()     // Catch: java.lang.Throwable -> L56
            int r3 = java.lang.Math.min(r4, r3)     // Catch: java.lang.Throwable -> L56
            long r4 = r8.bytesLeftInWriteWindow     // Catch: java.lang.Throwable -> L56
            long r6 = (long) r3     // Catch: java.lang.Throwable -> L56
            long r4 = r4 - r6
            r8.bytesLeftInWriteWindow = r4     // Catch: java.lang.Throwable -> L56
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L56
            long r12 = r12 - r6
            okhttp3.internal.http2.Http2Writer r4 = r8.writer
            if (r10 == 0) goto L51
            int r5 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r5 != 0) goto L51
            r5 = 1
            goto L52
        L51:
            r5 = 0
        L52:
            r4.data(r5, r9, r11, r3)
            goto Ld
        L56:
            r9 = move-exception
            goto L65
        L58:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L56
            r9.interrupt()     // Catch: java.lang.Throwable -> L56
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L56
            r9.<init>()     // Catch: java.lang.Throwable -> L56
            throw r9     // Catch: java.lang.Throwable -> L56
        L65:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L56
            throw r9
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeData(int, boolean, okio.Buffer, long):void");
    }

    void writePing(boolean z3, int i2, int i4) {
        boolean z4;
        if (!z3) {
            synchronized (this) {
                z4 = this.awaitingPong;
                this.awaitingPong = true;
            }
            if (z4) {
                failConnection();
                return;
            }
        }
        try {
            this.writer.ping(z3, i2, i4);
        } catch (IOException unused) {
            failConnection();
        }
    }

    void writePingAndAwaitPong() throws InterruptedException {
        writePing(false, 1330343787, -257978967);
        awaitPong();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeSynReply(int i2, boolean z3, List<Header> list) throws IOException {
        this.writer.synReply(z3, i2, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeSynReset(int i2, ErrorCode errorCode) throws IOException {
        this.writer.rstStream(i2, errorCode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeSynResetLater(final int i2, final ErrorCode errorCode) {
        try {
            this.writerExecutor.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{this.hostname, Integer.valueOf(i2)}) { // from class: okhttp3.internal.http2.Http2Connection.1
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        Http2Connection.this.writeSynReset(i2, errorCode);
                    } catch (IOException unused) {
                        Http2Connection.this.failConnection();
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeWindowUpdateLater(final int i2, final long j4) {
        try {
            this.writerExecutor.execute(new NamedRunnable("OkHttp Window Update %s stream %d", new Object[]{this.hostname, Integer.valueOf(i2)}) { // from class: okhttp3.internal.http2.Http2Connection.2
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        Http2Connection.this.writer.windowUpdate(i2, j4);
                    } catch (IOException unused) {
                        Http2Connection.this.failConnection();
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0041 A[Catch: all -> 0x0073, TryCatch #1 {, blocks: (B:4:0x0006, B:24:0x004d, B:28:0x005c, B:25:0x0053, B:27:0x0057, B:32:0x0065, B:33:0x006c, B:5:0x0007, B:7:0x000e, B:8:0x0013, B:10:0x0017, B:12:0x0029, B:14:0x0031, B:19:0x003b, B:21:0x0041, B:22:0x004a, B:34:0x006d, B:35:0x0072), top: B:42:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private okhttp3.internal.http2.Http2Stream newStream(int r11, java.util.List<okhttp3.internal.http2.Header> r12, boolean r13) throws java.io.IOException {
        /*
            r10 = this;
            r6 = r13 ^ 1
            r4 = 0
            okhttp3.internal.http2.Http2Writer r7 = r10.writer
            monitor-enter(r7)
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L76
            int r0 = r10.nextStreamId     // Catch: java.lang.Throwable -> L73
            r1 = 1073741823(0x3fffffff, float:1.9999999)
            if (r0 <= r1) goto L13
            okhttp3.internal.http2.ErrorCode r0 = okhttp3.internal.http2.ErrorCode.REFUSED_STREAM     // Catch: java.lang.Throwable -> L73
            r10.shutdown(r0)     // Catch: java.lang.Throwable -> L73
        L13:
            boolean r0 = r10.shutdown     // Catch: java.lang.Throwable -> L73
            if (r0 != 0) goto L6d
            int r8 = r10.nextStreamId     // Catch: java.lang.Throwable -> L73
            int r0 = r8 + 2
            r10.nextStreamId = r0     // Catch: java.lang.Throwable -> L73
            okhttp3.internal.http2.Http2Stream r9 = new okhttp3.internal.http2.Http2Stream     // Catch: java.lang.Throwable -> L73
            r5 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L73
            if (r13 == 0) goto L3a
            long r0 = r10.bytesLeftInWriteWindow     // Catch: java.lang.Throwable -> L73
            r2 = 0
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 == 0) goto L3a
            long r0 = r9.bytesLeftInWriteWindow     // Catch: java.lang.Throwable -> L73
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 != 0) goto L38
            goto L3a
        L38:
            r13 = 0
            goto L3b
        L3a:
            r13 = 1
        L3b:
            boolean r0 = r9.isOpen()     // Catch: java.lang.Throwable -> L73
            if (r0 == 0) goto L4a
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r10.streams     // Catch: java.lang.Throwable -> L73
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L73
            r0.put(r1, r9)     // Catch: java.lang.Throwable -> L73
        L4a:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L73
            if (r11 != 0) goto L53
            okhttp3.internal.http2.Http2Writer r0 = r10.writer     // Catch: java.lang.Throwable -> L76
            r0.synStream(r6, r8, r11, r12)     // Catch: java.lang.Throwable -> L76
            goto L5c
        L53:
            boolean r0 = r10.client     // Catch: java.lang.Throwable -> L76
            if (r0 != 0) goto L65
            okhttp3.internal.http2.Http2Writer r0 = r10.writer     // Catch: java.lang.Throwable -> L76
            r0.pushPromise(r11, r8, r12)     // Catch: java.lang.Throwable -> L76
        L5c:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L76
            if (r13 == 0) goto L64
            okhttp3.internal.http2.Http2Writer r11 = r10.writer
            r11.flush()
        L64:
            return r9
        L65:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L76
            java.lang.String r12 = "client streams shouldn't have associated stream IDs"
            r11.<init>(r12)     // Catch: java.lang.Throwable -> L76
            throw r11     // Catch: java.lang.Throwable -> L76
        L6d:
            okhttp3.internal.http2.ConnectionShutdownException r11 = new okhttp3.internal.http2.ConnectionShutdownException     // Catch: java.lang.Throwable -> L73
            r11.<init>()     // Catch: java.lang.Throwable -> L73
            throw r11     // Catch: java.lang.Throwable -> L73
        L73:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L73
            throw r11     // Catch: java.lang.Throwable -> L76
        L76:
            r11 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L76
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.newStream(int, java.util.List, boolean):okhttp3.internal.http2.Http2Stream");
    }

    void close(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        Http2Stream[] http2StreamArr = null;
        try {
            shutdown(errorCode);
            e = null;
        } catch (IOException e4) {
            e = e4;
        }
        synchronized (this) {
            if (!this.streams.isEmpty()) {
                http2StreamArr = (Http2Stream[]) this.streams.values().toArray(new Http2Stream[this.streams.size()]);
                this.streams.clear();
            }
        }
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.close(errorCode2);
                } catch (IOException e5) {
                    if (e != null) {
                        e = e5;
                    }
                }
            }
        }
        try {
            this.writer.close();
        } catch (IOException e6) {
            if (e == null) {
                e = e6;
            }
        }
        try {
            this.socket.close();
        } catch (IOException e7) {
            e = e7;
        }
        this.writerExecutor.shutdown();
        this.pushExecutor.shutdown();
        if (e != null) {
            throw e;
        }
    }

    void start(boolean z3) throws IOException {
        if (z3) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            int initialWindowSize = this.okHttpSettings.getInitialWindowSize();
            if (initialWindowSize != 65535) {
                this.writer.windowUpdate(0, initialWindowSize - 65535);
            }
        }
        new Thread(this.readerRunnable).start();
    }

    /* loaded from: classes5.dex */
    public static class Builder {
        boolean client;
        String hostname;
        int pingIntervalMillis;
        BufferedSink sink;
        Socket socket;
        BufferedSource source;
        Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        PushObserver pushObserver = PushObserver.CANCEL;

        public Builder(boolean z3) {
            this.client = z3;
        }

        public Http2Connection build() {
            return new Http2Connection(this);
        }

        public Builder listener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public Builder pingIntervalMillis(int i2) {
            this.pingIntervalMillis = i2;
            return this;
        }

        public Builder pushObserver(PushObserver pushObserver) {
            this.pushObserver = pushObserver;
            return this;
        }

        public Builder socket(Socket socket) throws IOException {
            return socket(socket, ((InetSocketAddress) socket.getRemoteSocketAddress()).getHostName(), Okio.buffer(Okio.source(socket)), Okio.buffer(Okio.sink(socket)));
        }

        public Builder socket(Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.socket = socket;
            this.hostname = str;
            this.source = bufferedSource;
            this.sink = bufferedSink;
            return this;
        }
    }
}
