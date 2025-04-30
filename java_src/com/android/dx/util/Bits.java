package com.android.dx.util;

import io.netty.util.internal.StringUtil;
/* loaded from: classes2.dex */
public final class Bits {
    private Bits() {
    }

    public static boolean anyInRange(int[] iArr, int i2, int i4) {
        int findFirst = findFirst(iArr, i2);
        return findFirst >= 0 && findFirst < i4;
    }

    public static int bitCount(int[] iArr) {
        int i2 = 0;
        for (int i4 : iArr) {
            i2 += Integer.bitCount(i4);
        }
        return i2;
    }

    public static void clear(int[] iArr, int i2) {
        int i4 = i2 >> 5;
        iArr[i4] = ((1 << (i2 & 31)) ^ (-1)) & iArr[i4];
    }

    public static int findFirst(int[] iArr, int i2) {
        int findFirst;
        int length = iArr.length;
        int i4 = i2 & 31;
        for (int i5 = i2 >> 5; i5 < length; i5++) {
            int i6 = iArr[i5];
            if (i6 != 0 && (findFirst = findFirst(i6, i4)) >= 0) {
                return (i5 << 5) + findFirst;
            }
            i4 = 0;
        }
        return -1;
    }

    public static boolean get(int[] iArr, int i2) {
        return (iArr[i2 >> 5] & (1 << (i2 & 31))) != 0;
    }

    public static int getMax(int[] iArr) {
        return iArr.length * 32;
    }

    public static boolean isEmpty(int[] iArr) {
        for (int i2 : iArr) {
            if (i2 != 0) {
                return false;
            }
        }
        return true;
    }

    public static int[] makeBitSet(int i2) {
        return new int[(i2 + 31) >> 5];
    }

    public static void or(int[] iArr, int[] iArr2) {
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            iArr[i2] = iArr[i2] | iArr2[i2];
        }
    }

    public static void set(int[] iArr, int i2, boolean z3) {
        int i4 = i2 >> 5;
        int i5 = 1 << (i2 & 31);
        if (z3) {
            iArr[i4] = i5 | iArr[i4];
            return;
        }
        iArr[i4] = (i5 ^ (-1)) & iArr[i4];
    }

    public static String toHuman(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        int length = iArr.length * 32;
        boolean z3 = false;
        for (int i2 = 0; i2 < length; i2++) {
            if (get(iArr, i2)) {
                if (z3) {
                    sb.append(StringUtil.COMMA);
                }
                sb.append(i2);
                z3 = true;
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public static void set(int[] iArr, int i2) {
        int i4 = i2 >> 5;
        iArr[i4] = (1 << (i2 & 31)) | iArr[i4];
    }

    public static int findFirst(int i2, int i4) {
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i2 & (((1 << i4) - 1) ^ (-1)));
        if (numberOfTrailingZeros == 32) {
            return -1;
        }
        return numberOfTrailingZeros;
    }
}
