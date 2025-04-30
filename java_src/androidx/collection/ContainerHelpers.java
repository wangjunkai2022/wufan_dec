package androidx.collection;
/* loaded from: classes.dex */
class ContainerHelpers {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f1675a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    static final long[] f1676b = new long[0];

    /* renamed from: c  reason: collision with root package name */
    static final Object[] f1677c = new Object[0];

    private ContainerHelpers() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int[] iArr, int i2, int i4) {
        int i5 = i2 - 1;
        int i6 = 0;
        while (i6 <= i5) {
            int i7 = (i6 + i5) >>> 1;
            int i8 = iArr[i7];
            if (i8 < i4) {
                i6 = i7 + 1;
            } else if (i8 <= i4) {
                return i7;
            } else {
                i5 = i7 - 1;
            }
        }
        return i6 ^ (-1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(long[] jArr, int i2, long j4) {
        int i4 = i2 - 1;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            long j5 = jArr[i6];
            if (j5 < j4) {
                i5 = i6 + 1;
            } else if (j5 <= j4) {
                return i6;
            } else {
                i4 = i6 - 1;
            }
        }
        return i5 ^ (-1);
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int idealByteArraySize(int i2) {
        for (int i4 = 4; i4 < 32; i4++) {
            int i5 = (1 << i4) - 12;
            if (i2 <= i5) {
                return i5;
            }
        }
        return i2;
    }

    public static int idealIntArraySize(int i2) {
        return idealByteArraySize(i2 * 4) / 4;
    }

    public static int idealLongArraySize(int i2) {
        return idealByteArraySize(i2 * 8) / 8;
    }
}
