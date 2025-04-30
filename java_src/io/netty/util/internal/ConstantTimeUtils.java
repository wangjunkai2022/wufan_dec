package io.netty.util.internal;
/* loaded from: classes5.dex */
public final class ConstantTimeUtils {
    private ConstantTimeUtils() {
    }

    public static int equalsConstantTime(int i2, int i4) {
        int i5 = (i2 ^ i4) ^ (-1);
        int i6 = i5 & (i5 >> 16);
        int i7 = i6 & (i6 >> 8);
        int i8 = i7 & (i7 >> 4);
        int i9 = i8 & (i8 >> 2);
        return i9 & (i9 >> 1) & 1;
    }

    public static int equalsConstantTime(long j4, long j5) {
        long j6 = (j4 ^ j5) ^ (-1);
        long j7 = j6 & (j6 >> 32);
        long j8 = j7 & (j7 >> 16);
        long j9 = j8 & (j8 >> 8);
        long j10 = j9 & (j9 >> 4);
        long j11 = j10 & (j10 >> 2);
        return (int) (j11 & (j11 >> 1) & 1);
    }

    public static int equalsConstantTime(byte[] bArr, int i2, byte[] bArr2, int i4, int i5) {
        int i6 = i5 + i2;
        int i7 = 0;
        while (i2 < i6) {
            i7 |= bArr[i2] ^ bArr2[i4];
            i2++;
            i4++;
        }
        return equalsConstantTime(i7, 0);
    }

    public static int equalsConstantTime(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence.length() != charSequence2.length()) {
            return 0;
        }
        int i2 = 0;
        for (int i4 = 0; i4 < charSequence.length(); i4++) {
            i2 |= charSequence.charAt(i4) ^ charSequence2.charAt(i4);
        }
        return equalsConstantTime(i2, 0);
    }
}
