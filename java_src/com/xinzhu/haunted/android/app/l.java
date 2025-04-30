package com.xinzhu.haunted.android.app;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIActivityManager.java */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62679b = "l";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62680c = com.xinzhu.haunted.d.b("android.app.IActivityManager");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f62681d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62682e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f62683f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62684g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Method> f62685h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f62686i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Method> f62687j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f62688k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Method> f62689l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f62690m = false;

    /* renamed from: n  reason: collision with root package name */
    private static AtomicReference<Method> f62691n = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private static boolean f62692o = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62693a;

    /* compiled from: HtIActivityManager.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62698a = com.xinzhu.haunted.d.b("android.app.IActivityManager$Stub");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Method> f62699b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62700c = false;

        public static IInterface a(IBinder arg0) {
            if (b(arg0)) {
                try {
                    return (IInterface) f62699b.get().invoke(null, arg0);
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

        public static boolean b(IBinder arg0) {
            if (f62699b.get() == null) {
                if (f62700c) {
                    return false;
                }
                f62699b.compareAndSet(null, com.xinzhu.haunted.d.g(f62698a, "asInterface", IBinder.class));
                f62700c = true;
                return f62699b.get() != null;
            }
            return true;
        }
    }

    public l(Object egoInstance) {
        this.f62693a = egoInstance;
    }

    public boolean a(IBinder arg0, int arg1, Intent arg2, int arg3) {
        if (f62681d.get() == null) {
            if (f62682e) {
                return false;
            }
            AtomicReference<Method> atomicReference = f62681d;
            Class<?> cls = f62680c;
            Class cls2 = Integer.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.g(cls, "finishActivity", IBinder.class, cls2, Intent.class, cls2));
            f62682e = true;
            return f62681d.get() != null;
        }
        return true;
    }

    public boolean b(IBinder arg0, int arg1, Intent arg2, boolean arg3) {
        if (f62683f.get() == null) {
            if (f62684g) {
                return false;
            }
            f62683f.compareAndSet(null, com.xinzhu.haunted.d.g(f62680c, "finishActivity", IBinder.class, Integer.TYPE, Intent.class, Boolean.TYPE));
            f62684g = true;
            return f62683f.get() != null;
        }
        return true;
    }

    public boolean c(IBinder arg0) {
        if (f62689l.get() == null) {
            if (f62690m) {
                return false;
            }
            f62689l.compareAndSet(null, com.xinzhu.haunted.d.g(f62680c, "getLaunchedFromPackage", IBinder.class));
            f62690m = true;
            return f62689l.get() != null;
        }
        return true;
    }

    public boolean d(IBinder arg0) {
        if (f62687j.get() == null) {
            if (f62688k) {
                return false;
            }
            f62687j.compareAndSet(null, com.xinzhu.haunted.d.g(f62680c, "getLaunchedFromUid", IBinder.class));
            f62688k = true;
            return f62687j.get() != null;
        }
        return true;
    }

    public boolean e(IBinder arg0, boolean arg1) {
        if (f62685h.get() == null) {
            if (f62686i) {
                return false;
            }
            f62685h.compareAndSet(null, com.xinzhu.haunted.d.g(f62680c, "getTaskForActivity", IBinder.class, Boolean.TYPE));
            f62686i = true;
            return f62685h.get() != null;
        }
        return true;
    }

    public boolean f(Object arg0, String arg1, Intent arg2, String arg3, IBinder arg4, String arg5, int arg6, int arg7, Object arg8, Bundle arg9) {
        if (f62691n.get() == null) {
            if (f62692o) {
                return false;
            }
            AtomicReference<Method> atomicReference = f62691n;
            Class<?> cls = f62680c;
            Class cls2 = Integer.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.g(cls, "startActivity", "android.app.IApplicationThread", String.class, Intent.class, String.class, IBinder.class, String.class, cls2, cls2, "android.app.ProfilerInfo", Bundle.class));
            f62692o = true;
            return f62691n.get() != null;
        }
        return true;
    }

    public boolean g(IBinder arg0, int arg1, Intent arg2, int arg3) {
        if (a(arg0, arg1, arg2, arg3)) {
            try {
                return ((Boolean) f62681d.get().invoke(this.f62693a, arg0, Integer.valueOf(arg1), arg2, Integer.valueOf(arg3))).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean h(IBinder arg0, int arg1, Intent arg2, boolean arg3) {
        if (b(arg0, arg1, arg2, arg3)) {
            try {
                return ((Boolean) f62683f.get().invoke(this.f62693a, arg0, Integer.valueOf(arg1), arg2, Boolean.valueOf(arg3))).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public String i(IBinder arg0) {
        if (c(arg0)) {
            try {
                return (String) f62689l.get().invoke(this.f62693a, arg0);
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

    public int j(IBinder arg0) {
        if (d(arg0)) {
            try {
                return ((Integer) f62687j.get().invoke(this.f62693a, arg0)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public int k(IBinder arg0, boolean arg1) {
        if (e(arg0, arg1)) {
            try {
                return ((Integer) f62685h.get().invoke(this.f62693a, arg0, Boolean.valueOf(arg1))).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public int startActivity(Object arg0, String arg1, Intent arg2, String arg3, IBinder arg4, String arg5, int arg6, int arg7, Object arg8, Bundle arg9) {
        if (f(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) {
            try {
                return ((Integer) f62691n.get().invoke(this.f62693a, arg0, arg1, arg2, arg3, arg4, arg5, Integer.valueOf(arg6), Integer.valueOf(arg7), arg8, arg9)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    /* compiled from: HtIActivityManager.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f62694b = com.xinzhu.haunted.d.b("android.app.IActivityManager$ContentProviderHolder");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f62695c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f62696d = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f62697a;

        public a(Object egoInstance) {
            this.f62697a = egoInstance;
        }

        public boolean a() {
            if (f62695c.get() == null) {
                if (f62696d) {
                    return false;
                }
                f62695c.compareAndSet(null, com.xinzhu.haunted.d.f(f62694b, com.umeng.analytics.pro.c.M));
                f62696d = true;
                return f62695c.get() != null;
            }
            return true;
        }

        public IInterface b() {
            if (a()) {
                try {
                    return (IInterface) f62695c.get().get(this.f62697a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean c(IInterface value) {
            if (a()) {
                try {
                    f62695c.get().set(this.f62697a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        private a() {
        }
    }

    private l() {
    }
}
