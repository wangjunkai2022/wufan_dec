package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
/* loaded from: classes5.dex */
final class Bzip2BitWriter {
    private long bitBuffer;
    private int bitCount;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void flush(ByteBuf byteBuf) {
        int i2 = this.bitCount;
        if (i2 > 0) {
            long j4 = this.bitBuffer;
            int i4 = 64 - i2;
            if (i2 <= 8) {
                byteBuf.writeByte((int) ((j4 >>> i4) << (8 - i2)));
            } else if (i2 <= 16) {
                byteBuf.writeShort((int) ((j4 >>> i4) << (16 - i2)));
            } else if (i2 <= 24) {
                byteBuf.writeMedium((int) ((j4 >>> i4) << (24 - i2)));
            } else {
                byteBuf.writeInt((int) ((j4 >>> i4) << (32 - i2)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeBits(ByteBuf byteBuf, int i2, long j4) {
        if (i2 >= 0 && i2 <= 32) {
            int i4 = this.bitCount;
            long j5 = ((j4 << (64 - i2)) >>> i4) | this.bitBuffer;
            int i5 = i4 + i2;
            if (i5 >= 32) {
                byteBuf.writeInt((int) (j5 >>> 32));
                j5 <<= 32;
                i5 -= 32;
            }
            this.bitBuffer = j5;
            this.bitCount = i5;
            return;
        }
        throw new IllegalArgumentException("count: " + i2 + " (expected: 0-32)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeBoolean(ByteBuf byteBuf, boolean z3) {
        int i2 = this.bitCount + 1;
        long j4 = 0;
        long j5 = this.bitBuffer | (z3 ? 1 << (64 - i2) : 0L);
        if (i2 == 32) {
            byteBuf.writeInt((int) (j5 >>> 32));
            i2 = 0;
        } else {
            j4 = j5;
        }
        this.bitBuffer = j4;
        this.bitCount = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeInt(ByteBuf byteBuf, int i2) {
        writeBits(byteBuf, 32, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeUnary(ByteBuf byteBuf, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("value: " + i2 + " (expected 0 or more)");
        }
        while (true) {
            int i4 = i2 - 1;
            if (i2 > 0) {
                writeBoolean(byteBuf, true);
                i2 = i4;
            } else {
                writeBoolean(byteBuf, false);
                return;
            }
        }
    }
}
