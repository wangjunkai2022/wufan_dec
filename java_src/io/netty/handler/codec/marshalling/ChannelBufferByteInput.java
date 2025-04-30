package io.netty.handler.codec.marshalling;

import io.netty.buffer.ByteBuf;
import java.io.IOException;
import org.jboss.marshalling.ByteInput;
/* loaded from: classes5.dex */
class ChannelBufferByteInput implements ByteInput {
    private final ByteBuf buffer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelBufferByteInput(ByteBuf byteBuf) {
        this.buffer = byteBuf;
    }

    public int available() throws IOException {
        return this.buffer.readableBytes();
    }

    public void close() throws IOException {
    }

    public int read() throws IOException {
        if (this.buffer.isReadable()) {
            return this.buffer.readByte() & 255;
        }
        return -1;
    }

    public long skip(long j4) throws IOException {
        ByteBuf byteBuf;
        long readableBytes = this.buffer.readableBytes();
        if (readableBytes < j4) {
            j4 = readableBytes;
        }
        this.buffer.readerIndex((int) (byteBuf.readerIndex() + j4));
        return j4;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i2, int i4) throws IOException {
        int available = available();
        if (available == 0) {
            return -1;
        }
        int min = Math.min(available, i4);
        this.buffer.readBytes(bArr, i2, min);
        return min;
    }
}
