package com.join.mgps.Util;

import java.math.BigDecimal;
/* compiled from: MathUtil.java */
/* loaded from: classes3.dex */
public class z0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f28093a = "z0";

    public static int a(long j4) {
        StringBuilder sb = new StringBuilder();
        sb.append("byte2K: size");
        sb.append(j4);
        return (int) (j4 / 1024);
    }

    public static float b(long j4) {
        double d4;
        StringBuilder sb = new StringBuilder();
        sb.append("byte2M: size");
        sb.append(j4);
        Double.isNaN(j4);
        return new BigDecimal((float) ((d4 / 1024.0d) / 1024.0d)).setScale(2, 4).floatValue();
    }
}
