package io.netty.buffer;

import io.netty.util.CharsetUtil;
import io.netty.util.internal.ObjectUtil;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes5.dex */
public class ByteBufOutputStream extends OutputStream implements DataOutput {
    private final ByteBuf buffer;
    private final int startIndex;
    private final DataOutputStream utf8out = new DataOutputStream(this);

    public ByteBufOutputStream(ByteBuf byteBuf) {
        this.buffer = (ByteBuf) ObjectUtil.checkNotNull(byteBuf, "buffer");
        this.startIndex = byteBuf.writerIndex();
    }

    public ByteBuf buffer() {
        return this.buffer;
    }

    @Override // java.io.OutputStream, java.io.DataOutput
    public void write(byte[] bArr, int i2, int i4) throws IOException {
        if (i4 == 0) {
            return;
        }
        this.buffer.writeBytes(bArr, i2, i4);
    }

    @Override // java.io.DataOutput
    public void writeBoolean(boolean z3) throws IOException {
        this.buffer.writeBoolean(z3);
    }

    @Override // java.io.DataOutput
    public void writeByte(int i2) throws IOException {
        this.buffer.writeByte(i2);
    }

    @Override // java.io.DataOutput
    public void writeBytes(String str) throws IOException {
        this.buffer.writeCharSequence(str, CharsetUtil.US_ASCII);
    }

    @Override // java.io.DataOutput
    public void writeChar(int i2) throws IOException {
        this.buffer.writeChar(i2);
    }

    @Override // java.io.DataOutput
    public void writeChars(String str) throws IOException {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            this.buffer.writeChar(str.charAt(i2));
        }
    }

    @Override // java.io.DataOutput
    public void writeDouble(double d4) throws IOException {
        this.buffer.writeDouble(d4);
    }

    @Override // java.io.DataOutput
    public void writeFloat(float f4) throws IOException {
        this.buffer.writeFloat(f4);
    }

    @Override // java.io.DataOutput
    public void writeInt(int i2) throws IOException {
        this.buffer.writeInt(i2);
    }

    @Override // java.io.DataOutput
    public void writeLong(long j4) throws IOException {
        this.buffer.writeLong(j4);
    }

    @Override // java.io.DataOutput
    public void writeShort(int i2) throws IOException {
        this.buffer.writeShort((short) i2);
    }

    @Override // java.io.DataOutput
    public void writeUTF(String str) throws IOException {
        this.utf8out.writeUTF(str);
    }

    public int writtenBytes() {
        return this.buffer.writerIndex() - this.startIndex;
    }

    @Override // java.io.OutputStream, java.io.DataOutput
    public void write(byte[] bArr) throws IOException {
        this.buffer.writeBytes(bArr);
    }

    @Override // java.io.OutputStream, java.io.DataOutput
    public void write(int i2) throws IOException {
        this.buffer.writeByte(i2);
    }
}
