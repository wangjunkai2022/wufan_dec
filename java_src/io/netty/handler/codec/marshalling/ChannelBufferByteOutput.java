package io.netty.handler.codec.marshalling;

import io.netty.buffer.ByteBuf;
import java.io.IOException;
import org.jboss.marshalling.ByteOutput;
/* loaded from: classes5.dex */
class ChannelBufferByteOutput implements ByteOutput {
    private final ByteBuf buffer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelBufferByteOutput(ByteBuf byteBuf) {
        this.buffer = byteBuf;
    }

    public void close() throws IOException {
    }

    public void flush() throws IOException {
    }

    ByteBuf getBuffer() {
        return this.buffer;
    }

    public void write(int i2) throws IOException {
        this.buffer.writeByte(i2);
    }

    public void write(byte[] bArr) throws IOException {
        this.buffer.writeBytes(bArr);
    }

    public void write(byte[] bArr, int i2, int i4) throws IOException {
        this.buffer.writeBytes(bArr, i2, i4);
    }
}
