package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Looper;
/* compiled from: OpenDeviceId.java */
/* loaded from: classes4.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private static y f60917a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f60918b;

    public static synchronized String a(Context context) {
        synchronized (z.class) {
            try {
                if (context != null) {
                    if (Looper.myLooper() != Looper.getMainLooper()) {
                        b(context);
                        y yVar = f60917a;
                        if (yVar != null) {
                            try {
                                return yVar.a(context);
                            } catch (Exception unused) {
                            }
                        }
                        return null;
                    }
                    throw new IllegalStateException("Cannot be called from the main thread");
                }
                throw new RuntimeException("Context is null");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void b(Context context) {
        if (f60917a != null || f60918b) {
            return;
        }
        synchronized (z.class) {
            if (f60917a == null && !f60918b) {
                f60917a = aa.a(context);
                f60918b = true;
            }
        }
    }
}
