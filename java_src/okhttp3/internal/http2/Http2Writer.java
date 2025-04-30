package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;
/* loaded from: classes5.dex */
final class Http2Writer implements Closeable {
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final Buffer hpackBuffer;
    final Hpack.Writer hpackWriter;
    private int maxFrameSize;
    private final BufferedSink sink;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Http2Writer(BufferedSink bufferedSink, boolean z3) {
        this.sink = bufferedSink;
        this.client = z3;
        Buffer buffer = new Buffer();
        this.hpackBuffer = buffer;
        this.hpackWriter = new Hpack.Writer(buffer);
        this.maxFrameSize = 16384;
    }

    private void writeContinuationFrames(int i2, long j4) throws IOException {
        while (j4 > 0) {
            int min = (int) Math.min(this.maxFrameSize, j4);
            long j5 = min;
            j4 -= j5;
            frameHeader(i2, min, (byte) 9, j4 == 0 ? (byte) 4 : (byte) 0);
            this.sink.write(this.hpackBuffer, j5);
        }
    }

    private static void writeMedium(BufferedSink bufferedSink, int i2) throws IOException {
        bufferedSink.writeByte((i2 >>> 16) & 255);
        bufferedSink.writeByte((i2 >>> 8) & 255);
        bufferedSink.writeByte(i2 & 255);
    }

    public synchronized void applyAndAckSettings(Settings settings) throws IOException {
        if (!this.closed) {
            this.maxFrameSize = settings.getMaxFrameSize(this.maxFrameSize);
            if (settings.getHeaderTableSize() != -1) {
                this.hpackWriter.setHeaderTableSizeSetting(settings.getHeaderTableSize());
            }
            frameHeader(0, 0, (byte) 4, (byte) 1);
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.closed = true;
        this.sink.close();
    }

    public synchronized void connectionPreface() throws IOException {
        if (!this.closed) {
            if (this.client) {
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Util.format(">> CONNECTION %s", Http2.CONNECTION_PREFACE.hex()));
                }
                this.sink.write(Http2.CONNECTION_PREFACE.toByteArray());
                this.sink.flush();
                return;
            }
            return;
        }
        throw new IOException("closed");
    }

    public synchronized void data(boolean z3, int i2, Buffer buffer, int i4) throws IOException {
        if (!this.closed) {
            dataFrame(i2, z3 ? (byte) 1 : (byte) 0, buffer, i4);
        } else {
            throw new IOException("closed");
        }
    }

    void dataFrame(int i2, byte b4, Buffer buffer, int i4) throws IOException {
        frameHeader(i2, i4, (byte) 0, b4);
        if (i4 > 0) {
            this.sink.write(buffer, i4);
        }
    }

    public synchronized void flush() throws IOException {
        if (!this.closed) {
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public void frameHeader(int i2, int i4, byte b4, byte b5) throws IOException {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Http2.frameLog(false, i2, i4, b4, b5));
        }
        int i5 = this.maxFrameSize;
        if (i4 > i5) {
            throw Http2.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i5), Integer.valueOf(i4));
        }
        if ((Integer.MIN_VALUE & i2) != 0) {
            throw Http2.illegalArgument("reserved bit set: %s", Integer.valueOf(i2));
        }
        writeMedium(this.sink, i4);
        this.sink.writeByte(b4 & 255);
        this.sink.writeByte(b5 & 255);
        this.sink.writeInt(i2 & Integer.MAX_VALUE);
    }

    public synchronized void goAway(int i2, ErrorCode errorCode, byte[] bArr) throws IOException {
        if (!this.closed) {
            if (errorCode.httpCode != -1) {
                frameHeader(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.sink.writeInt(i2);
                this.sink.writeInt(errorCode.httpCode);
                if (bArr.length > 0) {
                    this.sink.write(bArr);
                }
                this.sink.flush();
            } else {
                throw Http2.illegalArgument("errorCode.httpCode == -1", new Object[0]);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void headers(int i2, List<Header> list) throws IOException {
        if (!this.closed) {
            headers(false, i2, list);
        } else {
            throw new IOException("closed");
        }
    }

    public int maxDataLength() {
        return this.maxFrameSize;
    }

    public synchronized void ping(boolean z3, int i2, int i4) throws IOException {
        if (!this.closed) {
            frameHeader(0, 8, (byte) 6, z3 ? (byte) 1 : (byte) 0);
            this.sink.writeInt(i2);
            this.sink.writeInt(i4);
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void pushPromise(int i2, int i4, List<Header> list) throws IOException {
        if (!this.closed) {
            this.hpackWriter.writeHeaders(list);
            long size = this.hpackBuffer.size();
            int min = (int) Math.min(this.maxFrameSize - 4, size);
            long j4 = min;
            frameHeader(i2, min + 4, (byte) 5, size == j4 ? (byte) 4 : (byte) 0);
            this.sink.writeInt(i4 & Integer.MAX_VALUE);
            this.sink.write(this.hpackBuffer, j4);
            if (size > j4) {
                writeContinuationFrames(i2, size - j4);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void rstStream(int i2, ErrorCode errorCode) throws IOException {
        if (!this.closed) {
            if (errorCode.httpCode != -1) {
                frameHeader(i2, 4, (byte) 3, (byte) 0);
                this.sink.writeInt(errorCode.httpCode);
                this.sink.flush();
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void settings(Settings settings) throws IOException {
        if (!this.closed) {
            int i2 = 0;
            frameHeader(0, settings.size() * 6, (byte) 4, (byte) 0);
            while (i2 < 10) {
                if (settings.isSet(i2)) {
                    this.sink.writeShort(i2 == 4 ? 3 : i2 == 7 ? 4 : i2);
                    this.sink.writeInt(settings.get(i2));
                }
                i2++;
            }
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void synReply(boolean z3, int i2, List<Header> list) throws IOException {
        if (!this.closed) {
            headers(z3, i2, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void synStream(boolean z3, int i2, int i4, List<Header> list) throws IOException {
        if (!this.closed) {
            headers(z3, i2, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void windowUpdate(int i2, long j4) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        if (j4 != 0 && j4 <= 2147483647L) {
            frameHeader(i2, 4, (byte) 8, (byte) 0);
            this.sink.writeInt((int) j4);
            this.sink.flush();
        } else {
            throw Http2.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j4));
        }
    }

    void headers(boolean z3, int i2, List<Header> list) throws IOException {
        if (!this.closed) {
            this.hpackWriter.writeHeaders(list);
            long size = this.hpackBuffer.size();
            int min = (int) Math.min(this.maxFrameSize, size);
            long j4 = min;
            byte b4 = size == j4 ? (byte) 4 : (byte) 0;
            if (z3) {
                b4 = (byte) (b4 | 1);
            }
            frameHeader(i2, min, (byte) 1, b4);
            this.sink.write(this.hpackBuffer, j4);
            if (size > j4) {
                writeContinuationFrames(i2, size - j4);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }
}
