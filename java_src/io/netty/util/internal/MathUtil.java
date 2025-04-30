package io.netty.util.internal;
/* loaded from: classes5.dex */
public final class MathUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    private MathUtil() {
    }

    public static int compare(int i2, int i4) {
        if (i2 < i4) {
            return -1;
        }
        return i2 > i4 ? 1 : 0;
    }

    public static int compare(long j4, long j5) {
        if (j4 < j5) {
            return -1;
        }
        return j4 > j5 ? 1 : 0;
    }

    public static int findNextPositivePowerOfTwo(int i2) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i2 - 1));
    }

    public static boolean isOutOfBounds(int i2, int i4, int i5) {
        int i6 = i2 | i4;
        int i7 = i2 + i4;
        return ((i6 | i7) | (i5 - i7)) < 0;
    }

    public static int safeFindNextPositivePowerOfTwo(int i2) {
        if (i2 <= 0) {
            return 1;
        }
        if (i2 >= 1073741824) {
            return 1073741824;
        }
        return findNextPositivePowerOfTwo(i2);
    }
}
