package com.bytedance.pangle.c;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.MethodUtils;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Class f10111a;

    /* renamed from: b  reason: collision with root package name */
    private static Object f10112b;

    public static final Object a() {
        if (f10112b == null) {
            try {
                synchronized (a.class) {
                    if (f10112b == null) {
                        if (f10111a == null) {
                            f10111a = Class.forName("android.app.ActivityThread");
                        }
                        f10112b = MethodUtils.invokeStaticMethod(f10111a, "currentActivityThread", new Object[0]);
                    }
                    if (f10112b == null && Looper.myLooper() != Looper.getMainLooper()) {
                        final Object obj = new Object();
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.pangle.c.a.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    try {
                                        Object unused = a.f10112b = MethodUtils.invokeStaticMethod(a.f10111a, "currentActivityThread", new Object[0]);
                                        synchronized (obj) {
                                            obj.notify();
                                        }
                                    } catch (Exception e4) {
                                        ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper main looper invoke currentActivityThread failed.", e4);
                                        synchronized (obj) {
                                            obj.notify();
                                        }
                                    }
                                } catch (Throwable th) {
                                    synchronized (obj) {
                                        obj.notify();
                                        throw th;
                                    }
                                }
                            }
                        });
                        if (f10112b == null) {
                            synchronized (obj) {
                                try {
                                    obj.wait(5000L);
                                } catch (InterruptedException e4) {
                                    ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper currentActivityThread interruptedException failed.", e4);
                                }
                            }
                        }
                    }
                }
            } catch (Exception e5) {
                ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper currentActivityThread failed.", e5);
            }
        }
        return f10112b;
    }
}
