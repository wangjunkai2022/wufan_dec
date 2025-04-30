package com.xinzhu.haunted.android.app.job;

import android.app.job.JobInfo;
import android.content.ComponentName;
import androidx.core.app.NotificationCompat;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtJobInfo.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62641b = "b";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62642c = com.xinzhu.haunted.d.a(JobInfo.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62643d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62644e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f62645f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62646g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62647a;

    public b(Object egoInstance) {
        this.f62647a = egoInstance;
    }

    public static boolean a() {
        if (f62643d.get() == null) {
            if (f62644e) {
                return false;
            }
            f62643d.compareAndSet(null, com.xinzhu.haunted.d.f(f62642c, "FLAG_EXEMPT_FROM_APP_STANDBY"));
            f62644e = true;
            return f62643d.get() != null;
        }
        return true;
    }

    public static int c() {
        if (a()) {
            try {
                return ((Integer) f62643d.get().get(null)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static boolean e(int value) {
        if (a()) {
            try {
                f62643d.get().set(null, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean b() {
        if (f62645f.get() == null) {
            if (f62646g) {
                return false;
            }
            f62645f.compareAndSet(null, com.xinzhu.haunted.d.f(f62642c, NotificationCompat.CATEGORY_SERVICE));
            f62646g = true;
            return f62645f.get() != null;
        }
        return true;
    }

    public ComponentName d() {
        if (b()) {
            try {
                return (ComponentName) f62645f.get().get(this.f62647a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean f(ComponentName value) {
        if (b()) {
            try {
                f62645f.get().set(this.f62647a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* compiled from: HtJobInfo.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f62648b = com.xinzhu.haunted.d.b("android.app.job.JobInfo$Builder");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Method> f62649c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f62650d = false;

        /* renamed from: e  reason: collision with root package name */
        private static AtomicReference<Method> f62651e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        private static boolean f62652f = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f62653a;

        public a(Object egoInstance) {
            this.f62653a = egoInstance;
        }

        public boolean a(int arg0) {
            if (f62651e.get() == null) {
                if (f62652f) {
                    return false;
                }
                f62651e.compareAndSet(null, com.xinzhu.haunted.d.g(f62648b, "setFlags", Integer.TYPE));
                f62652f = true;
                return f62651e.get() != null;
            }
            return true;
        }

        public boolean b(int arg0) {
            if (f62649c.get() == null) {
                if (f62650d) {
                    return false;
                }
                f62649c.compareAndSet(null, com.xinzhu.haunted.d.g(f62648b, "setPriority", Integer.TYPE));
                f62650d = true;
                return f62649c.get() != null;
            }
            return true;
        }

        public JobInfo.Builder c(int arg0) {
            if (a(arg0)) {
                try {
                    return (JobInfo.Builder) f62651e.get().invoke(this.f62653a, Integer.valueOf(arg0));
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                } catch (InvocationTargetException e5) {
                    e5.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public JobInfo.Builder d(int arg0) {
            if (b(arg0)) {
                try {
                    return (JobInfo.Builder) f62649c.get().invoke(this.f62653a, Integer.valueOf(arg0));
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                } catch (InvocationTargetException e5) {
                    e5.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        private a() {
        }
    }

    private b() {
    }
}
