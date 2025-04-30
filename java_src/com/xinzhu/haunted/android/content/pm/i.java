package com.xinzhu.haunted.android.content.pm;

import android.content.pm.Signature;
import android.util.ArraySet;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.PublicKey;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtPackageParser.java */
/* loaded from: classes3.dex */
public final class i {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63096b = "i";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63097c = com.xinzhu.haunted.d.b("android.content.pm.PackageParser");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63098d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63099e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f63100f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63101g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Method> f63102h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63103i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Method> f63104j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f63105k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Method> f63106l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f63107m = false;

    /* renamed from: n  reason: collision with root package name */
    private static AtomicReference<Constructor> f63108n = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private static boolean f63109o = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63110a;

    public i(Object egoInstance) {
        this.f63110a = egoInstance;
    }

    public static boolean a() {
        if (f63108n.get() == null) {
            if (f63109o) {
                return false;
            }
            f63108n.compareAndSet(null, com.xinzhu.haunted.d.d(f63097c, "HtPackageParser", new Object[0]));
            f63109o = true;
            return f63108n.get() != null;
        }
        return true;
    }

    public static boolean b(Object arg0, int arg1) {
        if (f63100f.get() == null) {
            if (f63101g) {
                return false;
            }
            f63100f.compareAndSet(null, com.xinzhu.haunted.d.g(f63097c, "collectCertificates", "android.content.pm.PackageParser$Package", Integer.TYPE));
            f63101g = true;
            return f63100f.get() != null;
        }
        return true;
    }

    public static boolean c(Object arg0, boolean arg1) {
        if (f63102h.get() == null) {
            if (f63103i) {
                return false;
            }
            f63102h.compareAndSet(null, com.xinzhu.haunted.d.g(f63097c, "collectCertificates", "android.content.pm.PackageParser$Package", Boolean.TYPE));
            f63103i = true;
            return f63102h.get() != null;
        }
        return true;
    }

    public static void g(Object arg0, int arg1) throws Throwable {
        if (b(arg0, arg1)) {
            try {
                f63100f.get().invoke(null, arg0, Integer.valueOf(arg1));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                if (e5.getCause() != null) {
                    throw e5.getCause();
                }
                throw e5;
            }
        }
    }

    public static void h(Object arg0, boolean arg1) throws Throwable {
        if (c(arg0, arg1)) {
            try {
                f63102h.get().invoke(null, arg0, Boolean.valueOf(arg1));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                if (e5.getCause() != null) {
                    throw e5.getCause();
                }
                throw e5;
            }
        }
    }

