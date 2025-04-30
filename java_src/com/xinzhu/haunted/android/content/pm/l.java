package com.xinzhu.haunted.android.content.pm;

import android.content.pm.Signature;
import android.util.ArraySet;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.security.PublicKey;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtSigningDetails.java */
/* loaded from: classes3.dex */
public final class l {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63151b = "l";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63152c = com.xinzhu.haunted.d.b("android.content.pm.SigningDetails");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63153d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63154e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f63155f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63156g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Field> f63157h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63158i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Field> f63159j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f63160k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Field> f63161l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f63162m = false;

    /* renamed from: n  reason: collision with root package name */
    private static AtomicReference<Constructor> f63163n = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private static boolean f63164o = false;

    /* renamed from: p  reason: collision with root package name */
    private static AtomicReference<Constructor> f63165p = new AtomicReference<>();

    /* renamed from: q  reason: collision with root package name */
    private static boolean f63166q = false;

    /* renamed from: r  reason: collision with root package name */
    private static AtomicReference<Constructor> f63167r = new AtomicReference<>();

    /* renamed from: s  reason: collision with root package name */
    private static boolean f63168s = false;

    /* renamed from: t  reason: collision with root package name */
    private static AtomicReference<Constructor> f63169t = new AtomicReference<>();

    /* renamed from: u  reason: collision with root package name */
    private static boolean f63170u = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63171a;

    public l(Object egoInstance) {
        this.f63171a = egoInstance;
    }

    public static boolean a(Signature[] arg0, int arg1) {
        if (f63163n.get() == null) {
            if (f63164o) {
                return false;
            }
            f63163n.compareAndSet(null, com.xinzhu.haunted.d.d(f63152c, "HtSigningDetails", Signature[].class, Integer.TYPE));
            f63164o = true;
            return f63163n.get() != null;
        }
        return true;
    }

    public static boolean b(Signature[] arg0, int arg1, Signature[] arg2) {
        if (f63165p.get() == null) {
            if (f63166q) {
                return false;
            }
            f63165p.compareAndSet(null, com.xinzhu.haunted.d.d(f63152c, "HtSigningDetails", Signature[].class, Integer.TYPE, Signature[].class));
            f63166q = true;
            return f63165p.get() != null;
        }
        return true;
    }

    public static boolean c(Signature[] arg0, int arg1, ArraySet arg2, Signature[] arg3) {
        if (f63167r.get() == null) {
            if (f63168s) {
                return false;
            }
            f63167r.compareAndSet(null, com.xinzhu.haunted.d.d(f63152c, "HtSigningDetails", Signature[].class, Integer.TYPE, ArraySet.class, Signature[].class));
            f63168s = true;
            return f63167r.get() != null;
        }
        return true;
    }

    public static boolean d(Object arg0) {
        if (f63169t.get() == null) {
            if (f63170u) {
                return false;
            }
            f63169t.compareAndSet(null, com.xinzhu.haunted.d.d(f63152c, "HtSigningDetails", "android.content.pm.SigningDetails"));
            f63170u = true;
            return f63169t.get() != null;
        }
        return true;
    }

    public static boolean e() {
        if (f63153d.get() == null) {
            if (f63154e) {
                return false;
            }
            f63153d.compareAndSet(null, com.xinzhu.haunted.d.f(f63152c, "UNKNOWN"));
            f63154e = true;
            return f63153d.get() != null;
        }
        return true;
    }

    public static l j(Object arg0) {
        if (d(arg0)) {
            try {
                l lVar = new l();
                lVar.f63171a = f63169t.get().newInstance(arg0);
                return lVar;
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

    public static l k(Signature[] arg0, int arg1) {
        if (a(arg0, arg1)) {
            try {
                l lVar = new l();
                lVar.f63171a = f63163n.get().newInstance(arg0, Integer.valueOf(arg1));
                return lVar;
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

    public static l l(Signature[] arg0, int arg1, ArraySet arg2, Signature[] arg3) {
        if (c(arg0, arg1, arg2, arg3)) {
            try {
                l lVar = new l();
                lVar.f63171a = f63167r.get().newInstance(arg0, Integer.valueOf(arg1), arg2, arg3);
                return lVar;
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

    public static l m(Signature[] arg0, int arg1, Signature[] arg2) {
        if (b(arg0, arg1, arg2)) {
            try {
                l lVar = new l();
                lVar.f63171a = f63165p.get().newInstance(arg0, Integer.valueOf(arg1), arg2);
                return lVar;
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

    public static Object n() {
        if (e()) {
            try {
                return f63153d.get().get(null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean s(Object value) {
        if (e()) {
            try {
                f63153d.get().set(null, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean f() {
        if (f63161l.get() == null) {
            if (f63162m) {
                return false;
            }
            f63161l.compareAndSet(null, com.xinzhu.haunted.d.f(f63152c, "mPastSigningCertificates"));
            f63162m = true;
            return f63161l.get() != null;
        }
        return true;
    }

    public boolean g() {
        if (f63159j.get() == null) {
            if (f63160k) {
                return false;
            }
            f63159j.compareAndSet(null, com.xinzhu.haunted.d.f(f63152c, "mPublicKeys"));
            f63160k = true;
            return f63159j.get() != null;
        }
        return true;
    }

    public boolean h() {
        if (f63157h.get() == null) {
            if (f63158i) {
                return false;
            }
            f63157h.compareAndSet(null, com.xinzhu.haunted.d.f(f63152c, "mSignatureSchemeVersion"));
            f63158i = true;
            return f63157h.get() != null;
        }
        return true;
    }

    public boolean i() {
        if (f63155f.get() == null) {
            if (f63156g) {
                return false;
            }
            f63155f.compareAndSet(null, com.xinzhu.haunted.d.f(f63152c, "mSignatures"));
            f63156g = true;
            return f63155f.get() != null;
        }
        return true;
    }

    public Signature[] o() {
        if (f()) {
            try {
                return (Signature[]) f63161l.get().get(this.f63171a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public ArraySet<PublicKey> p() {
        if (g()) {
            try {
                return (ArraySet) f63159j.get().get(this.f63171a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public int q() {
        if (h()) {
            try {
                return ((Integer) f63157h.get().get(this.f63171a)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public Signature[] r() {
        if (i()) {
            try {
                return (Signature[]) f63155f.get().get(this.f63171a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean t(Signature[] value) {
        if (f()) {
            try {
                f63161l.get().set(this.f63171a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean u(ArraySet<PublicKey> value) {
        if (g()) {
            try {
                f63159j.get().set(this.f63171a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean v(int value) {
        if (h()) {
            try {
                f63157h.get().set(this.f63171a, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean w(Signature[] value) {
        if (i()) {
            try {
                f63155f.get().set(this.f63171a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private l() {
    }
}
