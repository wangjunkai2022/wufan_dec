package com.alipay.apmobilesecuritysdk.d;

import android.content.Context;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f9532a = "";

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f9533b;

    /* renamed from: c  reason: collision with root package name */
    private static Context f9534c;

    /* renamed from: d  reason: collision with root package name */
    private static a f9535d;

    private a() {
    }

    public static a a(Context context) {
        if (f9535d == null) {
            synchronized (a.class) {
                if (f9535d == null) {
                    f9535d = new a();
                    f9534c = context;
                }
            }
        }
        return f9535d;
    }

    public static String b() {
        com.alipay.security.mobile.module.commonutils.a.b(f9532a);
        return f9532a;
    }

    public static String c() {
        return f9532a;
    }
}
