package com.bytedance.pangle.util;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f10390a = true;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f10391b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static Handler f10392c;

    private static Handler a() {
        Handler handler;
        synchronized (f10391b) {
            if (f10392c == null) {
                f10392c = new Handler(Looper.getMainLooper());
            }
            handler = f10392c;
        }
        return handler;
    }

    public static void a(Runnable runnable) {
        if (a().getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            a().post(runnable);
        }
    }
}
