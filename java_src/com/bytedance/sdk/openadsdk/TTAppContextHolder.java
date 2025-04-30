package com.bytedance.sdk.openadsdk;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class TTAppContextHolder {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    private static volatile Context f10491a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a {
        @SuppressLint({"StaticFieldLeak"})

        /* renamed from: a  reason: collision with root package name */
        private static volatile Application f10492a;

        static {
            try {
                Object b4 = b();
                f10492a = (Application) b4.getClass().getMethod("getApplication", new Class[0]).invoke(b4, new Object[0]);
                com.bytedance.sdk.openadsdk.api.a.d("MyApplication", "application get success");
            } catch (Throwable th) {
                com.bytedance.sdk.openadsdk.api.a.b("MyApplication", "application get failed", th);
            }
        }

        public static Application a() {
            return f10492a;
        }

        private static Object b() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
                method.setAccessible(true);
                return method.invoke(null, new Object[0]);
            } catch (Throwable th) {
                com.bytedance.sdk.openadsdk.api.a.b("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }
    }

    public static Context getContext() {
        if (f10491a == null) {
            setContext(null);
        }
        return f10491a;
    }

    public static synchronized void setContext(Context context) {
        synchronized (TTAppContextHolder.class) {
            if (f10491a == null) {
                if (context != null) {
                    f10491a = context.getApplicationContext();
                } else if (a.a() != null) {
                    try {
                        f10491a = a.a();
                        if (f10491a != null) {
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }
}
