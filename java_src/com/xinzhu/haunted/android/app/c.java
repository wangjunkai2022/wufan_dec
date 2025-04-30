package com.xinzhu.haunted.android.app;

import android.app.ActivityManager;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtActivityManager.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62452a = "c";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f62453b = com.xinzhu.haunted.d.a(ActivityManager.class);

    /* renamed from: c  reason: collision with root package name */
    private static AtomicReference<Field> f62454c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f62455d = false;

    public static boolean a() {
        if (f62454c.get() == null) {
            if (f62455d) {
                return false;
            }
            f62454c.compareAndSet(null, com.xinzhu.haunted.d.f(f62453b, "START_INTENT_NOT_RESOLVED"));
            f62455d = true;
            return f62454c.get() != null;
        }
        return true;
    }

    public static int b() {
        if (a()) {
            try {
                return ((Integer) f62454c.get().get(null)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static boolean c(int value) {
        if (a()) {
            try {
                f62454c.get().set(null, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* compiled from: HtActivityManager.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f62456b = com.xinzhu.haunted.d.b("android.app.ActivityManager$PendingIntentInfo");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f62457c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f62458d = false;

        /* renamed from: e  reason: collision with root package name */
        private static AtomicReference<Field> f62459e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        private static boolean f62460f = false;

        /* renamed from: g  reason: collision with root package name */
        private static AtomicReference<Field> f62461g = new AtomicReference<>();

        /* renamed from: h  reason: collision with root package name */
        private static boolean f62462h = false;

        /* renamed from: i  reason: collision with root package name */
        private static AtomicReference<Field> f62463i = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        private static boolean f62464j = false;

        /* renamed from: k  reason: collision with root package name */
        private static AtomicReference<Constructor> f62465k = new AtomicReference<>();

        /* renamed from: l  reason: collision with root package name */
        private static boolean f62466l = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f62467a;

        public a(Object egoInstance) {
            this.f62467a = egoInstance;
        }

        public static boolean a(String arg0, int arg1, boolean arg2, int arg3) {
            if (f62465k.get() == null) {
                if (f62466l) {
                    return false;
                }
                AtomicReference<Constructor> atomicReference = f62465k;
                Class<?> cls = f62456b;
                Class cls2 = Integer.TYPE;
                atomicReference.compareAndSet(null, com.xinzhu.haunted.d.d(cls, "HtPendingIntentInfo", String.class, cls2, Boolean.TYPE, cls2));
                f62466l = true;
                return f62465k.get() != null;
            }
            return true;
        }

        public static a f(String arg0, int arg1, boolean arg2, int arg3) {
            if (a(arg0, arg1, arg2, arg3)) {
                try {
                    a aVar = new a();
                    aVar.f62467a = f62465k.get().newInstance(arg0, Integer.valueOf(arg1), Boolean.valueOf(arg2), Integer.valueOf(arg3));
                    return aVar;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                } catch (InstantiationException e5) {
                    e5.printStackTrace();
                    return null;
                } catch (InvocationTargetException e6) {
                    e6.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean b() {
            if (f62457c.get() == null) {
                if (f62458d) {
                    return false;
                }
                f62457c.compareAndSet(null, com.xinzhu.haunted.d.f(f62456b, "mCreatorPackage"));
                f62458d = true;
                return f62457c.get() != null;
            }
            return true;
        }

        public boolean c() {
            if (f62459e.get() == null) {
                if (f62460f) {
                    return false;
                }
                f62459e.compareAndSet(null, com.xinzhu.haunted.d.f(f62456b, "mCreatorUid"));
                f62460f = true;
                return f62459e.get() != null;
            }
            return true;
        }

        public boolean d() {
            if (f62461g.get() == null) {
                if (f62462h) {
                    return false;
                }
                f62461g.compareAndSet(null, com.xinzhu.haunted.d.f(f62456b, "mImmutable"));
                f62462h = true;
                return f62461g.get() != null;
            }
            return true;
        }

        public boolean e() {
            if (f62463i.get() == null) {
                if (f62464j) {
                    return false;
                }
                f62463i.compareAndSet(null, com.xinzhu.haunted.d.f(f62456b, "mIntentSenderType"));
                f62464j = true;
                return f62463i.get() != null;
            }
            return true;
        }

        public String g() {
            if (b()) {
                try {
                    return (String) f62457c.get().get(this.f62467a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public int h() {
            if (c()) {
                try {
                    return ((Integer) f62459e.get().get(this.f62467a)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public boolean i() {
            if (d()) {
                try {
                    return ((Boolean) f62461g.get().get(this.f62467a)).booleanValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public int j() {
            if (e()) {
                try {
                    return ((Integer) f62463i.get().get(this.f62467a)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public boolean k(String value) {
            if (b()) {
                try {
                    f62457c.get().set(this.f62467a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean l(int value) {
            if (c()) {
                try {
                    f62459e.get().set(this.f62467a, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean m(boolean value) {
            if (d()) {
                try {
                    f62461g.get().set(this.f62467a, Boolean.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean n(int value) {
            if (e()) {
                try {
                    f62463i.get().set(this.f62467a, Integer.valueOf(value));
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
}
