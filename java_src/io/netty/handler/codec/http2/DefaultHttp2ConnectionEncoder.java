package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPromise;
import io.netty.channel.CoalescingBufferQueue;
import io.netty.handler.codec.http.HttpStatusClass;
import io.netty.handler.codec.http2.Http2CodecUtil;
import io.netty.handler.codec.http2.Http2FrameWriter;
import io.netty.handler.codec.http2.Http2HeadersEncoder;
import io.netty.handler.codec.http2.Http2RemoteFlowController;
import io.netty.handler.codec.http2.Http2Stream;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.ObjectUtil;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes5.dex */
public class DefaultHttp2ConnectionEncoder implements Http2ConnectionEncoder, Http2SettingsReceivedConsumer {
    private final Http2Connection connection;
    private final Http2FrameWriter frameWriter;
    private Http2LifecycleManager lifecycleManager;
    private final Queue<Http2Settings> outstandingLocalSettingsQueue = new ArrayDeque(4);
    private Queue<Http2Settings> outstandingRemoteSettingsQueue;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.handler.codec.http2.DefaultHttp2ConnectionEncoder$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State;

        static {
            int[] iArr = new int[Http2Stream.State.values().length];
            $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State = iArr;
            try {
                iArr[Http2Stream.State.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[Http2Stream.State.HALF_CLOSED_REMOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[Http2Stream.State.RESERVED_LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public abstract class FlowControlledBase implements Http2RemoteFlowController.FlowControlled, ChannelFutureListener {
        protected boolean endOfStream;
        protected int padding;
        protected ChannelPromise promise;
        protected final Http2Stream stream;

        FlowControlledBase(Http2Stream http2Stream, int i2, boolean z3, ChannelPromise channelPromise) {
            ObjectUtil.checkPositiveOrZero(i2, "padding");
            this.padding = i2;
            this.endOfStream = z3;
            this.stream = http2Stream;
            this.promise = channelPromise;
        }

        @Override // io.netty.handler.codec.http2.Http2RemoteFlowController.FlowControlled
        public void writeComplete() {
            if (this.endOfStream) {
                DefaultHttp2ConnectionEncoder.this.lifecycleManager.closeStreamLocal(this.stream, this.promise);
            }
        }

        @Override // io.netty.util.concurrent.GenericFutureListener
        public void operationComplete(ChannelFuture channelFuture) throws Exception {
            if (channelFuture.isSuccess()) {
                return;
            }
            error(DefaultHttp2ConnectionEncoder.this.flowController().channelHandlerContext(), channelFuture.cause());
        }
    }

    /* loaded from: classes5.dex */
    private final class FlowControlledData extends FlowControlledBase {
        private int dataSize;
        private final CoalescingBufferQueue queue;

        FlowControlledData(Http2Stream http2Stream, ByteBuf byteBuf, int i2, boolean z3, ChannelPromise channelPromise) {
            super(http2Stream, i2, z3, channelPromise);
            CoalescingBufferQueue coalescingBufferQueue = new CoalescingBufferQueue(channelPromise.channel());
            this.queue = coalescingBufferQueue;
            coalescingBufferQueue.add(byteBuf, channelPromise);
            this.dataSize = coalescingBufferQueue.readableBytes();
        }

        @Override // io.netty.handler.codec.http2.Http2RemoteFlowController.FlowControlled
        public void error(ChannelHandlerContext channelHandlerContext, Throwable th) {
            this.queue.releaseAndFailAll(th);
            DefaultHttp2ConnectionEncoder.this.lifecycleManager.onError(channelHandlerContext, true, th);
        }

        @Override // io.netty.handler.codec.http2.Http2RemoteFlowController.FlowControlled
        public boolean merge(ChannelHandlerContext channelHandlerContext, Http2RemoteFlowController.FlowControlled flowControlled) {
            if (FlowControlledData.class == flowControlled.getClass()) {
                FlowControlledData flowControlledData = (FlowControlledData) flowControlled;
                if (Integer.MAX_VALUE - flowControlledData.size() < size()) {
                    return false;
                }
                flowControlledData.queue.copyTo(this.queue);
                this.dataSize = this.queue.readableBytes();
                this.padding = Math.max(this.padding, flowControlledData.padding);
                this.endOfStream = flowControlledData.endOfStream;
                return true;
            }
            return false;
        }

        @Override // io.netty.handler.codec.http2.Http2RemoteFlowController.FlowControlled
        public int size() {
            return this.dataSize + this.padding;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v11, types: [io.netty.channel.ChannelPromise] */
        /* JADX WARN: Type inference failed for: r9v0, types: [io.netty.channel.ChannelPromise] */
        @Override // io.netty.handler.codec.http2.Http2RemoteFlowController.FlowControlled
        public void write(ChannelHandlerContext channelHandlerContext, int i2) {
            int readableBytes = this.queue.readableBytes();
            if (!this.endOfStream) {
                if (readableBytes == 0) {
                    if (this.queue.isEmpty()) {
                        this.dataSize = 0;
                        this.padding = 0;
                        return;
                    }
                    ?? addListener = channelHandlerContext.newPromise().addListener((GenericFutureListener<? extends Future<? super Void>>) this);
                    channelHandlerContext.write(this.queue.remove(0, addListener), addListener);
                    return;
                } else if (i2 == 0) {
                    return;
                }
            }
            int min = Math.min(readableBytes, i2);
            ?? addListener2 = channelHandlerContext.newPromise().addListener((GenericFutureListener<? extends Future<? super Void>>) this);
            ByteBuf remove = this.queue.remove(min, addListener2);
            this.dataSize = this.queue.readableBytes();
            int min2 = Math.min(i2 - min, this.padding);
            this.padding -= min2;
            DefaultHttp2ConnectionEncoder.this.frameWriter().writeData(channelHandlerContext, this.stream.id(), remove, min2, this.endOfStream && size() == 0, addListener2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class FlowControlledHeaders extends FlowControlledBase {
        private final boolean exclusive;
        private final boolean hasPriorty;
        private final Http2Headers headers;
        private final int streamDependency;
        private final short weight;

        FlowControlledHeaders(Http2Stream http2Stream, Http2Headers http2Headers, boolean z3, int i2, short s3, boolean z4, int i4, boolean z5, ChannelPromise channelPromise) {
            super(http2Stream, i4, z5, channelPromise.unvoid());
            this.headers = http2Headers;
            this.hasPriorty = z3;
            this.streamDependency = i2;
            this.weight = s3;
            this.exclusive = z4;
        }

        @Override // io.netty.handler.codec.http2.Http2RemoteFlowController.FlowControlled
        public void error(ChannelHandlerContext channelHandlerContext, Throwable th) {
            if (channelHandlerContext != null) {
                DefaultHttp2ConnectionEncoder.this.lifecycleManager.onError(channelHandlerContext, true, th);
            }
            this.promise.tryFailure(th);
        }

        @Override // io.netty.handler.codec.http2.Http2RemoteFlowController.FlowControlled
        public boolean merge(ChannelHandlerContext channelHandlerContext, Http2RemoteFlowController.FlowControlled flowControlled) {
            return false;
        }

        @Override // io.netty.handler.codec.http2.Http2RemoteFlowController.FlowControlled
        public int size() {
            return 0;
        }

        @Override // io.netty.handler.codec.http2.Http2RemoteFlowController.FlowControlled
        public void write(ChannelHandlerContext channelHandlerContext, int i2) {
            boolean validateHeadersSentState = DefaultHttp2ConnectionEncoder.validateHeadersSentState(this.stream, this.headers, DefaultHttp2ConnectionEncoder.this.connection.isServer(), this.endOfStream);
            this.promise.addListener((GenericFutureListener<? extends Future<? super Void>>) this);
            if (DefaultHttp2ConnectionEncoder.sendHeaders(DefaultHttp2ConnectionEncoder.this.frameWriter, channelHandlerContext, this.stream.id(), this.headers, this.hasPriorty, this.streamDependency, this.weight, this.exclusive, this.padding, this.endOfStream, this.promise).cause() == null) {
                this.stream.headersSent(validateHeadersSentState);
            }
        }
    }

    public DefaultHttp2ConnectionEncoder(Http2Connection http2Connection, Http2FrameWriter http2FrameWriter) {
        this.connection = (Http2Connection) ObjectUtil.checkNotNull(http2Connection, "connection");
        this.frameWriter = (Http2FrameWriter) ObjectUtil.checkNotNull(http2FrameWriter, "frameWriter");
        if (http2Connection.remote().flowController() == null) {
            http2Connection.remote().flowController(new DefaultHttp2RemoteFlowController(http2Connection));
        }
    }

    private void notifyLifecycleManagerOnError(ChannelFuture channelFuture, final ChannelHandlerContext channelHandlerContext) {
        channelFuture.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http2.DefaultHttp2ConnectionEncoder.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture channelFuture2) throws Exception {
                Throwable cause = channelFuture2.cause();
                if (cause != null) {
                    DefaultHttp2ConnectionEncoder.this.lifecycleManager.onError(channelHandlerContext, true, cause);
                }
            }
        });
    }

    private Http2Stream requireStream(int i2) {
        String str;
        Http2Stream stream = this.connection.stream(i2);
        if (stream == null) {
            if (this.connection.streamMayHaveExisted(i2)) {
                str = "Stream no longer exists: " + i2;
            } else {
                str = "Stream does not exist: " + i2;
            }
            throw new IllegalArgumentException(str);
        }
        return stream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ChannelFuture sendHeaders(Http2FrameWriter http2FrameWriter, ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, boolean z3, int i4, short s3, boolean z4, int i5, boolean z5, ChannelPromise channelPromise) {
        if (z3) {
            return http2FrameWriter.writeHeaders(channelHandlerContext, i2, http2Headers, i4, s3, z4, i5, z5, channelPromise);
        }
        return http2FrameWriter.writeHeaders(channelHandlerContext, i2, http2Headers, i5, z5, channelPromise);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean validateHeadersSentState(Http2Stream http2Stream, Http2Headers http2Headers, boolean z3, boolean z4) {
        boolean z5 = z3 && HttpStatusClass.valueOf(http2Headers.status()) == HttpStatusClass.INFORMATIONAL;
        if (((z5 || !z4) && http2Stream.isHeadersSent()) || http2Stream.isTrailersSent()) {
            throw new IllegalStateException("Stream " + http2Stream.id() + " sent too many headers EOS: " + z4);
        }
        return z5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    private ChannelFuture writeHeaders0(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, boolean z3, int i4, short s3, boolean z4, int i5, boolean z5, ChannelPromise channelPromise) {
        int i6;
        Http2Stream http2Stream;
        boolean validateHeadersSentState;
        ChannelFuture sendHeaders;
        Throwable cause;
        Http2Stream http2Stream2;
        ChannelPromise channelPromise2 = channelPromise;
        try {
            Http2Stream stream = this.connection.stream(i2);
            if (stream == null) {
                try {
                    stream = this.connection.local().createStream(i2, false);
                } catch (Http2Exception e4) {
                    if (this.connection.remote().mayHaveCreatedStream(i2)) {
                        channelPromise2.tryFailure(new IllegalStateException("Stream no longer exists: " + i2, e4));
                        return channelPromise2;
                    }
                    throw e4;
                }
            } else {
                int i7 = AnonymousClass2.$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[stream.state().ordinal()];
                if (i7 != 1 && i7 != 2) {
                    if (i7 == 3) {
                        stream.open(z5);
                    } else {
                        throw new IllegalStateException("Stream " + stream.id() + " in unexpected state " + stream.state());
                    }
                }
            }
            http2Stream = stream;
            Http2RemoteFlowController flowController = flowController();
            if (z5) {
                try {
                    if (flowController.hasFlowControlled(http2Stream)) {
                        flowController.addFlowControlled(http2Stream, new FlowControlledHeaders(http2Stream, http2Headers, z3, i4, s3, z4, i5, true, channelPromise));
                        return channelPromise2;
                    }
                } catch (Throwable th) {
                    th = th;
                    i6 = channelHandlerContext;
                    this.lifecycleManager.onError(i6, true, th);
                    channelPromise2.tryFailure(th);
                    return channelPromise2;
                }
            }
            channelPromise2 = channelPromise.unvoid();
            validateHeadersSentState = validateHeadersSentState(http2Stream, http2Headers, this.connection.isServer(), z5);
            i6 = i2;
            sendHeaders = sendHeaders(this.frameWriter, channelHandlerContext, i6, http2Headers, z3, i4, s3, z4, i5, z5, channelPromise2);
            cause = sendHeaders.cause();
        } catch (Throwable th2) {
            th = th2;
            i6 = channelHandlerContext;
        }
        try {
            if (cause == null) {
                http2Stream.headersSent(validateHeadersSentState);
                if (sendHeaders.isSuccess()) {
                    i6 = channelHandlerContext;
                    http2Stream2 = http2Stream;
                } else {
                    ChannelHandlerContext channelHandlerContext2 = channelHandlerContext;
                    http2Stream2 = http2Stream;
                    notifyLifecycleManagerOnError(sendHeaders, channelHandlerContext2);
                    i6 = channelHandlerContext2;
                }
            } else {
                ChannelHandlerContext channelHandlerContext3 = channelHandlerContext;
                http2Stream2 = http2Stream;
                this.lifecycleManager.onError(channelHandlerContext3, true, cause);
                i6 = channelHandlerContext3;
            }
            if (z5) {
                this.lifecycleManager.closeStreamLocal(http2Stream2, sendHeaders);
            }
            return sendHeaders;
        } catch (Throwable th3) {
            th = th3;
            this.lifecycleManager.onError(i6, true, th);
            channelPromise2.tryFailure(th);
            return channelPromise2;
        }
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.frameWriter.close();
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public Http2FrameWriter.Configuration configuration() {
        return this.frameWriter.configuration();
    }

    @Override // io.netty.handler.codec.http2.Http2ConnectionEncoder
    public Http2Connection connection() {
        return this.connection;
    }

    @Override // io.netty.handler.codec.http2.Http2SettingsReceivedConsumer
    public void consumeReceivedSettings(Http2Settings http2Settings) {
        if (this.outstandingRemoteSettingsQueue == null) {
            this.outstandingRemoteSettingsQueue = new ArrayDeque(2);
        }
        this.outstandingRemoteSettingsQueue.add(http2Settings);
    }

    @Override // io.netty.handler.codec.http2.Http2ConnectionEncoder
    public final Http2RemoteFlowController flowController() {
        return connection().remote().flowController();
    }

    @Override // io.netty.handler.codec.http2.Http2ConnectionEncoder
    public Http2FrameWriter frameWriter() {
        return this.frameWriter;
    }

    @Override // io.netty.handler.codec.http2.Http2ConnectionEncoder
    public void lifecycleManager(Http2LifecycleManager http2LifecycleManager) {
        this.lifecycleManager = (Http2LifecycleManager) ObjectUtil.checkNotNull(http2LifecycleManager, "lifecycleManager");
    }

    @Override // io.netty.handler.codec.http2.Http2ConnectionEncoder
    public Http2Settings pollSentSettings() {
        return this.outstandingLocalSettingsQueue.poll();
    }

    @Override // io.netty.handler.codec.http2.Http2ConnectionEncoder
    public void remoteSettings(Http2Settings http2Settings) throws Http2Exception {
        Boolean pushEnabled = http2Settings.pushEnabled();
        Http2FrameWriter.Configuration configuration = configuration();
        Http2HeadersEncoder.Configuration headersConfiguration = configuration.headersConfiguration();
        Http2FrameSizePolicy frameSizePolicy = configuration.frameSizePolicy();
        if (pushEnabled != null) {
            if (!this.connection.isServer() && pushEnabled.booleanValue()) {
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Client received a value of ENABLE_PUSH specified to other than 0", new Object[0]);
            }
            this.connection.remote().allowPushTo(pushEnabled.booleanValue());
        }
        Long maxConcurrentStreams = http2Settings.maxConcurrentStreams();
        if (maxConcurrentStreams != null) {
            this.connection.local().maxActiveStreams((int) Math.min(maxConcurrentStreams.longValue(), 2147483647L));
        }
        Long headerTableSize = http2Settings.headerTableSize();
        if (headerTableSize != null) {
            headersConfiguration.maxHeaderTableSize((int) Math.min(headerTableSize.longValue(), 2147483647L));
        }
        Long maxHeaderListSize = http2Settings.maxHeaderListSize();
        if (maxHeaderListSize != null) {
            headersConfiguration.maxHeaderListSize(maxHeaderListSize.longValue());
        }
        Integer maxFrameSize = http2Settings.maxFrameSize();
        if (maxFrameSize != null) {
            frameSizePolicy.maxFrameSize(maxFrameSize.intValue());
        }
        Integer initialWindowSize = http2Settings.initialWindowSize();
        if (initialWindowSize != null) {
            flowController().initialWindowSize(initialWindowSize.intValue());
        }
    }

    @Override // io.netty.handler.codec.http2.Http2DataWriter
    public ChannelFuture writeData(ChannelHandlerContext channelHandlerContext, int i2, ByteBuf byteBuf, int i4, boolean z3, ChannelPromise channelPromise) {
        try {
            Http2Stream requireStream = requireStream(i2);
            int i5 = AnonymousClass2.$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State[requireStream.state().ordinal()];
            if (i5 != 1 && i5 != 2) {
                throw new IllegalStateException("Stream " + requireStream.id() + " in unexpected state " + requireStream.state());
            }
            flowController().addFlowControlled(requireStream, new FlowControlledData(requireStream, byteBuf, i4, z3, channelPromise));
            return channelPromise;
        } catch (Throwable th) {
            byteBuf.release();
            return channelPromise.setFailure(th);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2ConnectionEncoder, io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeFrame(ChannelHandlerContext channelHandlerContext, byte b4, int i2, Http2Flags http2Flags, ByteBuf byteBuf, ChannelPromise channelPromise) {
        return this.frameWriter.writeFrame(channelHandlerContext, b4, i2, http2Flags, byteBuf, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeGoAway(ChannelHandlerContext channelHandlerContext, int i2, long j4, ByteBuf byteBuf, ChannelPromise channelPromise) {
        return this.lifecycleManager.goAway(channelHandlerContext, i2, j4, byteBuf, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeHeaders(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3, ChannelPromise channelPromise) {
        return writeHeaders0(channelHandlerContext, i2, http2Headers, false, 0, (short) 0, false, i4, z3, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writePing(ChannelHandlerContext channelHandlerContext, boolean z3, long j4, ChannelPromise channelPromise) {
        return this.frameWriter.writePing(channelHandlerContext, z3, j4, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writePriority(ChannelHandlerContext channelHandlerContext, int i2, int i4, short s3, boolean z3, ChannelPromise channelPromise) {
        return this.frameWriter.writePriority(channelHandlerContext, i2, i4, s3, z3, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writePushPromise(ChannelHandlerContext channelHandlerContext, int i2, int i4, Http2Headers http2Headers, int i5, ChannelPromise channelPromise) {
        ChannelPromise channelPromise2;
        try {
            if (!this.connection.goAwayReceived()) {
                Http2Stream requireStream = requireStream(i2);
                this.connection.local().reservePushStream(i4, requireStream);
                channelPromise2 = channelPromise.unvoid();
                try {
                    ChannelFuture writePushPromise = this.frameWriter.writePushPromise(channelHandlerContext, i2, i4, http2Headers, i5, channelPromise2);
                    Throwable cause = writePushPromise.cause();
                    if (cause == null) {
                        requireStream.pushPromiseSent();
                        if (!writePushPromise.isSuccess()) {
                            notifyLifecycleManagerOnError(writePushPromise, channelHandlerContext);
                        }
                    } else {
                        this.lifecycleManager.onError(channelHandlerContext, true, cause);
                    }
                    return writePushPromise;
                } catch (Throwable th) {
                    th = th;
                    this.lifecycleManager.onError(channelHandlerContext, true, th);
                    channelPromise2.tryFailure(th);
                    return channelPromise2;
                }
            }
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Sending PUSH_PROMISE after GO_AWAY received.", new Object[0]);
        } catch (Throwable th2) {
            th = th2;
            channelPromise2 = channelPromise;
        }
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeRstStream(ChannelHandlerContext channelHandlerContext, int i2, long j4, ChannelPromise channelPromise) {
        return this.lifecycleManager.resetStream(channelHandlerContext, i2, j4, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeSettings(ChannelHandlerContext channelHandlerContext, Http2Settings http2Settings, ChannelPromise channelPromise) {
        this.outstandingLocalSettingsQueue.add(http2Settings);
        try {
            if (http2Settings.pushEnabled() != null && this.connection.isServer()) {
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Server sending SETTINGS frame with ENABLE_PUSH specified", new Object[0]);
            }
            return this.frameWriter.writeSettings(channelHandlerContext, http2Settings, channelPromise);
        } catch (Throwable th) {
            return channelPromise.setFailure(th);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeSettingsAck(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) {
        Queue<Http2Settings> queue = this.outstandingRemoteSettingsQueue;
        if (queue == null) {
            return this.frameWriter.writeSettingsAck(channelHandlerContext, channelPromise);
        }
        Http2Settings poll = queue.poll();
        if (poll == null) {
            return channelPromise.setFailure((Throwable) new Http2Exception(Http2Error.INTERNAL_ERROR, "attempted to write a SETTINGS ACK with no  pending SETTINGS"));
        }
        Http2CodecUtil.SimpleChannelPromiseAggregator simpleChannelPromiseAggregator = new Http2CodecUtil.SimpleChannelPromiseAggregator(channelPromise, channelHandlerContext.channel(), channelHandlerContext.executor());
        this.frameWriter.writeSettingsAck(channelHandlerContext, simpleChannelPromiseAggregator.newPromise());
        ChannelPromise newPromise = simpleChannelPromiseAggregator.newPromise();
        try {
            remoteSettings(poll);
            newPromise.setSuccess();
        } catch (Throwable th) {
            newPromise.setFailure(th);
            this.lifecycleManager.onError(channelHandlerContext, true, th);
        }
        return simpleChannelPromiseAggregator.doneAllocatingPromises();
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeWindowUpdate(ChannelHandlerContext channelHandlerContext, int i2, int i4, ChannelPromise channelPromise) {
        return channelPromise.setFailure((Throwable) new UnsupportedOperationException("Use the Http2[Inbound|Outbound]FlowController objects to control window sizes"));
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeHeaders(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4, ChannelPromise channelPromise) {
        return writeHeaders0(channelHandlerContext, i2, http2Headers, true, i4, s3, z3, i5, z4, channelPromise);
    }
}
