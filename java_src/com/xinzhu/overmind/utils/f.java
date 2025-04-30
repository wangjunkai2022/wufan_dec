package com.xinzhu.overmind.utils;
/* compiled from: ContainerHelpers.java */
/* loaded from: classes3.dex */
class f {
    f() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int[] array, int size, int value) {
        int i2 = size - 1;
        int i4 = 0;
        while (i4 <= i2) {
            int i5 = (i4 + i2) >>> 1;
            int i6 = array[i5];
            if (i6 < value) {
                i4 = i5 + 1;
            } else if (i6 <= value) {
                return i5;
            } else {
                i2 = i5 - 1;
            }
        }
        return i4 ^ (-1);
    }

    static int b(long[] array, int size, long value) {
        int i2 = size - 1;
        int i4 = 0;
        while (i4 <= i2) {
            int i5 = (i4 + i2) >>> 1;
            long j4 = array[i5];
            if (j4 < value) {
                i4 = i5 + 1;
            } else if (j4 <= value) {
                return i5;
            } else {
                i2 = i5 - 1;
            }
        }
        return i4 ^ (-1);
    }

    public static boolean c(Object a4, Object b4) {
        if (a4 == null || b4 == null) {
            return false;
        }
        return a4 == b4 || a4.equals(b4);
    }
}
