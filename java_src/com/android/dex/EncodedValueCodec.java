package com.android.dex;

import com.android.dex.util.ByteInput;
import com.android.dex.util.ByteOutput;
/* loaded from: classes2.dex */
public final class EncodedValueCodec {
    private EncodedValueCodec() {
    }

    public static int readSignedInt(ByteInput byteInput, int i2) {
        int i4 = 0;
        for (int i5 = i2; i5 >= 0; i5--) {
            i4 = (i4 >>> 8) | ((byteInput.readByte() & 255) << 24);
        }
        return i4 >> ((3 - i2) * 8);
    }

    public static long readSignedLong(ByteInput byteInput, int i2) {
        long j4 = 0;
        for (int i4 = i2; i4 >= 0; i4--) {
            j4 = (j4 >>> 8) | ((byteInput.readByte() & 255) << 56);
        }
        return j4 >> ((7 - i2) * 8);
    }

    public static int readUnsignedInt(ByteInput byteInput, int i2, boolean z3) {
        int i4 = 0;
        if (z3) {
            while (i2 >= 0) {
                i4 = ((byteInput.readByte() & 255) << 24) | (i4 >>> 8);
                i2--;
            }
            return i4;
        }
        for (int i5 = i2; i5 >= 0; i5--) {
            i4 = (i4 >>> 8) | ((byteInput.readByte() & 255) << 24);
        }
        return i4 >>> ((3 - i2) * 8);
    }

    public static long readUnsignedLong(ByteInput byteInput, int i2, boolean z3) {
        long j4 = 0;
        if (z3) {
            while (i2 >= 0) {
                j4 = (j4 >>> 8) | ((byteInput.readByte() & 255) << 56);
                i2--;
            }
            return j4;
        }
        for (int i4 = i2; i4 >= 0; i4--) {
            j4 = (j4 >>> 8) | ((byteInput.readByte() & 255) << 56);
        }
        return j4 >>> ((7 - i2) * 8);
    }

    public static void writeRightZeroExtendedValue(ByteOutput byteOutput, int i2, long j4) {
        int numberOfTrailingZeros = 64 - Long.numberOfTrailingZeros(j4);
        if (numberOfTrailingZeros == 0) {
            numberOfTrailingZeros = 1;
        }
        int i4 = (numberOfTrailingZeros + 7) >> 3;
        long j5 = j4 >> (64 - (i4 * 8));
        byteOutput.writeByte(i2 | ((i4 - 1) << 5));
        while (i4 > 0) {
            byteOutput.writeByte((byte) j5);
            j5 >>= 8;
            i4--;
        }
    }

    public static void writeSignedIntegralValue(ByteOutput byteOutput, int i2, long j4) {
        int numberOfLeadingZeros = ((65 - Long.numberOfLeadingZeros((j4 >> 63) ^ j4)) + 7) >> 3;
        byteOutput.writeByte(i2 | ((numberOfLeadingZeros - 1) << 5));
        while (numberOfLeadingZeros > 0) {
            byteOutput.writeByte((byte) j4);
            j4 >>= 8;
            numberOfLeadingZeros--;
        }
    }

    public static void writeUnsignedIntegralValue(ByteOutput byteOutput, int i2, long j4) {
        int numberOfLeadingZeros = 64 - Long.numberOfLeadingZeros(j4);
        if (numberOfLeadingZeros == 0) {
            numberOfLeadingZeros = 1;
        }
        int i4 = (numberOfLeadingZeros + 7) >> 3;
        byteOutput.writeByte(i2 | ((i4 - 1) << 5));
        while (i4 > 0) {
            byteOutput.writeByte((byte) j4);
            j4 >>= 8;
            i4--;
        }
    }
}
