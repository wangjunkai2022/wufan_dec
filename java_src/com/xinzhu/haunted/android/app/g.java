package com.xinzhu.haunted.android.app;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.util.ArrayMap;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.activity.PapayPayDetialActivity_;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtActivityThread.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62532b = "g";

    /* renamed from: a  reason: collision with root package name */
    public Object f62565a;

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62534c = com.xinzhu.haunted.d.b("android.app.ActivityThread");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62536d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62538e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f62540f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62542g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Field> f62544h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f62546i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Field> f62548j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f62549k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Field> f62550l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f62551m = false;

    /* renamed from: n  reason: collision with root package name */
    private static AtomicReference<Field> f62552n = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private static boolean f62553o = false;

    /* renamed from: p  reason: collision with root package name */
    private static AtomicReference<Field> f62554p = new AtomicReference<>();

    /* renamed from: q  reason: collision with root package name */
    private static boolean f62555q = false;

    /* renamed from: r  reason: collision with root package name */
    private static AtomicReference<Field> f62556r = new AtomicReference<>();

    /* renamed from: s  reason: collision with root package name */
    private static boolean f62557s = false;

    /* renamed from: t  reason: collision with root package name */
    private static AtomicReference<Field> f62558t = new AtomicReference<>();

    /* renamed from: u  reason: collision with root package name */
    private static boolean f62559u = false;

    /* renamed from: v  reason: collision with root package name */
    private static AtomicReference<Method> f62560v = new AtomicReference<>();

    /* renamed from: w  reason: collision with root package name */
    private static boolean f62561w = false;

    /* renamed from: x  reason: collision with root package name */
    private static AtomicReference<Method> f62562x = new AtomicReference<>();

    /* renamed from: y  reason: collision with root package name */
    private static boolean f62563y = false;

    /* renamed from: z  reason: collision with root package name */
    private static AtomicReference<Method> f62564z = new AtomicReference<>();
    private static boolean A = false;
    private static AtomicReference<Method> B = new AtomicReference<>();
    private static boolean C = false;
    private static AtomicReference<Method> D = new AtomicReference<>();
    private static boolean E = false;
    private static AtomicReference<Method> F = new AtomicReference<>();
    private static boolean G = false;
    private static AtomicReference<Method> H = new AtomicReference<>();
    private static boolean I = false;
    private static AtomicReference<Method> J = new AtomicReference<>();
    private static boolean K = false;
    private static AtomicReference<Method> L = new AtomicReference<>();
    private static boolean M = false;
    private static AtomicReference<Method> N = new AtomicReference<>();
    private static boolean O = false;
    private static AtomicReference<Method> P = new AtomicReference<>();
    private static boolean Q = false;
    private static AtomicReference<Method> R = new AtomicReference<>();
    private static boolean S = false;
    private static AtomicReference<Method> T = new AtomicReference<>();
    private static boolean U = false;
    private static AtomicReference<Method> V = new AtomicReference<>();
    private static boolean W = false;
    private static AtomicReference<Method> X = new AtomicReference<>();
    private static boolean Y = false;
    private static AtomicReference<Method> Z = new AtomicReference<>();

    /* renamed from: a0  reason: collision with root package name */
    private static boolean f62531a0 = false;

    /* renamed from: b0  reason: collision with root package name */
    private static AtomicReference<Method> f62533b0 = new AtomicReference<>();

    /* renamed from: c0  reason: collision with root package name */
    private static boolean f62535c0 = false;

    /* renamed from: d0  reason: collision with root package name */
    private static AtomicReference<Method> f62537d0 = new AtomicReference<>();

    /* renamed from: e0  reason: collision with root package name */
    private static boolean f62539e0 = false;

    /* renamed from: f0  reason: collision with root package name */
    private static AtomicReference<Method> f62541f0 = new AtomicReference<>();

    /* renamed from: g0  reason: collision with root package name */
    private static boolean f62543g0 = false;

    /* renamed from: h0  reason: collision with root package name */
    private static AtomicReference<Method> f62545h0 = new AtomicReference<>();

    /* renamed from: i0  reason: collision with root package name */
    private static boolean f62547i0 = false;

    /* compiled from: HtActivityThread.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f62592a = com.xinzhu.haunted.d.b("android.app.ActivityThread$H");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Field> f62593b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f62594c = false;

        /* renamed from: d  reason: collision with root package name */
        private static AtomicReference<Field> f62595d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        private static boolean f62596e = false;

        /* renamed from: f  reason: collision with root package name */
        private static AtomicReference<Field> f62597f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        private static boolean f62598g = false;

        public static boolean a() {
            if (f62595d.get() == null) {
                if (f62596e) {
                    return false;
                }
                f62595d.compareAndSet(null, com.xinzhu.haunted.d.f(f62592a, "EXECUTE_TRANSACTION"));
                f62596e = true;
                return f62595d.get() != null;
            }
            return true;
        }

        public static boolean b() {
            if (f62593b.get() == null) {
                if (f62594c) {
                    return false;
                }
                f62593b.compareAndSet(null, com.xinzhu.haunted.d.f(f62592a, "LAUNCH_ACTIVITY"));
                f62594c = true;
                return f62593b.get() != null;
            }
            return true;
        }

        public static boolean c() {
            if (f62597f.get() == null) {
                if (f62598g) {
                    return false;
                }
                f62597f.compareAndSet(null, com.xinzhu.haunted.d.f(f62592a, "SCHEDULE_CRASH"));
                f62598g = true;
                return f62597f.get() != null;
            }
            return true;
        }

        public static int d() {
            if (a()) {
                try {
                    return ((Integer) f62595d.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int e() {
            if (b()) {
                try {
                    return ((Integer) f62593b.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int f() {
            if (c()) {
                try {
                    return ((Integer) f62597f.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static boolean g(int value) {
            if (a()) {
                try {
                    f62595d.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean h(int value) {
            if (b()) {
                try {
                    f62593b.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean i(int value) {
            if (c()) {
                try {
                    f62597f.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }
    }

    public g(Object egoInstance) {
        this.f62565a = egoInstance;
    }

    public static Object D() {
        if (j()) {
            try {
                return f62560v.get().invoke(null, new Object[0]);
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

    public static Application E() {
        if (k()) {
            try {
                return (Application) T.get().invoke(null, new Object[0]);
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

    public static String F() {
        if (l()) {
            try {
                return (String) X.get().invoke(null, new Object[0]);
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

    public static String G() {
        if (m()) {
            try {
                return (String) V.get().invoke(null, new Object[0]);
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

    public static IInterface M() {
        if (s()) {
            try {
                return (IInterface) L.get().invoke(null, new Object[0]);
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

    public static IInterface N() {
        if (t()) {
            try {
                return (IInterface) Z.get().invoke(null, new Object[0]);
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

    public static Object W() {
        if (g()) {
            try {
                return f62544h.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static IInterface X() {
        if (h()) {
            try {
                return (IInterface) f62548j.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static IInterface Y() {
        if (i()) {
            try {
                return (IInterface) f62554p.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean g() {
        if (f62544h.get() == null) {
            if (f62546i) {
                return false;
            }
            f62544h.compareAndSet(null, com.xinzhu.haunted.d.f(f62534c, "sCurrentActivityThread"));
            f62546i = true;
            return f62544h.get() != null;
        }
        return true;
    }

    public static boolean h() {
        if (f62548j.get() == null) {
            if (f62549k) {
                return false;
            }
            f62548j.compareAndSet(null, com.xinzhu.haunted.d.f(f62534c, "sPackageManager"));
            f62549k = true;
            return f62548j.get() != null;
        }
        return true;
    }

    public static boolean i() {
        if (f62554p.get() == null) {
            if (f62555q) {
                return false;
            }
            f62554p.compareAndSet(null, com.xinzhu.haunted.d.f(f62534c, "sPermissionManager"));
            f62555q = true;
            return f62554p.get() != null;
        }
        return true;
    }

    public static boolean j() {
        if (f62560v.get() == null) {
            if (f62561w) {
                return false;
            }
            f62560v.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "currentActivityThread", new Object[0]));
            f62561w = true;
            return f62560v.get() != null;
        }
        return true;
    }

    public static boolean k() {
        if (T.get() == null) {
            if (U) {
                return false;
            }
            T.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "currentApplication", new Object[0]));
            U = true;
            return T.get() != null;
        }
        return true;
    }

    public static boolean l() {
        if (X.get() == null) {
            if (Y) {
                return false;
            }
            X.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "currentOpPackageName", new Object[0]));
            Y = true;
            return X.get() != null;
        }
        return true;
    }

    public static boolean m() {
        if (V.get() == null) {
            if (W) {
                return false;
            }
            V.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "currentPackageName", new Object[0]));
            W = true;
            return V.get() != null;
        }
        return true;
    }

    public static boolean m0(Object value) {
        if (g()) {
            try {
                f62544h.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean n0(IInterface value) {
        if (h()) {
            try {
                f62548j.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean o0(IInterface value) {
        if (i()) {
            try {
                f62554p.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean s() {
        if (L.get() == null) {
            if (M) {
                return false;
            }
            L.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "getPackageManager", new Object[0]));
            M = true;
            return L.get() != null;
        }
        return true;
    }

    public static boolean t() {
        if (Z.get() == null) {
            if (f62531a0) {
                return false;
            }
            Z.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "getPermissionManager", new Object[0]));
            f62531a0 = true;
            return Z.get() != null;
        }
        return true;
    }

    public boolean A(IBinder arg0, List arg1) {
        if (f62564z.get() == null) {
            if (A) {
                return false;
            }
            f62564z.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "performNewIntents", IBinder.class, List.class));
            A = true;
            return f62564z.get() != null;
        }
        return true;
    }

    public boolean B(IBinder arg0, List arg1, boolean arg2) {
        if (B.get() == null) {
            if (C) {
                return false;
            }
            B.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "performNewIntents", IBinder.class, List.class, Boolean.TYPE));
            C = true;
            return B.get() != null;
        }
        return true;
    }

    public boolean C(IBinder arg0, String arg1, int arg2, int arg3, Intent arg4) {
        if (f62562x.get() == null) {
            if (f62563y) {
                return false;
            }
            AtomicReference<Method> atomicReference = f62562x;
            Class<?> cls = f62534c;
            Class cls2 = Integer.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.g(cls, "sendActivityResult", IBinder.class, String.class, cls2, cls2, Intent.class));
            f62563y = true;
            return f62562x.get() != null;
        }
        return true;
    }

    public IBinder H() {
        if (n()) {
            try {
                return (IBinder) N.get().invoke(this.f62565a, new Object[0]);
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

    public float I(String arg0, float arg1) {
        if (o(arg0, arg1)) {
            try {
                return ((Float) f62537d0.get().invoke(this.f62565a, arg0, Float.valueOf(arg1))).floatValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0.0f;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0.0f;
            }
        }
        return 0.0f;
    }

    public int J(String arg0, int arg1) {
        if (p(arg0, arg1)) {
            try {
                return ((Integer) f62533b0.get().invoke(this.f62565a, arg0, Integer.valueOf(arg1))).intValue();
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

    public Object K(IBinder arg0) {
        if (q(arg0)) {
            try {
                return f62541f0.get().invoke(this.f62565a, arg0);
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

    public Object L(ApplicationInfo arg0, Object arg1) {
        if (r(arg0, arg1)) {
            try {
                return f62545h0.get().invoke(this.f62565a, arg0, arg1);
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

    public Object O() {
        if (u()) {
            try {
                return H.get().invoke(this.f62565a, new Object[0]);
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

    public Object P() {
        if (v()) {
            try {
                return J.get().invoke(this.f62565a, new Object[0]);
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

    public ArrayMap<IBinder, Object> Q() {
        if (a()) {
            try {
                return (ArrayMap) f62550l.get().get(this.f62565a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Object R() {
        if (b()) {
            try {
                return f62540f.get().get(this.f62565a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Handler S() {
        if (c()) {
            try {
                return (Handler) f62552n.get().get(this.f62565a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Application T() {
        if (d()) {
            try {
                return (Application) f62556r.get().get(this.f62565a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Instrumentation U() {
        if (e()) {
            try {
                return (Instrumentation) f62558t.get().get(this.f62565a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public Map V() {
        if (f()) {
            try {
                return (Map) f62536d.get().get(this.f62565a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public void Z(IBinder arg0, List arg1) {
        if (w(arg0, arg1)) {
            try {
                D.get().invoke(this.f62565a, arg0, arg1);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public boolean a() {
        if (f62550l.get() == null) {
            if (f62551m) {
                return false;
            }
            f62550l.compareAndSet(null, com.xinzhu.haunted.d.f(f62534c, "mActivities"));
            f62551m = true;
            return f62550l.get() != null;
        }
        return true;
    }

    public void a0(Object arg0, List arg1) {
        if (x(arg0, arg1)) {
            try {
                F.get().invoke(this.f62565a, arg0, arg1);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public boolean b() {
        if (f62540f.get() == null) {
            if (f62542g) {
                return false;
            }
            f62540f.compareAndSet(null, com.xinzhu.haunted.d.f(f62534c, "mBoundApplication"));
            f62542g = true;
            return f62540f.get() != null;
        }
        return true;
    }

    public Object b0(Context arg0, Object arg1, ProviderInfo arg2, boolean arg3, boolean arg4, boolean arg5) {
        if (y(arg0, arg1, arg2, arg3, arg4, arg5)) {
            try {
                return R.get().invoke(this.f62565a, arg0, arg1, arg2, Boolean.valueOf(arg3), Boolean.valueOf(arg4), Boolean.valueOf(arg5));
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

    public boolean c() {
        if (f62552n.get() == null) {
            if (f62553o) {
                return false;
            }
            f62552n.compareAndSet(null, com.xinzhu.haunted.d.f(f62534c, "mH"));
            f62553o = true;
            return f62552n.get() != null;
        }
        return true;
    }

    public Object c0(Context arg0, Object arg1, ProviderInfo arg2, boolean arg3, boolean arg4, boolean arg5) {
        if (z(arg0, arg1, arg2, arg3, arg4, arg5)) {
            try {
                return P.get().invoke(this.f62565a, arg0, arg1, arg2, Boolean.valueOf(arg3), Boolean.valueOf(arg4), Boolean.valueOf(arg5));
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

    public boolean d() {
        if (f62556r.get() == null) {
            if (f62557s) {
                return false;
            }
            f62556r.compareAndSet(null, com.xinzhu.haunted.d.f(f62534c, "mInitialApplication"));
            f62557s = true;
            return f62556r.get() != null;
        }
        return true;
    }

    public void d0(IBinder arg0, List arg1) {
        if (A(arg0, arg1)) {
            try {
                f62564z.get().invoke(this.f62565a, arg0, arg1);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public boolean e() {
        if (f62558t.get() == null) {
            if (f62559u) {
                return false;
            }
            f62558t.compareAndSet(null, com.xinzhu.haunted.d.f(f62534c, "mInstrumentation"));
            f62559u = true;
            return f62558t.get() != null;
        }
        return true;
    }

    public void e0(IBinder arg0, List arg1, boolean arg2) {
        if (B(arg0, arg1, arg2)) {
            try {
                B.get().invoke(this.f62565a, arg0, arg1, Boolean.valueOf(arg2));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public boolean f() {
        if (f62536d.get() == null) {
            if (f62538e) {
                return false;
            }
            f62536d.compareAndSet(null, com.xinzhu.haunted.d.f(f62534c, "mProviderMap"));
            f62538e = true;
            return f62536d.get() != null;
        }
        return true;
    }

    public void f0(IBinder arg0, String arg1, int arg2, int arg3, Intent arg4) {
        if (C(arg0, arg1, arg2, arg3, arg4)) {
            try {
                f62562x.get().invoke(this.f62565a, arg0, arg1, Integer.valueOf(arg2), Integer.valueOf(arg3), arg4);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    public boolean g0(ArrayMap<IBinder, Object> value) {
        if (a()) {
            try {
                f62550l.get().set(this.f62565a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean h0(Object value) {
        if (b()) {
            try {
                f62540f.get().set(this.f62565a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean i0(Handler value) {
        if (c()) {
            try {
                f62552n.get().set(this.f62565a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean j0(Application value) {
        if (d()) {
            try {
                f62556r.get().set(this.f62565a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean k0(Instrumentation value) {
        if (e()) {
            try {
                f62558t.get().set(this.f62565a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean l0(Map value) {
        if (f()) {
            try {
                f62536d.get().set(this.f62565a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean n() {
        if (N.get() == null) {
            if (O) {
                return false;
            }
            N.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "getApplicationThread", new Object[0]));
            O = true;
            return N.get() != null;
        }
        return true;
    }

    public boolean o(String arg0, float arg1) {
        if (f62537d0.get() == null) {
            if (f62539e0) {
                return false;
            }
            f62537d0.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "getFloatCoreSetting", String.class, Float.TYPE));
            f62539e0 = true;
            return f62537d0.get() != null;
        }
        return true;
    }

    public boolean p(String arg0, int arg1) {
        if (f62533b0.get() == null) {
            if (f62535c0) {
                return false;
            }
            f62533b0.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "getIntCoreSetting", String.class, Integer.TYPE));
            f62535c0 = true;
            return f62533b0.get() != null;
        }
        return true;
    }

    public boolean q(IBinder arg0) {
        if (f62541f0.get() == null) {
            if (f62543g0) {
                return false;
            }
            f62541f0.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "getLaunchingActivity", IBinder.class));
            f62543g0 = true;
            return f62541f0.get() != null;
        }
        return true;
    }

    public boolean r(ApplicationInfo arg0, Object arg1) {
        if (f62545h0.get() == null) {
            if (f62547i0) {
                return false;
            }
            f62545h0.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "getPackageInfoNoCheck", ApplicationInfo.class, "android.content.res.CompatibilityInfo"));
            f62547i0 = true;
            return f62545h0.get() != null;
        }
        return true;
    }

    public boolean u() {
        if (H.get() == null) {
            if (I) {
                return false;
            }
            H.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "getSystemContext", new Object[0]));
            I = true;
            return H.get() != null;
        }
        return true;
    }

    public boolean v() {
        if (J.get() == null) {
            if (K) {
                return false;
            }
            J.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "getSystemUiContext", new Object[0]));
            K = true;
            return J.get() != null;
        }
        return true;
    }

    public boolean w(IBinder arg0, List arg1) {
        if (D.get() == null) {
            if (E) {
                return false;
            }
            D.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "handleNewIntent", IBinder.class, List.class));
            E = true;
            return D.get() != null;
        }
        return true;
    }

    public boolean x(Object arg0, List arg1) {
        if (F.get() == null) {
            if (G) {
                return false;
            }
            F.compareAndSet(null, com.xinzhu.haunted.d.g(f62534c, "handleNewIntent", "android.app.ActivityThread$ActivityClientRecord", List.class));
            G = true;
            return F.get() != null;
        }
        return true;
    }

    public boolean y(Context arg0, Object arg1, ProviderInfo arg2, boolean arg3, boolean arg4, boolean arg5) {
        if (R.get() == null) {
            if (S) {
                return false;
            }
            AtomicReference<Method> atomicReference = R;
            Class<?> cls = f62534c;
            Class cls2 = Boolean.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.g(cls, "installProvider", Context.class, "android.app.IActivityManager$ContentProviderHolder", ProviderInfo.class, cls2, cls2, cls2));
            S = true;
            return R.get() != null;
        }
        return true;
    }

    public boolean z(Context arg0, Object arg1, ProviderInfo arg2, boolean arg3, boolean arg4, boolean arg5) {
        if (P.get() == null) {
            if (Q) {
                return false;
            }
            AtomicReference<Method> atomicReference = P;
            Class<?> cls = f62534c;
            Class cls2 = Boolean.TYPE;
            atomicReference.compareAndSet(null, com.xinzhu.haunted.d.g(cls, "installProvider", Context.class, "android.app.ContentProviderHolder", ProviderInfo.class, cls2, cls2, cls2));
            Q = true;
            return P.get() != null;
        }
        return true;
    }

    /* compiled from: HtActivityThread.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f62566b = com.xinzhu.haunted.d.b("android.app.ActivityThread$ActivityClientRecord");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f62567c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f62568d = false;

        /* renamed from: e  reason: collision with root package name */
        private static AtomicReference<Field> f62569e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        private static boolean f62570f = false;

        /* renamed from: g  reason: collision with root package name */
        private static AtomicReference<Field> f62571g = new AtomicReference<>();

        /* renamed from: h  reason: collision with root package name */
        private static boolean f62572h = false;

        /* renamed from: i  reason: collision with root package name */
        private static AtomicReference<Field> f62573i = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        private static boolean f62574j = false;

        /* renamed from: k  reason: collision with root package name */
        private static AtomicReference<Field> f62575k = new AtomicReference<>();

        /* renamed from: l  reason: collision with root package name */
        private static boolean f62576l = false;

        /* renamed from: m  reason: collision with root package name */
        private static AtomicReference<Field> f62577m = new AtomicReference<>();

        /* renamed from: n  reason: collision with root package name */
        private static boolean f62578n = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f62579a;

        public a(Object egoInstance) {
            this.f62579a = egoInstance;
        }

        public boolean a() {
            if (f62567c.get() == null) {
                if (f62568d) {
                    return false;
                }
                f62567c.compareAndSet(null, com.xinzhu.haunted.d.f(f62566b, TTDownloadField.TT_ACTIVITY));
                f62568d = true;
                return f62567c.get() != null;
            }
            return true;
        }

        public boolean b() {
            if (f62573i.get() == null) {
                if (f62574j) {
                    return false;
                }
                f62573i.compareAndSet(null, com.xinzhu.haunted.d.f(f62566b, "activityInfo"));
                f62574j = true;
                return f62573i.get() != null;
            }
            return true;
        }

        public boolean c() {
            if (f62575k.get() == null) {
                if (f62576l) {
                    return false;
                }
                f62575k.compareAndSet(null, com.xinzhu.haunted.d.f(f62566b, "compatInfo"));
                f62576l = true;
                return f62575k.get() != null;
            }
            return true;
        }

        public boolean d() {
            if (f62569e.get() == null) {
                if (f62570f) {
                    return false;
                }
                f62569e.compareAndSet(null, com.xinzhu.haunted.d.f(f62566b, "intent"));
                f62570f = true;
                return f62569e.get() != null;
            }
            return true;
        }

        public boolean e() {
            if (f62577m.get() == null) {
                if (f62578n) {
                    return false;
                }
                f62577m.compareAndSet(null, com.xinzhu.haunted.d.f(f62566b, "packageInfo"));
                f62578n = true;
                return f62577m.get() != null;
            }
            return true;
        }

        public boolean f() {
            if (f62571g.get() == null) {
                if (f62572h) {
                    return false;
                }
                f62571g.compareAndSet(null, com.xinzhu.haunted.d.f(f62566b, "token"));
                f62572h = true;
                return f62571g.get() != null;
            }
            return true;
        }

        public Activity g() {
            if (a()) {
                try {
                    return (Activity) f62567c.get().get(this.f62579a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public ActivityInfo h() {
            if (b()) {
                try {
                    return (ActivityInfo) f62573i.get().get(this.f62579a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public Object i() {
            if (c()) {
                try {
                    return f62575k.get().get(this.f62579a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public Intent j() {
            if (d()) {
                try {
                    return (Intent) f62569e.get().get(this.f62579a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public Object k() {
            if (e()) {
                try {
                    return f62577m.get().get(this.f62579a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public IBinder l() {
            if (f()) {
                try {
                    return (IBinder) f62571g.get().get(this.f62579a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean m(Activity value) {
            if (a()) {
                try {
                    f62567c.get().set(this.f62579a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean n(ActivityInfo value) {
            if (b()) {
                try {
                    f62573i.get().set(this.f62579a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean o(Object value) {
            if (c()) {
                try {
                    f62575k.get().set(this.f62579a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean p(Intent value) {
            if (d()) {
                try {
                    f62569e.get().set(this.f62579a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean q(Object value) {
            if (e()) {
                try {
                    f62577m.get().set(this.f62579a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean r(IBinder value) {
            if (f()) {
                try {
                    f62571g.get().set(this.f62579a, value);
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

    /* compiled from: HtActivityThread.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f62580b = com.xinzhu.haunted.d.b("android.app.ActivityThread$AppBindData");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f62581c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f62582d = false;

        /* renamed from: e  reason: collision with root package name */
        private static AtomicReference<Field> f62583e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        private static boolean f62584f = false;

        /* renamed from: g  reason: collision with root package name */
        private static AtomicReference<Field> f62585g = new AtomicReference<>();

        /* renamed from: h  reason: collision with root package name */
        private static boolean f62586h = false;

        /* renamed from: i  reason: collision with root package name */
        private static AtomicReference<Field> f62587i = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        private static boolean f62588j = false;

        /* renamed from: k  reason: collision with root package name */
        private static AtomicReference<Field> f62589k = new AtomicReference<>();

        /* renamed from: l  reason: collision with root package name */
        private static boolean f62590l = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f62591a;

        public b(Object egoInstance) {
            this.f62591a = egoInstance;
        }

        public boolean a() {
            if (f62583e.get() == null) {
                if (f62584f) {
                    return false;
                }
                f62583e.compareAndSet(null, com.xinzhu.haunted.d.f(f62580b, "appInfo"));
                f62584f = true;
                return f62583e.get() != null;
            }
            return true;
        }

        public boolean b() {
            if (f62585g.get() == null) {
                if (f62586h) {
                    return false;
                }
                f62585g.compareAndSet(null, com.xinzhu.haunted.d.f(f62580b, PapayPayDetialActivity_.f34856k));
                f62586h = true;
                return f62585g.get() != null;
            }
            return true;
        }

        public boolean c() {
            if (f62581c.get() == null) {
                if (f62582d) {
                    return false;
                }
                f62581c.compareAndSet(null, com.xinzhu.haunted.d.f(f62580b, "instrumentationName"));
                f62582d = true;
                return f62581c.get() != null;
            }
            return true;
        }

        public boolean d() {
            if (f62587i.get() == null) {
                if (f62588j) {
                    return false;
                }
                f62587i.compareAndSet(null, com.xinzhu.haunted.d.f(f62580b, "processName"));
                f62588j = true;
                return f62587i.get() != null;
            }
            return true;
        }

        public boolean e() {
            if (f62589k.get() == null) {
                if (f62590l) {
                    return false;
                }
                f62589k.compareAndSet(null, com.xinzhu.haunted.d.f(f62580b, "providers"));
                f62590l = true;
                return f62589k.get() != null;
            }
            return true;
        }

        public ApplicationInfo f() {
            if (a()) {
                try {
                    return (ApplicationInfo) f62583e.get().get(this.f62591a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public Object g() {
            if (b()) {
                try {
                    return f62585g.get().get(this.f62591a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public ComponentName h() {
            if (c()) {
                try {
                    return (ComponentName) f62581c.get().get(this.f62591a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public String i() {
            if (d()) {
                try {
                    return (String) f62587i.get().get(this.f62591a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public List<ProviderInfo> j() {
            if (e()) {
                try {
                    return (List) f62589k.get().get(this.f62591a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean k(ApplicationInfo value) {
            if (a()) {
                try {
                    f62583e.get().set(this.f62591a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean l(Object value) {
            if (b()) {
                try {
                    f62585g.get().set(this.f62591a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean m(ComponentName value) {
            if (c()) {
                try {
                    f62581c.get().set(this.f62591a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean n(String value) {
            if (d()) {
                try {
                    f62587i.get().set(this.f62591a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean o(List<ProviderInfo> value) {
            if (e()) {
                try {
                    f62589k.get().set(this.f62591a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        private b() {
        }
    }

    /* compiled from: HtActivityThread.java */
    /* loaded from: classes3.dex */
    public static final class d {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f62599b = com.xinzhu.haunted.d.b("android.app.ActivityThread$ProviderClientRecord");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f62600c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f62601d = false;

        /* renamed from: e  reason: collision with root package name */
        private static AtomicReference<Field> f62602e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        private static boolean f62603f = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f62604a;

        public d(Object egoInstance) {
            this.f62604a = egoInstance;
        }

        public boolean a() {
            if (f62600c.get() == null) {
                if (f62601d) {
                    return false;
                }
                f62600c.compareAndSet(null, com.xinzhu.haunted.d.f(f62599b, "mNames"));
                f62601d = true;
                return f62600c.get() != null;
            }
            return true;
        }

        public boolean b() {
            if (f62602e.get() == null) {
                if (f62603f) {
                    return false;
                }
                f62602e.compareAndSet(null, com.xinzhu.haunted.d.f(f62599b, "mProvider"));
                f62603f = true;
                return f62602e.get() != null;
            }
            return true;
        }

        public String[] c() {
            if (a()) {
                try {
                    return (String[]) f62600c.get().get(this.f62604a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public IInterface d() {
            if (b()) {
                try {
                    return (IInterface) f62602e.get().get(this.f62604a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean e(String[] value) {
            if (a()) {
                try {
                    f62600c.get().set(this.f62604a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean f(IInterface value) {
            if (b()) {
                try {
                    f62602e.get().set(this.f62604a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        private d() {
        }
    }

    private g() {
    }
}
