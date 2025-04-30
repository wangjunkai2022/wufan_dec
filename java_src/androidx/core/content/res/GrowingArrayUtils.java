package androidx.core.content.res;

import java.lang.reflect.Array;
/* loaded from: classes.dex */
final class GrowingArrayUtils {
    private GrowingArrayUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object[], java.lang.Object] */
    public static <T> T[] append(T[] tArr, int i2, T t3) {
        if (i2 + 1 > tArr.length) {
            ?? r02 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(i2));
            System.arraycopy(tArr, 0, r02, 0, i2);
            tArr = r02;
        }
        tArr[i2] = t3;
        return tArr;
    }

    public static int growSize(int i2) {
        if (i2 <= 4) {
            return 8;
        }
        return i2 * 2;
    }

    public static <T> T[] insert(T[] tArr, int i2, int i4, T t3) {
        if (i2 + 1 <= tArr.length) {
            System.arraycopy(tArr, i4, tArr, i4 + 1, i2 - i4);
            tArr[i4] = t3;
            return tArr;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(i2)));
        System.arraycopy(tArr, 0, tArr2, 0, i4);
        tArr2[i4] = t3;
        System.arraycopy(tArr, i4, tArr2, i4 + 1, tArr.length - i4);
        return tArr2;
    }

    public static int[] append(int[] iArr, int i2, int i4) {
        if (i2 + 1 > iArr.length) {
            int[] iArr2 = new int[growSize(i2)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            iArr = iArr2;
        }
        iArr[i2] = i4;
        return iArr;
    }

    public static int[] insert(int[] iArr, int i2, int i4, int i5) {
        if (i2 + 1 <= iArr.length) {
            System.arraycopy(iArr, i4, iArr, i4 + 1, i2 - i4);
            iArr[i4] = i5;
            return iArr;
        }
        int[] iArr2 = new int[growSize(i2)];
        System.arraycopy(iArr, 0, iArr2, 0, i4);
        iArr2[i4] = i5;
        System.arraycopy(iArr, i4, iArr2, i4 + 1, iArr.length - i4);
        return iArr2;
    }

    public static long[] append(long[] jArr, int i2, long j4) {
        if (i2 + 1 > jArr.length) {
            long[] jArr2 = new long[growSize(i2)];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            jArr = jArr2;
        }
        jArr[i2] = j4;
        return jArr;
    }

    public static boolean[] append(boolean[] zArr, int i2, boolean z3) {
        if (i2 + 1 > zArr.length) {
            boolean[] zArr2 = new boolean[growSize(i2)];
            System.arraycopy(zArr, 0, zArr2, 0, i2);
            zArr = zArr2;
        }
        zArr[i2] = z3;
        return zArr;
    }

    public static long[] insert(long[] jArr, int i2, int i4, long j4) {
        if (i2 + 1 <= jArr.length) {
            System.arraycopy(jArr, i4, jArr, i4 + 1, i2 - i4);
            jArr[i4] = j4;
            return jArr;
        }
        long[] jArr2 = new long[growSize(i2)];
        System.arraycopy(jArr, 0, jArr2, 0, i4);
        jArr2[i4] = j4;
        System.arraycopy(jArr, i4, jArr2, i4 + 1, jArr.length - i4);
        return jArr2;
    }

    public static boolean[] insert(boolean[] zArr, int i2, int i4, boolean z3) {
        if (i2 + 1 <= zArr.length) {
            System.arraycopy(zArr, i4, zArr, i4 + 1, i2 - i4);
            zArr[i4] = z3;
            return zArr;
        }
        boolean[] zArr2 = new boolean[growSize(i2)];
        System.arraycopy(zArr, 0, zArr2, 0, i4);
        zArr2[i4] = z3;
        System.arraycopy(zArr, i4, zArr2, i4 + 1, zArr.length - i4);
        return zArr2;
    }
}
