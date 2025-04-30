package com.xinzhu.haunted.android.content.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.SharedLibraryInfo;
import java.lang.reflect.Field;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtApplicationInfo.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63034b = "b";

    /* renamed from: a  reason: collision with root package name */
    public Object f63059a;

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63035c = com.xinzhu.haunted.d.a(ApplicationInfo.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63036d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63037e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Field> f63038f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f63039g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Field> f63040h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63041i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Field> f63042j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f63043k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Field> f63044l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f63045m = false;

    /* renamed from: n  reason: collision with root package name */
    private static AtomicReference<Field> f63046n = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private static boolean f63047o = false;

    /* renamed from: p  reason: collision with root package name */
    private static AtomicReference<Field> f63048p = new AtomicReference<>();

    /* renamed from: q  reason: collision with root package name */
    private static boolean f63049q = false;

    /* renamed from: r  reason: collision with root package name */
    private static AtomicReference<Field> f63050r = new AtomicReference<>();

    /* renamed from: s  reason: collision with root package name */
    private static boolean f63051s = false;

    /* renamed from: t  reason: collision with root package name */
    private static AtomicReference<Field> f63052t = new AtomicReference<>();

    /* renamed from: u  reason: collision with root package name */
    private static boolean f63053u = false;

    /* renamed from: v  reason: collision with root package name */
    private static AtomicReference<Field> f63054v = new AtomicReference<>();

    /* renamed from: w  reason: collision with root package name */
    private static boolean f63055w = false;

    /* renamed from: x  reason: collision with root package name */
    private static AtomicReference<Field> f63056x = new AtomicReference<>();

    /* renamed from: y  reason: collision with root package name */
    private static boolean f63057y = false;

    /* renamed from: z  reason: collision with root package name */
    private static AtomicReference<Field> f63058z = new AtomicReference<>();
    private static boolean A = false;
    private static AtomicReference<Field> B = new AtomicReference<>();
    private static boolean C = false;
    private static AtomicReference<Field> D = new AtomicReference<>();
    private static boolean E = false;
    private static AtomicReference<Field> F = new AtomicReference<>();
    private static boolean G = false;

    public b(Object egoInstance) {
        this.f63059a = egoInstance;
    }

    public static boolean E(int value) {
        if (a()) {
            try {
                f63038f.get().set(null, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean a() {
        if (f63038f.get() == null) {
            if (f63039g) {
                return false;
            }
            f63038f.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "PRIVATE_FLAG_PRIVILEGED"));
            f63039g = true;
            return f63038f.get() != null;
        }
        return true;
    }

    public static int p() {
        if (a()) {
            try {
                return ((Integer) f63038f.get().get(null)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public String A() {
        if (l()) {
            try {
                return (String) f63052t.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public String B() {
        if (m()) {
            try {
                return (String) f63048p.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public List<SharedLibraryInfo> C() {
        if (n()) {
            try {
                return (List) F.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public int D() {
        if (o()) {
            try {
                return ((Integer) f63054v.get().get(this.f63059a)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public boolean F(String value) {
        if (b()) {
            try {
                f63058z.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean G(String value) {
        if (c()) {
            try {
                D.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean H(String value) {
        if (d()) {
            try {
                f63056x.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean I(String value) {
        if (e()) {
            try {
                B.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean J(String value) {
        if (f()) {
            try {
                f63046n.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean K(boolean value) {
        if (g()) {
            try {
                f63044l.get().set(this.f63059a, Boolean.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean L(String value) {
        if (h()) {
            try {
                f63050r.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean M(int value) {
        if (i()) {
            try {
                f63036d.get().set(this.f63059a, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean N(String value) {
        if (j()) {
            try {
                f63042j.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean O(String value) {
        if (k()) {
            try {
                f63040h.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean P(String value) {
        if (l()) {
            try {
                f63052t.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean Q(String value) {
        if (m()) {
            try {
                f63048p.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean R(List<SharedLibraryInfo> value) {
        if (n()) {
            try {
                F.get().set(this.f63059a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean S(int value) {
        if (o()) {
            try {
                f63054v.get().set(this.f63059a, Integer.valueOf(value));
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean b() {
        if (f63058z.get() == null) {
            if (A) {
                return false;
            }
            f63058z.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "credentialEncryptedDataDir"));
            A = true;
            return f63058z.get() != null;
        }
        return true;
    }

    public boolean c() {
        if (D.get() == null) {
            if (E) {
                return false;
            }
            D.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "credentialProtectedDataDir"));
            E = true;
            return D.get() != null;
        }
        return true;
    }

    public boolean d() {
        if (f63056x.get() == null) {
            if (f63057y) {
                return false;
            }
            f63056x.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "deviceEncryptedDataDir"));
            f63057y = true;
            return f63056x.get() != null;
        }
        return true;
    }

    public boolean e() {
        if (B.get() == null) {
            if (C) {
                return false;
            }
            B.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "deviceProtectedDataDir"));
            C = true;
            return B.get() != null;
        }
        return true;
    }

    public boolean f() {
        if (f63046n.get() == null) {
            if (f63047o) {
                return false;
            }
            f63046n.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "nativeLibraryRootDir"));
            f63047o = true;
            return f63046n.get() != null;
        }
        return true;
    }

    public boolean g() {
        if (f63044l.get() == null) {
            if (f63045m) {
                return false;
            }
            f63044l.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "nativeLibraryRootRequiresIsa"));
            f63045m = true;
            return f63044l.get() != null;
        }
        return true;
    }

    public boolean h() {
        if (f63050r.get() == null) {
            if (f63051s) {
                return false;
            }
            f63050r.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "primaryCpuAbi"));
            f63051s = true;
            return f63050r.get() != null;
        }
        return true;
    }

    public boolean i() {
        if (f63036d.get() == null) {
            if (f63037e) {
                return false;
            }
            f63036d.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "privateFlags"));
            f63037e = true;
            return f63036d.get() != null;
        }
        return true;
    }

    public boolean j() {
        if (f63042j.get() == null) {
            if (f63043k) {
                return false;
            }
            f63042j.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "scanPublicSourceDir"));
            f63043k = true;
            return f63042j.get() != null;
        }
        return true;
    }

    public boolean k() {
        if (f63040h.get() == null) {
            if (f63041i) {
                return false;
            }
            f63040h.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "scanSourceDir"));
            f63041i = true;
            return f63040h.get() != null;
        }
        return true;
    }

    public boolean l() {
        if (f63052t.get() == null) {
            if (f63053u) {
                return false;
            }
            f63052t.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "secondaryCpuAbi"));
            f63053u = true;
            return f63052t.get() != null;
        }
        return true;
    }

    public boolean m() {
        if (f63048p.get() == null) {
            if (f63049q) {
                return false;
            }
            f63048p.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "secondaryNativeLibraryDir"));
            f63049q = true;
            return f63048p.get() != null;
        }
        return true;
    }

    public boolean n() {
        if (F.get() == null) {
            if (G) {
                return false;
            }
            F.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "sharedLibraryInfos"));
            G = true;
            return F.get() != null;
        }
        return true;
    }

    public boolean o() {
        if (f63054v.get() == null) {
            if (f63055w) {
                return false;
            }
            f63054v.compareAndSet(null, com.xinzhu.haunted.d.f(f63035c, "versionCode"));
            f63055w = true;
            return f63054v.get() != null;
        }
        return true;
    }

    public String q() {
        if (b()) {
            try {
                return (String) f63058z.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public String r() {
        if (c()) {
            try {
                return (String) D.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public String s() {
        if (d()) {
            try {
                return (String) f63056x.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public String t() {
        if (e()) {
            try {
                return (String) B.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public String u() {
        if (f()) {
            try {
                return (String) f63046n.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean v() {
        if (g()) {
            try {
                return ((Boolean) f63044l.get().get(this.f63059a)).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public String w() {
        if (h()) {
            try {
                return (String) f63050r.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public int x() {
        if (i()) {
            try {
                return ((Integer) f63036d.get().get(this.f63059a)).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public String y() {
        if (j()) {
            try {
                return (String) f63042j.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public String z() {
        if (k()) {
            try {
                return (String) f63040h.get().get(this.f63059a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    private b() {
    }
}
