package com.xinzhu.haunted.android.provider;

import android.os.IInterface;
import android.provider.Settings;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSettings.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63570a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63571b = com.xinzhu.haunted.d.a(Settings.class);

    /* compiled from: HtSettings.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63576a = com.xinzhu.haunted.d.b("android.provider.Settings$Global");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Field> f63577b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63578c = false;

        public static boolean a() {
            if (f63577b.get() == null) {
                if (f63578c) {
                    return false;
                }
                f63577b.compareAndSet(null, com.xinzhu.haunted.d.f(f63576a, "sNameValueCache"));
                f63578c = true;
                return f63577b.get() != null;
            }
            return true;
        }

        public static Object b() {
            if (a()) {
                try {
                    return f63577b.get().get(null);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public static boolean c(Object value) {
            if (a()) {
                try {
                    f63577b.get().set(null, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }
    }

    /* compiled from: HtSettings.java */
    /* loaded from: classes3.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63585a = com.xinzhu.haunted.d.b("android.provider.Settings$Secure");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Field> f63586b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63587c = false;

        public static boolean a() {
            if (f63586b.get() == null) {
                if (f63587c) {
                    return false;
                }
                f63586b.compareAndSet(null, com.xinzhu.haunted.d.f(f63585a, "sNameValueCache"));
                f63587c = true;
                return f63586b.get() != null;
            }
            return true;
        }

        public static Object b() {
            if (a()) {
                try {
                    return f63586b.get().get(null);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public static boolean c(Object value) {
            if (a()) {
                try {
                    f63586b.get().set(null, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }
    }

    /* compiled from: HtSettings.java */
    /* loaded from: classes3.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63588a = com.xinzhu.haunted.d.b("android.provider.Settings$System");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Field> f63589b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63590c = false;

        public static boolean a() {
            if (f63589b.get() == null) {
                if (f63590c) {
                    return false;
                }
                f63589b.compareAndSet(null, com.xinzhu.haunted.d.f(f63588a, "sNameValueCache"));
                f63590c = true;
                return f63589b.get() != null;
            }
            return true;
        }

        public static Object b() {
            if (a()) {
                try {
                    return f63589b.get().get(null);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public static boolean c(Object value) {
            if (a()) {
                try {
                    f63589b.get().set(null, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }
    }

    /* compiled from: HtSettings.java */
    /* renamed from: com.xinzhu.haunted.android.provider.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0384a {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f63572b = com.xinzhu.haunted.d.b("android.provider.Settings$ContentProviderHolder");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f63573c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f63574d = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f63575a;

        public C0384a(Object egoInstance) {
            this.f63575a = egoInstance;
        }

        public boolean a() {
            if (f63573c.get() == null) {
                if (f63574d) {
                    return false;
                }
                f63573c.compareAndSet(null, com.xinzhu.haunted.d.f(f63572b, "mContentProvider"));
                f63574d = true;
                return f63573c.get() != null;
            }
            return true;
        }

        public IInterface b() {
            if (a()) {
                try {
                    return (IInterface) f63573c.get().get(this.f63575a);
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
                    f63573c.get().set(this.f63575a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        private C0384a() {
        }
    }

    /* compiled from: HtSettings.java */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f63579b = com.xinzhu.haunted.d.b("android.provider.Settings$NameValueCache");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f63580c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f63581d = false;

        /* renamed from: e  reason: collision with root package name */
        private static AtomicReference<Field> f63582e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        private static boolean f63583f = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f63584a;

        public c(Object egoInstance) {
            this.f63584a = egoInstance;
        }

        public boolean a() {
            if (f63580c.get() == null) {
                if (f63581d) {
                    return false;
                }
                f63580c.compareAndSet(null, com.xinzhu.haunted.d.f(f63579b, "mContentProvider"));
                f63581d = true;
                return f63580c.get() != null;
            }
            return true;
        }

        public boolean b() {
            if (f63582e.get() == null) {
                if (f63583f) {
                    return false;
                }
                f63582e.compareAndSet(null, com.xinzhu.haunted.d.f(f63579b, "mProviderHolder"));
                f63583f = true;
                return f63582e.get() != null;
            }
            return true;
        }

        public Object c() {
            if (a()) {
                try {
                    return f63580c.get().get(this.f63584a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public Object d() {
            if (b()) {
                try {
                    return f63582e.get().get(this.f63584a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean e(Object value) {
            if (a()) {
                try {
                    f63580c.get().set(this.f63584a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean f(Object value) {
            if (b()) {
                try {
                    f63582e.get().set(this.f63584a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        private c() {
        }
    }
}
