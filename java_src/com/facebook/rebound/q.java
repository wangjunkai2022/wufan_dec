package com.facebook.rebound;
/* compiled from: SpringUtil.java */
/* loaded from: classes2.dex */
public class q {
    public static double a(double d4, double d5, double d6) {
        return Math.min(Math.max(d4, d5), d6);
    }

    public static double b(double d4, double d5, double d6, double d7, double d8) {
        return d7 + (((d4 - d5) / (d6 - d5)) * (d8 - d7));
    }
}
