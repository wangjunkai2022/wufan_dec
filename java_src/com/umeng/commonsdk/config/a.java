package com.umeng.commonsdk.config;
/* compiled from: BitUtils.java */
/* loaded from: classes4.dex */
public class a {
    public static boolean a(int i2, int i4) {
        return i4 >= 0 && i4 <= 31 && (i2 & (1 << i4)) != 0;
    }

    public static boolean a(long j4, int i2) {
        return i2 >= 0 && i2 <= 63 && (j4 & (1 << i2)) != 0;
    }

    public static int b(int i2, int i4) {
        return i2 | (1 << i4);
    }

    public static long b(long j4, int i2) {
        return (i2 < 0 || i2 > 63) ? j4 : j4 | (1 << i2);
    }

    public static int c(int i2, int i4) {
        return i2 & ((1 << i4) ^ (-1));
    }

    public static long c(long j4, int i2) {
        return (i2 < 0 || i2 > 63) ? j4 : j4 & ((1 << i2) ^ (-1));
    }
}
