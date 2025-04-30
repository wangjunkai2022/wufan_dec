package io.netty.util.internal.shaded.org.jctools.util;
/* loaded from: classes5.dex */
public final class Pow2 {
    public static final int MAX_POW2 = 1073741824;

    public static long align(long j4, int i2) {
        int i4;
        if (isPowerOfTwo(i2)) {
            return (j4 + (i2 - 1)) & (i4 ^ (-1));
        }
        throw new IllegalArgumentException("alignment must be a power of 2:" + i2);
    }

    public static boolean isPowerOfTwo(int i2) {
        return (i2 & (i2 + (-1))) == 0;
    }

    public static int roundToPowerOfTwo(int i2) {
        if (i2 > 1073741824) {
            throw new IllegalArgumentException("There is no larger power of 2 int for value:" + i2 + " since it exceeds 2^31.");
        } else if (i2 >= 0) {
            return 1 << (32 - Integer.numberOfLeadingZeros(i2 - 1));
        } else {
            throw new IllegalArgumentException("Given value:" + i2 + ". Expecting value >= 0.");
        }
    }
}
