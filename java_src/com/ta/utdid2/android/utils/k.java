package com.ta.utdid2.android.utils;
/* loaded from: classes4.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    public static final String f59170a = "com.ta.utdid2.android.utils.k";

    /* renamed from: b  reason: collision with root package name */
    public static final int f59171b = 86400000;

    public static boolean a(long j4, int i2) {
        boolean z3 = (System.currentTimeMillis() - j4) / 86400000 < ((long) i2);
        if (d.f59161b) {
            StringBuilder sb = new StringBuilder("isUpToDate: ");
            sb.append(z3);
            sb.append("; oldTimestamp: ");
            sb.append(j4);
            sb.append("; currentTimestamp");
            sb.append(System.currentTimeMillis());
        }
        return z3;
    }
}