    public static i k() {
        if (a()) {
            try {
                i iVar = new i();
                iVar.f63110a = f63108n.get().newInstance(new Object[0]);
                return iVar;
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

    public boolean d(Object arg0, int arg1) {
        if (f63104j.get() == null) {
            if (f63105k) {
                return false;
            }
            f63104j.compareAndSet(null, com.xinzhu.haunted.d.g(f63097c, "collectCertificates", "android.content.pm.PackageParser$Package", Integer.TYPE));
            f63105k = true;
            return f63104j.get() != null;
        }
        return true;
    }

    public boolean e(Object arg0, boolean arg1) {
        if (f63106l.get() == null) {
            if (f63107m) {
                return false;
            }
            f63106l.compareAndSet(null, com.xinzhu.haunted.d.g(f63097c, "collectCertificates", "android.content.pm.PackageParser$Package", Boolean.TYPE));
            f63107m = true;
            return f63106l.get() != null;
        }
        return true;
    }

    public boolean f(File arg0, int arg1) {
        if (f63098d.get() == null) {
            if (f63099e) {
                return false;
            }
            f63098d.compareAndSet(null, com.xinzhu.haunted.d.g(f63097c, "parsePackage", File.class, Integer.TYPE));
            f63099e = true;
            return f63098d.get() != null;
        }
        return true;
    }

    public void i(Object arg0, int arg1) throws Throwable {
        if (d(arg0, arg1)) {
            try {
                f63104j.get().invoke(this.f63110a, arg0, Integer.valueOf(arg1));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                if (e5.getCause() != null) {
                    throw e5.getCause();
                }
                throw e5;
            }
        }
    }

    public void j(Object arg0, boolean arg1) throws Throwable {
        if (e(arg0, arg1)) {
            try {
                f63106l.get().invoke(this.f63110a, arg0, Boolean.valueOf(arg1));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                if (e5.getCause() != null) {
                    throw e5.getCause();
                }
                throw e5;
            }
        }
    }

    public Object l(File arg0, int arg1) {
        if (f(arg0, arg1)) {
            try {
                return f63098d.get().invoke(this.f63110a, arg0, Integer.valueOf(arg1));
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

    /* compiled from: HtPackageParser.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static Class<?> f63111b = com.xinzhu.haunted.d.b("android.content.pm.PackageParser$SigningDetails");

        /* renamed from: c  reason: collision with root package name */
        private static AtomicReference<Field> f63112c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        private static boolean f63113d = false;

        /* renamed from: e  reason: collision with root package name */
        private static AtomicReference<Field> f63114e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        private static boolean f63115f = false;

        /* renamed from: g  reason: collision with root package name */
        private static AtomicReference<Field> f63116g = new AtomicReference<>();

        /* renamed from: h  reason: collision with root package name */
        private static boolean f63117h = false;

        /* renamed from: i  reason: collision with root package name */
        private static AtomicReference<Field> f63118i = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        private static boolean f63119j = false;

        /* renamed from: k  reason: collision with root package name */
        private static AtomicReference<Field> f63120k = new AtomicReference<>();

        /* renamed from: l  reason: collision with root package name */
        private static boolean f63121l = false;

        /* renamed from: m  reason: collision with root package name */
        private static AtomicReference<Field> f63122m = new AtomicReference<>();

        /* renamed from: n  reason: collision with root package name */
        private static boolean f63123n = false;

        /* renamed from: o  reason: collision with root package name */
        private static AtomicReference<Method> f63124o = new AtomicReference<>();

        /* renamed from: p  reason: collision with root package name */
        private static boolean f63125p = false;

        /* renamed from: q  reason: collision with root package name */
        private static AtomicReference<Method> f63126q = new AtomicReference<>();

        /* renamed from: r  reason: collision with root package name */
        private static boolean f63127r = false;

        /* renamed from: s  reason: collision with root package name */
        private static AtomicReference<Constructor> f63128s = new AtomicReference<>();

        /* renamed from: t  reason: collision with root package name */
        private static boolean f63129t = false;

        /* renamed from: u  reason: collision with root package name */
        private static AtomicReference<Constructor> f63130u = new AtomicReference<>();

        /* renamed from: v  reason: collision with root package name */
        private static boolean f63131v = false;

        /* renamed from: w  reason: collision with root package name */
        private static AtomicReference<Constructor> f63132w = new AtomicReference<>();

        /* renamed from: x  reason: collision with root package name */
        private static boolean f63133x = false;

        /* renamed from: a  reason: collision with root package name */
        public Object f63134a;

        public a(Object egoInstance) {
            this.f63134a = egoInstance;
        }

        public static boolean a(Signature[] arg0, int arg1) {
            if (f63128s.get() == null) {
                if (f63129t) {
                    return false;
                }
                f63128s.compareAndSet(null, com.xinzhu.haunted.d.d(f63111b, "HtSigningDetails", Signature[].class, Integer.TYPE));
                f63129t = true;
                return f63128s.get() != null;
            }
            return true;
        }

        public static boolean b(Signature[] arg0, int arg1, Signature[] arg2) {
            if (f63130u.get() == null) {
                if (f63131v) {
                    return false;
                }
                f63130u.compareAndSet(null, com.xinzhu.haunted.d.d(f63111b, "HtSigningDetails", Signature[].class, Integer.TYPE, Signature[].class));
                f63131v = true;
                return f63130u.get() != null;
            }
            return true;
        }

        public static boolean c(Object arg0) {
            if (f63132w.get() == null) {
                if (f63133x) {
                    return false;
                }
                f63132w.compareAndSet(null, com.xinzhu.haunted.d.d(f63111b, "HtSigningDetails", "android.content.pm.PackageParser$SigningDetails"));
                f63133x = true;
                return f63132w.get() != null;
            }
            return true;
        }

        public static boolean d() {
            if (f63112c.get() == null) {
                if (f63113d) {
                    return false;
                }
                f63112c.compareAndSet(null, com.xinzhu.haunted.d.f(f63111b, "UNKNOWN"));
                f63113d = true;
                return f63112c.get() != null;
            }
            return true;
        }

        public static a l(Object arg0) {
            if (c(arg0)) {
                try {
                    a aVar = new a();
                    aVar.f63134a = f63132w.get().newInstance(arg0);
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

        public static a m(Signature[] arg0, int arg1) {
            if (a(arg0, arg1)) {
                try {
                    a aVar = new a();
                    aVar.f63134a = f63128s.get().newInstance(arg0, Integer.valueOf(arg1));
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

        public static a n(Signature[] arg0, int arg1, Signature[] arg2) {
            if (b(arg0, arg1, arg2)) {
                try {
                    a aVar = new a();
                    aVar.f63134a = f63130u.get().newInstance(arg0, Integer.valueOf(arg1), arg2);
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

        public static Object o() {
            if (d()) {
                try {
                    return f63112c.get().get(null);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public static boolean w(Object value) {
            if (d()) {
                try {
                    f63112c.get().set(null, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean A(int value) {
            if (h()) {
                try {
                    f63116g.get().set(this.f63134a, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean B(Signature[] value) {
            if (i()) {
                try {
                    f63114e.get().set(this.f63134a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean e() {
            if (f63120k.get() == null) {
                if (f63121l) {
                    return false;
                }
                f63120k.compareAndSet(null, com.xinzhu.haunted.d.f(f63111b, "pastSigningCertificates"));
                f63121l = true;
                return f63120k.get() != null;
            }
            return true;
        }

        public boolean f() {
            if (f63122m.get() == null) {
                if (f63123n) {
                    return false;
                }
                f63122m.compareAndSet(null, com.xinzhu.haunted.d.f(f63111b, "pastSigningCertificatesFlags"));
                f63123n = true;
                return f63122m.get() != null;
            }
            return true;
        }

        public boolean g() {
            if (f63118i.get() == null) {
                if (f63119j) {
                    return false;
                }
                f63118i.compareAndSet(null, com.xinzhu.haunted.d.f(f63111b, "publicKeys"));
                f63119j = true;
                return f63118i.get() != null;
            }
            return true;
        }

        public boolean h() {
            if (f63116g.get() == null) {
                if (f63117h) {
                    return false;
                }
                f63116g.compareAndSet(null, com.xinzhu.haunted.d.f(f63111b, "signatureSchemeVersion"));
                f63117h = true;
                return f63116g.get() != null;
            }
            return true;
        }

        public boolean i() {
            if (f63114e.get() == null) {
                if (f63115f) {
                    return false;
                }
                f63114e.compareAndSet(null, com.xinzhu.haunted.d.f(f63111b, "signatures"));
                f63115f = true;
                return f63114e.get() != null;
            }
            return true;
        }

        public boolean j() {
            if (f63124o.get() == null) {
                if (f63125p) {
                    return false;
                }
                f63124o.compareAndSet(null, com.xinzhu.haunted.d.g(f63111b, "hasPastSigningCertificates", new Object[0]));
                f63125p = true;
                return f63124o.get() != null;
            }
            return true;
        }

        public boolean k() {
            if (f63126q.get() == null) {
                if (f63127r) {
                    return false;
                }
                f63126q.compareAndSet(null, com.xinzhu.haunted.d.g(f63111b, "hasSignatures", new Object[0]));
                f63127r = true;
                return f63126q.get() != null;
            }
            return true;
        }

        public Signature[] p() {
            if (e()) {
                try {
                    return (Signature[]) f63120k.get().get(this.f63134a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public int[] q() {
            if (f()) {
                try {
                    return (int[]) f63122m.get().get(this.f63134a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public ArraySet<PublicKey> r() {
            if (g()) {
                try {
                    return (ArraySet) f63118i.get().get(this.f63134a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public int s() {
            if (h()) {
                try {
                    return ((Integer) f63116g.get().get(this.f63134a)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public Signature[] t() {
            if (i()) {
                try {
                    return (Signature[]) f63114e.get().get(this.f63134a);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public boolean u() {
            if (j()) {
                try {
                    return ((Boolean) f63124o.get().invoke(this.f63134a, new Object[0])).booleanValue();
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

        public boolean v() {
            if (k()) {
                try {
                    return ((Boolean) f63126q.get().invoke(this.f63134a, new Object[0])).booleanValue();
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

        public boolean x(Signature[] value) {
            if (e()) {
                try {
                    f63120k.get().set(this.f63134a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean y(int[] value) {
            if (f()) {
                try {
                    f63122m.get().set(this.f63134a, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public boolean z(ArraySet<PublicKey> value) {
            if (g()) {
                try {
                    f63118i.get().set(this.f63134a, value);
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

    private i() {
    }
}
