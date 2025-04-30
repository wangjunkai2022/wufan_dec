package com.android.dex;

import com.android.dex.util.ByteInput;
import com.android.dex.util.ByteOutput;
/* loaded from: classes2.dex */
public final class Leb128 {
    private Leb128() {
    }

    public static int readSignedLeb128(ByteInput byteInput) {
        int i2;
        int i4 = 0;
        int i5 = 0;
        int i6 = -1;
        do {
            int readByte = byteInput.readByte() & 255;
            i4 |= (readByte & 127) << (i5 * 7);
            i6 <<= 7;
            i5++;
            i2 = readByte & 128;
            if (i2 != 128) {
                break;
            }
        } while (i5 < 5);
        if (i2 != 128) {
            return ((i6 >> 1) & i4) != 0 ? i4 | i6 : i4;
        }
        throw new DexException("invalid LEB128 sequence");
    }

    public static int readUnsignedLeb128(ByteInput byteInput) {
        int i2;
        int i4 = 0;
        int i5 = 0;
        do {
            int readByte = byteInput.readByte() & 255;
            i4 |= (readByte & 127) << (i5 * 7);
            i5++;
            i2 = readByte & 128;
            if (i2 != 128) {
                break;
            }
        } while (i5 < 5);
        if (i2 != 128) {
            return i4;
        }
        throw new DexException("invalid LEB128 sequence");
    }

    public static int unsignedLeb128Size(int i2) {
        int i4 = i2 >> 7;
        int i5 = 0;
        while (i4 != 0) {
            i4 >>= 7;
            i5++;
        }
        return i5 + 1;
    }

    public static void writeSignedLeb128(ByteOutput byteOutput, int i2) {
        int i4 = i2 >> 7;
        int i5 = (Integer.MIN_VALUE & i2) == 0 ? 0 : -1;
        boolean z3 = true;
        while (true) {
            int i6 = i4;
            int i7 = i2;
            i2 = i6;
            if (!z3) {
                return;
            }
            z3 = (i2 == i5 && (i2 & 1) == ((i7 >> 6) & 1)) ? false : true;
            byteOutput.writeByte((byte) ((i7 & 127) | (z3 ? 128 : 0)));
            i4 = i2 >> 7;
        }
    }

    public static void writeUnsignedLeb128(ByteOutput byteOutput, int i2) {
        while (true) {
            int i4 = i2;
            i2 >>>= 7;
            if (i2 != 0) {
                byteOutput.writeByte((byte) ((i4 & 127) | 128));
            } else {
                byteOutput.writeByte((byte) (i4 & 127));
                return;
            }
        }
    }
}
