package com.android.dex;

import com.android.dex.util.ByteInput;
import com.android.dx.io.Opcodes;
import java.io.UTFDataFormatException;
/* loaded from: classes2.dex */
public final class Mutf8 {
    private Mutf8() {
    }

    private static long countBytes(String str, boolean z3) throws UTFDataFormatException {
        int length = str.length();
        long j4 = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            j4 += (charAt == 0 || charAt > 127) ? charAt <= 2047 ? 2L : 3L : 1L;
            if (z3 && j4 > 65535) {
                throw new UTFDataFormatException("String more than 65535 UTF bytes long");
            }
        }
        return j4;
    }

    public static String decode(ByteInput byteInput, char[] cArr) throws UTFDataFormatException {
        int i2;
        int i4 = 0;
        while (true) {
            char readByte = (char) (byteInput.readByte() & 255);
            if (readByte == 0) {
                return new String(cArr, 0, i4);
            }
            cArr[i4] = readByte;
            if (readByte < 128) {
                i4++;
            } else {
                if ((readByte & 224) == 192) {
                    int readByte2 = byteInput.readByte() & 255;
                    if ((readByte2 & 192) == 128) {
                        i2 = i4 + 1;
                        cArr[i4] = (char) (((readByte & 31) << 6) | (readByte2 & 63));
                    } else {
                        throw new UTFDataFormatException("bad second byte");
                    }
                } else if ((readByte & 240) == 224) {
                    int readByte3 = byteInput.readByte() & 255;
                    int readByte4 = byteInput.readByte() & 255;
                    if ((readByte3 & 192) != 128 || (readByte4 & 192) != 128) {
                        break;
                    }
                    i2 = i4 + 1;
                    cArr[i4] = (char) (((readByte & 15) << 12) | ((readByte3 & 63) << 6) | (readByte4 & 63));
                } else {
                    throw new UTFDataFormatException("bad byte");
                }
                i4 = i2;
            }
        }
        throw new UTFDataFormatException("bad second or third byte");
    }

    public static void encode(byte[] bArr, int i2, String str) {
        int i4;
        int length = str.length();
        for (int i5 = 0; i5 < length; i5++) {
            char charAt = str.charAt(i5);
            if (charAt != 0 && charAt <= 127) {
                i4 = i2 + 1;
                bArr[i2] = (byte) charAt;
            } else if (charAt <= 2047) {
                int i6 = i2 + 1;
                bArr[i2] = (byte) (((charAt >> 6) & 31) | 192);
                i2 = i6 + 1;
                bArr[i6] = (byte) ((charAt & '?') | 128);
            } else {
                int i7 = i2 + 1;
                bArr[i2] = (byte) (((charAt >> '\f') & 15) | Opcodes.SHL_INT_LIT8);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (((charAt >> 6) & 63) | 128);
                i4 = i8 + 1;
                bArr[i8] = (byte) ((charAt & '?') | 128);
            }
            i2 = i4;
        }
    }

    public static byte[] encode(String str) throws UTFDataFormatException {
        byte[] bArr = new byte[(int) countBytes(str, true)];
        encode(bArr, 0, str);
        return bArr;
    }
}
