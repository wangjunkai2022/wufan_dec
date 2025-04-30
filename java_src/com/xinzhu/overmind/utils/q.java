package com.xinzhu.overmind.utils;
/* compiled from: NumberCastUtils.java */
/* loaded from: classes.dex */
public class q {
    public static int a(Object input) {
        if (input instanceof Long) {
            return ((Long) input).intValue();
        }
        if (input instanceof Integer) {
            return ((Integer) input).intValue();
        }
        throw new RuntimeException("Get neither Long nor Integer input.");
    }

    public static long b(Object input) {
        if (input instanceof Long) {
            return ((Long) input).longValue();
        }
        if (input instanceof Integer) {
            return ((Integer) input).longValue();
        }
        throw new RuntimeException("Get neither Long nor Integer input.");
    }
}
