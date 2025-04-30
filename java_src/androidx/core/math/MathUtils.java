package androidx.core.math;
/* loaded from: classes.dex */
public class MathUtils {
    private MathUtils() {
    }

    public static int addExact(int i2, int i4) {
        int i5 = i2 + i4;
        if (((i2 ^ i5) & (i4 ^ i5)) >= 0) {
            return i5;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static double clamp(double d4, double d5, double d6) {
        return d4 < d5 ? d5 : d4 > d6 ? d6 : d4;
    }

    public static float clamp(float f4, float f5, float f6) {
        return f4 < f5 ? f5 : f4 > f6 ? f6 : f4;
    }

    public static int clamp(int i2, int i4, int i5) {
        return i2 < i4 ? i4 : i2 > i5 ? i5 : i2;
    }

    public static long clamp(long j4, long j5, long j6) {
        return j4 < j5 ? j5 : j4 > j6 ? j6 : j4;
    }

    public static int decrementExact(int i2) {
        if (i2 != Integer.MIN_VALUE) {
            return i2 - 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int incrementExact(int i2) {
        if (i2 != Integer.MAX_VALUE) {
            return i2 + 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int multiplyExact(int i2, int i4) {
        long j4 = i2 * i4;
        int i5 = (int) j4;
        if (i5 == j4) {
            return i5;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int negateExact(int i2) {
        if (i2 != Integer.MIN_VALUE) {
            return -i2;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int subtractExact(int i2, int i4) {
        int i5 = i2 - i4;
        if (((i2 ^ i5) & (i4 ^ i2)) >= 0) {
            return i5;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int toIntExact(long j4) {
        int i2 = (int) j4;
        if (i2 == j4) {
            return i2;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long addExact(long j4, long j5) {
        long j6 = j4 + j5;
        if (((j4 ^ j6) & (j5 ^ j6)) >= 0) {
            return j6;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long decrementExact(long j4) {
        if (j4 != Long.MIN_VALUE) {
            return j4 - 1;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long incrementExact(long j4) {
        if (j4 != Long.MAX_VALUE) {
            return j4 + 1;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long multiplyExact(long j4, long j5) {
        long j6 = j4 * j5;
        if (((Math.abs(j4) | Math.abs(j5)) >>> 31) == 0 || ((j5 == 0 || j6 / j5 == j4) && !(j4 == Long.MIN_VALUE && j5 == -1))) {
            return j6;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long negateExact(long j4) {
        if (j4 != Long.MIN_VALUE) {
            return -j4;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long subtractExact(long j4, long j5) {
        long j6 = j4 - j5;
        if (((j4 ^ j6) & (j5 ^ j4)) >= 0) {
            return j6;
        }
        throw new ArithmeticException("long overflow");
    }
}
