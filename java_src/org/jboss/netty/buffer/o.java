package org.jboss.netty.buffer;

import java.nio.ByteOrder;
/* compiled from: LittleEndianHeapChannelBuffer.java */
/* loaded from: classes5.dex */
public class o extends m {
    public o(int i2) {
        super(i2);
    }

    @Override // org.jboss.netty.buffer.e
    public e M(int i2, int i4) {
        if (i2 >= 0 && i4 >= 0) {
            int i5 = i2 + i4;
            byte[] bArr = this.f73395e;
            if (i5 <= bArr.length) {
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, i2, bArr2, 0, i4);
                return new o(bArr2);
            }
        }
        throw new IndexOutOfBoundsException("Too many bytes to copy - Need " + (i2 + i4) + ", maximum is " + this.f73395e.length);
    }

    @Override // org.jboss.netty.buffer.e
    public void X(int i2, int i4) {
        byte[] bArr = this.f73395e;
        bArr[i2] = (byte) i4;
        bArr[i2 + 1] = (byte) (i4 >>> 8);
        bArr[i2 + 2] = (byte) (i4 >>> 16);
    }

    @Override // org.jboss.netty.buffer.e
    public e duplicate() {
        return new o(this.f73395e, readerIndex(), writerIndex());
    }

    @Override // org.jboss.netty.buffer.e
    public f factory() {
        return n.h(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // org.jboss.netty.buffer.e
    public int getInt(int i2) {
        byte[] bArr = this.f73395e;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    @Override // org.jboss.netty.buffer.e
    public long getLong(int i2) {
        byte[] bArr = this.f73395e;
        return (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48) | ((255 & bArr[i2 + 7]) << 56);
    }

    @Override // org.jboss.netty.buffer.e
    public short getShort(int i2) {
        byte[] bArr = this.f73395e;
        return (short) ((bArr[i2 + 1] << 8) | (bArr[i2] & 255));
    }

    @Override // org.jboss.netty.buffer.e
    public int getUnsignedMedium(int i2) {
        byte[] bArr = this.f73395e;
        return ((bArr[i2 + 2] & 255) << 16) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8);
    }

    @Override // org.jboss.netty.buffer.e
    public ByteOrder order() {
        return ByteOrder.LITTLE_ENDIAN;
    }

    @Override // org.jboss.netty.buffer.e
    public void q0(int i2, int i4) {
        byte[] bArr = this.f73395e;
        bArr[i2] = (byte) i4;
        bArr[i2 + 1] = (byte) (i4 >>> 8);
    }

    @Override // org.jboss.netty.buffer.e
    public void setInt(int i2, int i4) {
        byte[] bArr = this.f73395e;
        bArr[i2] = (byte) i4;
        bArr[i2 + 1] = (byte) (i4 >>> 8);
        bArr[i2 + 2] = (byte) (i4 >>> 16);
        bArr[i2 + 3] = (byte) (i4 >>> 24);
    }

    @Override // org.jboss.netty.buffer.e
    public void setLong(int i2, long j4) {
        byte[] bArr = this.f73395e;
        bArr[i2] = (byte) j4;
        bArr[i2 + 1] = (byte) (j4 >>> 8);
        bArr[i2 + 2] = (byte) (j4 >>> 16);
        bArr[i2 + 3] = (byte) (j4 >>> 24);
        bArr[i2 + 4] = (byte) (j4 >>> 32);
        bArr[i2 + 5] = (byte) (j4 >>> 40);
        bArr[i2 + 6] = (byte) (j4 >>> 48);
        bArr[i2 + 7] = (byte) (j4 >>> 56);
    }

    public o(byte[] bArr) {
        super(bArr);
    }

    private o(byte[] bArr, int i2, int i4) {
        super(bArr, i2, i4);
    }
}
