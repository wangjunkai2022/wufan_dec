package io.netty.util.internal.shaded.org.jctools.util;
/* loaded from: classes5.dex */
public final class RangeUtil {
    public static int checkGreaterThanOrEqual(int i2, int i4, String str) {
        if (i2 >= i4) {
            return i2;
        }
        throw new IllegalArgumentException(str + ": " + i2 + " (expected: >= " + i4 + ')');
    }

    public static int checkLessThan(int i2, int i4, String str) {
        if (i2 < i4) {
            return i2;
        }
        throw new IllegalArgumentException(str + ": " + i2 + " (expected: < " + i4 + ')');
    }

    public static int checkLessThanOrEqual(int i2, long j4, String str) {
        if (i2 <= j4) {
            return i2;
        }
        throw new IllegalArgumentException(str + ": " + i2 + " (expected: <= " + j4 + ')');
    }

    public static long checkPositive(long j4, String str) {
        if (j4 > 0) {
            return j4;
        }
        throw new IllegalArgumentException(str + ": " + j4 + " (expected: > 0)");
    }

    public static int checkPositiveOrZero(int i2, String str) {
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalArgumentException(str + ": " + i2 + " (expected: >= 0)");
    }
}
