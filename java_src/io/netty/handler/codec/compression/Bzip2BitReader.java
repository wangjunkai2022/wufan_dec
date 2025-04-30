package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
/* loaded from: classes5.dex */
class Bzip2BitReader {
    private static final int MAX_COUNT_OF_READABLE_BYTES = 268435455;
    private long bitBuffer;
    private int bitCount;

    /* renamed from: in  reason: collision with root package name */
    private ByteBuf f65743in;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasReadableBits(int i2) {
        if (i2 >= 0) {
            return this.bitCount >= i2 || ((this.f65743in.readableBytes() << 3) & Integer.MAX_VALUE) >= i2 - this.bitCount;
        }
        throw new IllegalArgumentException("count: " + i2 + " (expected value greater than 0)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasReadableBytes(int i2) {
        if (i2 >= 0 && i2 <= MAX_COUNT_OF_READABLE_BYTES) {
            return hasReadableBits(i2 << 3);
        }
        throw new IllegalArgumentException("count: " + i2 + " (expected: 0-" + MAX_COUNT_OF_READABLE_BYTES + ')');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isReadable() {
        return this.bitCount > 0 || this.f65743in.isReadable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int readBits(int i2) {
        long readUnsignedByte;
        int i4;
        if (i2 >= 0 && i2 <= 32) {
            int i5 = this.bitCount;
            long j4 = this.bitBuffer;
            if (i5 < i2) {
                int readableBytes = this.f65743in.readableBytes();
                if (readableBytes == 1) {
                    readUnsignedByte = this.f65743in.readUnsignedByte();
                    i4 = 8;
                } else if (readableBytes == 2) {
                    readUnsignedByte = this.f65743in.readUnsignedShort();
                    i4 = 16;
                } else if (readableBytes != 3) {
                    readUnsignedByte = this.f65743in.readUnsignedInt();
                    i4 = 32;
                } else {
                    readUnsignedByte = this.f65743in.readUnsignedMedium();
                    i4 = 24;
                }
                j4 = (j4 << i4) | readUnsignedByte;
                i5 += i4;
                this.bitBuffer = j4;
            }
            int i6 = i5 - i2;
            this.bitCount = i6;
            return (int) ((j4 >>> i6) & (i2 != 32 ? (1 << i2) - 1 : 4294967295L));
        }
        throw new IllegalArgumentException("count: " + i2 + " (expected: 0-32 )");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean readBoolean() {
        return readBits(1) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int readInt() {
        return readBits(32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void refill() {
        this.bitBuffer = (this.bitBuffer << 8) | this.f65743in.readUnsignedByte();
        this.bitCount += 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setByteBuf(ByteBuf byteBuf) {
        this.f65743in = byteBuf;
    }
}
