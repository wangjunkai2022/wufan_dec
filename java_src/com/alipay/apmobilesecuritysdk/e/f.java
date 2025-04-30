package com.alipay.apmobilesecuritysdk.e;

import android.content.Context;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static String f9545a = "";

    /* renamed from: b  reason: collision with root package name */
    private static String f9546b = "";

    public static synchronized String a() {
        String str;
        synchronized (f.class) {
            str = f9545a;
        }
        return str;
    }

    public static synchronized void b(b bVar) {
        synchronized (f.class) {
            if (bVar != null) {
                f9545a = bVar.f9536a;
                f9546b = bVar.f9538c;
            }
        }
    }

    public static synchronized boolean c(Context context) {
        synchronized (f.class) {
            try {
                if (Math.abs(System.currentTimeMillis() - e.c(context)) < 86400000) {
                    return true;
                }
            } finally {
                return false;
            }
            return false;
        }
    }

    public static synchronized String d() {
        String str;
        synchronized (f.class) {
            str = f9546b;
        }
        return str;
    }
}
