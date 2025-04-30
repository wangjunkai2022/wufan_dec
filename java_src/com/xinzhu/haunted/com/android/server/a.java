package com.xinzhu.haunted.com.android.server;

import android.util.ArrayMap;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSystemConfig.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63883b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63884c = d.b("com.android.server.SystemConfig");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63885d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63886e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63887f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63888g = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63889a;

    public a(Object egoInstance) {
        this.f63889a = egoInstance;
    }

    public static boolean a() {
        if (f63885d.get() == null) {
            if (f63886e) {
                return false;
            }
            f63885d.compareAndSet(null, d.g(f63884c, "getInstance", new Object[0]));
            f63886e = true;
            return f63885d.get() != null;
        }
        return true;
    }

    public static Object c() {
        if (a()) {
            try {
                return f63885d.get().invoke(null, new Object[0]);
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

    public boolean b() {
        if (f63887f.get() == null) {
            if (f63888g) {
                return false;
            }
            f63887f.compareAndSet(null, d.g(f63884c, "getSharedLibraries", new Object[0]));
            f63888g = true;
            return f63887f.get() != null;
        }
        return true;
    }

    public ArrayMap<String, Object> d() {
        if (b()) {
            try {
                return (ArrayMap) f63887f.get().invoke(this.f63889a, new Object[0]);
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

    /* compiled from: HtSystemConfig.java */
    /* renamed from: com.xinzhu.haunted.com.android.server.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0398a {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f63890b = d.b("com.android.server.SystemConfig$SharedLibraryEntry");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f63891c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f63892d = false;

        /* renamed from: e  reason: collision with root package name */
        private static AtomicReference<Field> f63893e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        private static boolean f63894f = false;

        /* renamed from: g  reason: collision with root package name */
        private static AtomicReference<Field> f63895g = new AtomicReference<>();

        /* renamed from: h  reason: collision with root package name */
        private static boolean f63896h = false;

        /* renamed from: i  reason: collision with root package name */
        private static AtomicReference<Field> f63897i = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        private static boolean f63898j = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f63899a;

        public C0398a(Object egoInstance) {
            this.f63899a = egoInstance;
        }

        public boolean a() {
            if (f63895g.get() == null) {
                if (f63896h) {
                    return false;
                }
                f63895g.compareAndSet(null, d.f(f63890b, "dependencies"));
                f63896h = true;
                return f63895g.get() != null;
            }
            return true;
        }

        public boolean b() {
            if (f63893e.get() == null) {
                if (f63894f) {
                    return false;
                }
                f63893e.compareAndSet(null, d.f(f63890b, "filename"));
                f63894f = true;
                return f63893e.get() != null;
            }
            return true;
        }

        public boolean c() {
            if (f63897i.get() == null) {
                if (f63898j) {
                    return false;
                }
                f63897i.compareAndSet(null, d.f(f63890b, "isNative"));
                f63898j = true;
                return f63897i.get() != null;
            }
            return true;
        }

        public boolean d() {
            if (f63891c.get() == null) {
                if (f63892d) {
                    return false;
                }
                f63891c.compareAndSet(null, d.f(f63890b, "name"));
                f63892d = true;
                return f63891c.get() != null;
            }
            return true;
        }

        public String[] e() {
            if (a()) {
                try {
                    return (String[]) f63895g.get().get(this.f63899a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public String f() {
            if (b()) {
                try {
                    return (String) f63893e.get().get(this.f63899a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean g() {
            if (c()) {
                try {
                    return ((Boolean) f63897i.get().get(this.f63899a)).booleanValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public String h() {
            if (d()) {
                try {
                    return (String) f63891c.get().get(this.f63899a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean i(String[] value) {
            if (a()) {
                try {
                    f63895g.get().set(this.f63899a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean j(String value) {
            if (b()) {
                try {
                    f63893e.get().set(this.f63899a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean k(boolean value) {
            if (c()) {
                try {
                    f63897i.get().set(this.f63899a, Boolean.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean l(String value) {
            if (d()) {
                try {
                    f63891c.get().set(this.f63899a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        private C0398a() {
        }
    }

    private a() {
    }
}
