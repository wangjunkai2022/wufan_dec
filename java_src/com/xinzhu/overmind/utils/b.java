package com.xinzhu.overmind.utils;

import android.content.res.Resources;
/* compiled from: AccessInternalR.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    static String f64678a = "b";

    public static int a(String input) {
        int i2;
        if (input.startsWith("R.")) {
            i2 = 2;
        } else if (!input.startsWith("com.android.internal.R.")) {
            throw new RuntimeException("AccessInternalR invalid");
        } else {
            i2 = 23;
        }
        String substring = input.substring(i2);
        int lastIndexOf = substring.lastIndexOf(46);
        String substring2 = substring.substring(0, lastIndexOf);
        String substring3 = substring.substring(lastIndexOf + 1);
        String str = f64678a;
        m.e(str, "AccessInternalR " + substring2 + " " + substring3);
        return Resources.getSystem().getIdentifier(substring3, substring2, q.a.f73954a);
    }

    public static int[] b(String input) {
        int i2;
        if (input.startsWith("R.")) {
            i2 = 2;
        } else if (!input.startsWith("com.android.internal.R.")) {
            throw new RuntimeException("AccessInternalR invalid");
        } else {
            i2 = 23;
        }
        String substring = input.substring(i2);
        int lastIndexOf = substring.lastIndexOf(46);
        String substring2 = substring.substring(0, lastIndexOf);
        String substring3 = substring.substring(lastIndexOf + 1);
        String str = f64678a;
        m.e(str, "AccessInternalR " + substring2 + " " + substring3);
        Resources system = Resources.getSystem();
        return system.getIntArray(system.getIdentifier(substring3, substring2, q.a.f73954a));
    }
}
