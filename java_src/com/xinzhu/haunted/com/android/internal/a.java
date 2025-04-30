package com.xinzhu.haunted.com.android.internal;

import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtR.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63678a = "a";

    /* renamed from: b  reason: collision with root package name */
    public static Class<?> f63679b = com.xinzhu.haunted.d.b("com.android.internal.R");

    /* compiled from: HtR.java */
    /* renamed from: com.xinzhu.haunted.com.android.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0389a {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63680a = com.xinzhu.haunted.d.b("com.android.internal.R$id");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Field> f63681b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63682c = false;

        /* renamed from: d  reason: collision with root package name */
        private static AtomicReference<Field> f63683d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        private static boolean f63684e = false;

        /* renamed from: f  reason: collision with root package name */
        private static AtomicReference<Field> f63685f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        private static boolean f63686g = false;

        /* renamed from: h  reason: collision with root package name */
        private static AtomicReference<Field> f63687h = new AtomicReference<>();

        /* renamed from: i  reason: collision with root package name */
        private static boolean f63688i = false;

        /* renamed from: j  reason: collision with root package name */
        private static AtomicReference<Field> f63689j = new AtomicReference<>();

        /* renamed from: k  reason: collision with root package name */
        private static boolean f63690k = false;

        /* renamed from: l  reason: collision with root package name */
        private static AtomicReference<Field> f63691l = new AtomicReference<>();

        /* renamed from: m  reason: collision with root package name */
        private static boolean f63692m = false;

        /* renamed from: n  reason: collision with root package name */
        private static AtomicReference<Field> f63693n = new AtomicReference<>();

        /* renamed from: o  reason: collision with root package name */
        private static boolean f63694o = false;

        /* renamed from: p  reason: collision with root package name */
        private static AtomicReference<Field> f63695p = new AtomicReference<>();

        /* renamed from: q  reason: collision with root package name */
        private static boolean f63696q = false;

        /* renamed from: r  reason: collision with root package name */
        private static AtomicReference<Field> f63697r = new AtomicReference<>();

        /* renamed from: s  reason: collision with root package name */
        private static boolean f63698s = false;

        /* renamed from: t  reason: collision with root package name */
        private static AtomicReference<Field> f63699t = new AtomicReference<>();

        /* renamed from: u  reason: collision with root package name */
        private static boolean f63700u = false;

        public static boolean A(int value) {
            if (g()) {
                try {
                    f63689j.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean B(int value) {
            if (h()) {
                try {
                    f63699t.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean C(int value) {
            if (i()) {
                try {
                    f63693n.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean D(int value) {
            if (j()) {
                try {
                    f63691l.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean a() {
            if (f63695p.get() == null) {
                if (f63696q) {
                    return false;
                }
                f63695p.compareAndSet(null, com.xinzhu.haunted.d.f(f63680a, "account_name"));
                f63696q = true;
                return f63695p.get() != null;
            }
            return true;
        }

        public static boolean b() {
            if (f63683d.get() == null) {
                if (f63684e) {
                    return false;
                }
                f63683d.compareAndSet(null, com.xinzhu.haunted.d.f(f63680a, "account_row_icon"));
                f63684e = true;
                return f63683d.get() != null;
            }
            return true;
        }

        public static boolean c() {
            if (f63681b.get() == null) {
                if (f63682c) {
                    return false;
                }
                f63681b.compareAndSet(null, com.xinzhu.haunted.d.f(f63680a, "account_row_text"));
                f63682c = true;
                return f63681b.get() != null;
            }
            return true;
        }

        public static boolean d() {
            if (f63697r.get() == null) {
                if (f63698s) {
                    return false;
                }
                f63697r.compareAndSet(null, com.xinzhu.haunted.d.f(f63680a, "account_type"));
                f63698s = true;
                return f63697r.get() != null;
            }
            return true;
        }

        public static boolean e() {
            if (f63687h.get() == null) {
                if (f63688i) {
                    return false;
                }
                f63687h.compareAndSet(null, com.xinzhu.haunted.d.f(f63680a, "allow_button"));
                f63688i = true;
                return f63687h.get() != null;
            }
            return true;
        }

        public static boolean f() {
            if (f63685f.get() == null) {
                if (f63686g) {
                    return false;
                }
                f63685f.compareAndSet(null, com.xinzhu.haunted.d.f(f63680a, "authtoken_type"));
                f63686g = true;
                return f63685f.get() != null;
            }
            return true;
        }

        public static boolean g() {
            if (f63689j.get() == null) {
                if (f63690k) {
                    return false;
                }
                f63689j.compareAndSet(null, com.xinzhu.haunted.d.f(f63680a, "deny_button"));
                f63690k = true;
                return f63689j.get() != null;
            }
            return true;
        }

        public static boolean h() {
            if (f63699t.get() == null) {
                if (f63700u) {
                    return false;
                }
                f63699t.compareAndSet(null, com.xinzhu.haunted.d.f(f63680a, com.xinzhu.overmind.client.hook.proxies.context.providers.b.f64184n));
                f63700u = true;
                return f63699t.get() != null;
            }
            return true;
        }

        public static boolean i() {
            if (f63693n.get() == null) {
                if (f63694o) {
                    return false;
                }
                f63693n.compareAndSet(null, com.xinzhu.haunted.d.f(f63680a, "package_label"));
                f63694o = true;
                return f63693n.get() != null;
            }
            return true;
        }

        public static boolean j() {
            if (f63691l.get() == null) {
                if (f63692m) {
                    return false;
                }
                f63691l.compareAndSet(null, com.xinzhu.haunted.d.f(f63680a, "packages_list"));
                f63692m = true;
                return f63691l.get() != null;
            }
            return true;
        }

        public static int k() {
            if (a()) {
                try {
                    return ((Integer) f63695p.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int l() {
            if (b()) {
                try {
                    return ((Integer) f63683d.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int m() {
            if (c()) {
                try {
                    return ((Integer) f63681b.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int n() {
            if (d()) {
                try {
                    return ((Integer) f63697r.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int o() {
            if (e()) {
                try {
                    return ((Integer) f63687h.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int p() {
            if (f()) {
                try {
                    return ((Integer) f63685f.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int q() {
            if (g()) {
                try {
                    return ((Integer) f63689j.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int r() {
            if (h()) {
                try {
                    return ((Integer) f63699t.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int s() {
            if (i()) {
                try {
                    return ((Integer) f63693n.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int t() {
            if (j()) {
                try {
                    return ((Integer) f63691l.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static boolean u(int value) {
            if (a()) {
                try {
                    f63695p.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean v(int value) {
            if (b()) {
                try {
                    f63683d.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean w(int value) {
            if (c()) {
                try {
                    f63681b.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean x(int value) {
            if (d()) {
                try {
                    f63697r.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean y(int value) {
            if (e()) {
                try {
                    f63687h.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean z(int value) {
            if (f()) {
                try {
                    f63685f.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }
    }

    /* compiled from: HtR.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63701a = com.xinzhu.haunted.d.b("com.android.internal.R$layout");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Field> f63702b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63703c = false;

        /* renamed from: d  reason: collision with root package name */
        private static AtomicReference<Field> f63704d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        private static boolean f63705e = false;

        /* renamed from: f  reason: collision with root package name */
        private static AtomicReference<Field> f63706f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        private static boolean f63707g = false;

        /* renamed from: h  reason: collision with root package name */
        private static AtomicReference<Field> f63708h = new AtomicReference<>();

        /* renamed from: i  reason: collision with root package name */
        private static boolean f63709i = false;

        /* renamed from: j  reason: collision with root package name */
        private static AtomicReference<Field> f63710j = new AtomicReference<>();

        /* renamed from: k  reason: collision with root package name */
        private static boolean f63711k = false;

        /* renamed from: l  reason: collision with root package name */
        private static AtomicReference<Field> f63712l = new AtomicReference<>();

        /* renamed from: m  reason: collision with root package name */
        private static boolean f63713m = false;

        /* renamed from: n  reason: collision with root package name */
        private static AtomicReference<Field> f63714n = new AtomicReference<>();

        /* renamed from: o  reason: collision with root package name */
        private static boolean f63715o = false;

        public static boolean a() {
            if (f63712l.get() == null) {
                if (f63713m) {
                    return false;
                }
                f63712l.compareAndSet(null, com.xinzhu.haunted.d.f(f63701a, "app_not_authorized"));
                f63713m = true;
                return f63712l.get() != null;
            }
            return true;
        }

        public static boolean b() {
            if (f63702b.get() == null) {
                if (f63703c) {
                    return false;
                }
                f63702b.compareAndSet(null, com.xinzhu.haunted.d.f(f63701a, "choose_account"));
                f63703c = true;
                return f63702b.get() != null;
            }
            return true;
        }

        public static boolean c() {
            if (f63704d.get() == null) {
                if (f63705e) {
                    return false;
                }
                f63704d.compareAndSet(null, com.xinzhu.haunted.d.f(f63701a, "choose_account_row"));
                f63705e = true;
                return f63704d.get() != null;
            }
            return true;
        }

        public static boolean d() {
            if (f63706f.get() == null) {
                if (f63707g) {
                    return false;
                }
                f63706f.compareAndSet(null, com.xinzhu.haunted.d.f(f63701a, "choose_account_type"));
                f63707g = true;
                return f63706f.get() != null;
            }
            return true;
        }

        public static boolean e() {
            if (f63714n.get() == null) {
                if (f63715o) {
                    return false;
                }
                f63714n.compareAndSet(null, com.xinzhu.haunted.d.f(f63701a, "choose_type_and_account"));
                f63715o = true;
                return f63714n.get() != null;
            }
            return true;
        }

        public static boolean f() {
            if (f63708h.get() == null) {
                if (f63709i) {
                    return false;
                }
                f63708h.compareAndSet(null, com.xinzhu.haunted.d.f(f63701a, "grant_credentials_permission"));
                f63709i = true;
                return f63708h.get() != null;
            }
            return true;
        }

        public static boolean g() {
            if (f63710j.get() == null) {
                if (f63711k) {
                    return false;
                }
                f63710j.compareAndSet(null, com.xinzhu.haunted.d.f(f63701a, "permissions_package_list_item"));
                f63711k = true;
                return f63710j.get() != null;
            }
            return true;
        }

        public static int h() {
            if (a()) {
                try {
                    return ((Integer) f63712l.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int i() {
            if (b()) {
                try {
                    return ((Integer) f63702b.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int j() {
            if (c()) {
                try {
                    return ((Integer) f63704d.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int k() {
            if (d()) {
                try {
                    return ((Integer) f63706f.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int l() {
            if (e()) {
                try {
                    return ((Integer) f63714n.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int m() {
            if (f()) {
                try {
                    return ((Integer) f63708h.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int n() {
            if (g()) {
                try {
                    return ((Integer) f63710j.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static boolean o(int value) {
            if (a()) {
                try {
                    f63712l.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean p(int value) {
            if (b()) {
                try {
                    f63702b.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean q(int value) {
            if (c()) {
                try {
                    f63704d.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean r(int value) {
            if (d()) {
                try {
                    f63706f.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean s(int value) {
            if (e()) {
                try {
                    f63714n.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean t(int value) {
            if (f()) {
                try {
                    f63708h.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean u(int value) {
            if (g()) {
                try {
                    f63710j.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }
    }

    /* compiled from: HtR.java */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63716a = com.xinzhu.haunted.d.b("com.android.internal.R$string");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Field> f63717b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63718c = false;

        /* renamed from: d  reason: collision with root package name */
        private static AtomicReference<Field> f63719d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        private static boolean f63720e = false;

        /* renamed from: f  reason: collision with root package name */
        private static AtomicReference<Field> f63721f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        private static boolean f63722g = false;

        public static boolean a() {
            if (f63721f.get() == null) {
                if (f63722g) {
                    return false;
                }
                f63721f.compareAndSet(null, com.xinzhu.haunted.d.f(f63716a, "add_account_button_label"));
                f63722g = true;
                return f63721f.get() != null;
            }
            return true;
        }

        public static boolean b() {
            if (f63719d.get() == null) {
                if (f63720e) {
                    return false;
                }
                f63719d.compareAndSet(null, com.xinzhu.haunted.d.f(f63716a, "config_chooseTypeAndAccountActivity"));
                f63720e = true;
                return f63719d.get() != null;
            }
            return true;
        }

        public static boolean c() {
            if (f63717b.get() == null) {
                if (f63718c) {
                    return false;
                }
                f63717b.compareAndSet(null, com.xinzhu.haunted.d.f(f63716a, "grant_permissions_header_text"));
                f63718c = true;
                return f63717b.get() != null;
            }
            return true;
        }

        public static int d() {
            if (a()) {
                try {
                    return ((Integer) f63721f.get().get(null)).intValue();
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
                    return ((Integer) f63719d.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static String f() {
            if (c()) {
                try {
                    return (String) f63717b.get().get(null);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public static boolean g(int value) {
            if (a()) {
                try {
                    f63721f.get().set(null, Integer.valueOf(value));
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
                    f63719d.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean i(String value) {
            if (c()) {
                try {
                    f63717b.get().set(null, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }
    }

    /* compiled from: HtR.java */
    /* loaded from: classes3.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63723a = com.xinzhu.haunted.d.b("com.android.internal.R$style");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Field> f63724b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63725c = false;

        public static boolean a() {
            if (f63724b.get() == null) {
                if (f63725c) {
                    return false;
                }
                f63724b.compareAndSet(null, com.xinzhu.haunted.d.f(f63723a, "Theme_DeviceDefault_Light_Dialog_NoActionBar"));
                f63725c = true;
                return f63724b.get() != null;
            }
            return true;
        }

        public static int b() {
            if (a()) {
                try {
                    return ((Integer) f63724b.get().get(null)).intValue();
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
                    f63724b.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }
    }

    /* compiled from: HtR.java */
    /* loaded from: classes3.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public static Class<?> f63726a = com.xinzhu.haunted.d.b("com.android.internal.R$styleable");

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<Field> f63728b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        private static boolean f63729c = false;

        /* renamed from: d  reason: collision with root package name */
        private static AtomicReference<Field> f63730d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        private static boolean f63731e = false;

        /* renamed from: f  reason: collision with root package name */
        private static AtomicReference<Field> f63732f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        private static boolean f63733g = false;

        /* renamed from: h  reason: collision with root package name */
        private static AtomicReference<Field> f63734h = new AtomicReference<>();

        /* renamed from: i  reason: collision with root package name */
        private static boolean f63735i = false;

        /* renamed from: j  reason: collision with root package name */
        private static AtomicReference<Field> f63736j = new AtomicReference<>();

        /* renamed from: k  reason: collision with root package name */
        private static boolean f63737k = false;

        /* renamed from: l  reason: collision with root package name */
        private static AtomicReference<Field> f63738l = new AtomicReference<>();

        /* renamed from: m  reason: collision with root package name */
        private static boolean f63739m = false;

        /* renamed from: n  reason: collision with root package name */
        private static AtomicReference<Field> f63740n = new AtomicReference<>();

        /* renamed from: o  reason: collision with root package name */
        private static boolean f63741o = false;

        /* renamed from: p  reason: collision with root package name */
        private static AtomicReference<Field> f63742p = new AtomicReference<>();

        /* renamed from: q  reason: collision with root package name */
        private static boolean f63743q = false;

        /* renamed from: r  reason: collision with root package name */
        private static AtomicReference<Field> f63744r = new AtomicReference<>();

        /* renamed from: s  reason: collision with root package name */
        private static boolean f63745s = false;

        /* renamed from: t  reason: collision with root package name */
        private static AtomicReference<Field> f63746t = new AtomicReference<>();

        /* renamed from: u  reason: collision with root package name */
        private static boolean f63747u = false;

        /* renamed from: v  reason: collision with root package name */
        private static AtomicReference<Field> f63748v = new AtomicReference<>();

        /* renamed from: w  reason: collision with root package name */
        private static boolean f63749w = false;

        /* renamed from: x  reason: collision with root package name */
        private static AtomicReference<Field> f63750x = new AtomicReference<>();

        /* renamed from: y  reason: collision with root package name */
        private static boolean f63751y = false;

        /* renamed from: z  reason: collision with root package name */
        private static AtomicReference<Field> f63752z = new AtomicReference<>();
        private static boolean A = false;
        private static AtomicReference<Field> B = new AtomicReference<>();
        private static boolean C = false;
        private static AtomicReference<Field> D = new AtomicReference<>();
        private static boolean E = false;
        private static AtomicReference<Field> F = new AtomicReference<>();
        private static boolean G = false;
        private static AtomicReference<Field> H = new AtomicReference<>();
        private static boolean I = false;
        private static AtomicReference<Field> J = new AtomicReference<>();
        private static boolean K = false;
        private static AtomicReference<Field> L = new AtomicReference<>();
        private static boolean M = false;
        private static AtomicReference<Field> N = new AtomicReference<>();
        private static boolean O = false;
        private static AtomicReference<Field> P = new AtomicReference<>();
        private static boolean Q = false;
        private static AtomicReference<Field> R = new AtomicReference<>();
        private static boolean S = false;
        private static AtomicReference<Field> T = new AtomicReference<>();
        private static boolean U = false;
        private static AtomicReference<Field> V = new AtomicReference<>();
        private static boolean W = false;
        private static AtomicReference<Field> X = new AtomicReference<>();
        private static boolean Y = false;
        private static AtomicReference<Field> Z = new AtomicReference<>();

        /* renamed from: a0  reason: collision with root package name */
        private static boolean f63727a0 = false;

        public static int[] A() {
            if (a()) {
                try {
                    return (int[]) f63728b.get().get(null);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public static int B() {
            if (b()) {
                try {
                    return ((Integer) f63730d.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int C() {
            if (c()) {
                try {
                    return ((Integer) f63732f.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int D() {
            if (d()) {
                try {
                    return ((Integer) f63734h.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int E() {
            if (e()) {
                try {
                    return ((Integer) f63736j.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int F() {
            if (f()) {
                try {
                    return ((Integer) f63738l.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int G() {
            if (g()) {
                try {
                    return ((Integer) f63740n.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int[] H() {
            if (h()) {
                try {
                    return (int[]) f63742p.get().get(null);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public static int I() {
            if (i()) {
                try {
                    return ((Integer) f63744r.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int J() {
            if (j()) {
                try {
                    return ((Integer) f63746t.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int K() {
            if (k()) {
                try {
                    return ((Integer) f63748v.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int L() {
            if (l()) {
                try {
                    return ((Integer) f63750x.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int M() {
            if (m()) {
                try {
                    return ((Integer) f63752z.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int N() {
            if (n()) {
                try {
                    return ((Integer) B.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int O() {
            if (o()) {
                try {
                    return ((Integer) D.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int[] P() {
            if (p()) {
                try {
                    return (int[]) H.get().get(null);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public static int Q() {
            if (q()) {
                try {
                    return ((Integer) L.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int[] R() {
            if (r()) {
                try {
                    return (int[]) F.get().get(null);
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return null;
                }
            }
            return null;
        }

        public static int S() {
            if (s()) {
                try {
                    return ((Integer) J.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int T() {
            if (t()) {
                try {
                    return ((Integer) P.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int U() {
            if (u()) {
                try {
                    return ((Integer) N.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int V() {
            if (v()) {
                try {
                    return ((Integer) R.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int W() {
            if (w()) {
                try {
                    return ((Integer) T.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int X() {
            if (x()) {
                try {
                    return ((Integer) V.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int Y() {
            if (y()) {
                try {
                    return ((Integer) X.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static int Z() {
            if (z()) {
                try {
                    return ((Integer) Z.get().get(null)).intValue();
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return 0;
                }
            }
            return 0;
        }

        public static boolean a() {
            if (f63728b.get() == null) {
                if (f63729c) {
                    return false;
                }
                f63728b.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "AccountAuthenticator"));
                f63729c = true;
                return f63728b.get() != null;
            }
            return true;
        }

        public static boolean a0(int[] value) {
            if (a()) {
                try {
                    f63728b.get().set(null, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean b() {
            if (f63730d.get() == null) {
                if (f63731e) {
                    return false;
                }
                f63730d.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "AccountAuthenticator_accountPreferences"));
                f63731e = true;
                return f63730d.get() != null;
            }
            return true;
        }

        public static boolean b0(int value) {
            if (b()) {
                try {
                    f63730d.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean c() {
            if (f63732f.get() == null) {
                if (f63733g) {
                    return false;
                }
                f63732f.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "AccountAuthenticator_accountType"));
                f63733g = true;
                return f63732f.get() != null;
            }
            return true;
        }

        public static boolean c0(int value) {
            if (c()) {
                try {
                    f63732f.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean d() {
            if (f63734h.get() == null) {
                if (f63735i) {
                    return false;
                }
                f63734h.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "AccountAuthenticator_customTokens"));
                f63735i = true;
                return f63734h.get() != null;
            }
            return true;
        }

        public static boolean d0(int value) {
            if (d()) {
                try {
                    f63734h.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean e() {
            if (f63736j.get() == null) {
                if (f63737k) {
                    return false;
                }
                f63736j.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "AccountAuthenticator_icon"));
                f63737k = true;
                return f63736j.get() != null;
            }
            return true;
        }

        public static boolean e0(int value) {
            if (e()) {
                try {
                    f63736j.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean f() {
            if (f63738l.get() == null) {
                if (f63739m) {
                    return false;
                }
                f63738l.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "AccountAuthenticator_label"));
                f63739m = true;
                return f63738l.get() != null;
            }
            return true;
        }

        public static boolean f0(int value) {
            if (f()) {
                try {
                    f63738l.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean g() {
            if (f63740n.get() == null) {
                if (f63741o) {
                    return false;
                }
                f63740n.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "AccountAuthenticator_smallIcon"));
                f63741o = true;
                return f63740n.get() != null;
            }
            return true;
        }

        public static boolean g0(int value) {
            if (g()) {
                try {
                    f63740n.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean h() {
            if (f63742p.get() == null) {
                if (f63743q) {
                    return false;
                }
                f63742p.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "SyncAdapter"));
                f63743q = true;
                return f63742p.get() != null;
            }
            return true;
        }

        public static boolean h0(int[] value) {
            if (h()) {
                try {
                    f63742p.get().set(null, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean i() {
            if (f63744r.get() == null) {
                if (f63745s) {
                    return false;
                }
                f63744r.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "SyncAdapter_accountType"));
                f63745s = true;
                return f63744r.get() != null;
            }
            return true;
        }

        public static boolean i0(int value) {
            if (i()) {
                try {
                    f63744r.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean j() {
            if (f63746t.get() == null) {
                if (f63747u) {
                    return false;
                }
                f63746t.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "SyncAdapter_allowParallelSyncs"));
                f63747u = true;
                return f63746t.get() != null;
            }
            return true;
        }

        public static boolean j0(int value) {
            if (j()) {
                try {
                    f63746t.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean k() {
            if (f63748v.get() == null) {
                if (f63749w) {
                    return false;
                }
                f63748v.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "SyncAdapter_contentAuthority"));
                f63749w = true;
                return f63748v.get() != null;
            }
            return true;
        }

        public static boolean k0(int value) {
            if (k()) {
                try {
                    f63748v.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean l() {
            if (f63750x.get() == null) {
                if (f63751y) {
                    return false;
                }
                f63750x.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "SyncAdapter_isAlwaysSyncable"));
                f63751y = true;
                return f63750x.get() != null;
            }
            return true;
        }

        public static boolean l0(int value) {
            if (l()) {
                try {
                    f63750x.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean m() {
            if (f63752z.get() == null) {
                if (A) {
                    return false;
                }
                f63752z.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "SyncAdapter_settingsActivity"));
                A = true;
                return f63752z.get() != null;
            }
            return true;
        }

        public static boolean m0(int value) {
            if (m()) {
                try {
                    f63752z.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean n() {
            if (B.get() == null) {
                if (C) {
                    return false;
                }
                B.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "SyncAdapter_supportsUploading"));
                C = true;
                return B.get() != null;
            }
            return true;
        }

        public static boolean n0(int value) {
            if (n()) {
                try {
                    B.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean o() {
            if (D.get() == null) {
                if (E) {
                    return false;
                }
                D.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "SyncAdapter_userVisible"));
                E = true;
                return D.get() != null;
            }
            return true;
        }

        public static boolean o0(int value) {
            if (o()) {
                try {
                    D.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean p() {
            if (H.get() == null) {
                if (I) {
                    return false;
                }
                H.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "View"));
                I = true;
                return H.get() != null;
            }
            return true;
        }

        public static boolean p0(int[] value) {
            if (p()) {
                try {
                    H.get().set(null, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean q() {
            if (L.get() == null) {
                if (M) {
                    return false;
                }
                L.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "View_background"));
                M = true;
                return L.get() != null;
            }
            return true;
        }

        public static boolean q0(int value) {
            if (q()) {
                try {
                    L.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean r() {
            if (F.get() == null) {
                if (G) {
                    return false;
                }
                F.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "Window"));
                G = true;
                return F.get() != null;
            }
            return true;
        }

        public static boolean r0(int[] value) {
            if (r()) {
                try {
                    F.get().set(null, value);
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean s() {
            if (J.get() == null) {
                if (K) {
                    return false;
                }
                J.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "Window_background"));
                K = true;
                return J.get() != null;
            }
            return true;
        }

        public static boolean s0(int value) {
            if (s()) {
                try {
                    J.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean t() {
            if (P.get() == null) {
                if (Q) {
                    return false;
                }
                P.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "Window_windowBackground"));
                Q = true;
                return P.get() != null;
            }
            return true;
        }

        public static boolean t0(int value) {
            if (t()) {
                try {
                    P.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean u() {
            if (N.get() == null) {
                if (O) {
                    return false;
                }
                N.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "Window_windowDisablePreview"));
                O = true;
                return N.get() != null;
            }
            return true;
        }

        public static boolean u0(int value) {
            if (u()) {
                try {
                    N.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean v() {
            if (R.get() == null) {
                if (S) {
                    return false;
                }
                R.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "Window_windowFullscreen"));
                S = true;
                return R.get() != null;
            }
            return true;
        }

        public static boolean v0(int value) {
            if (v()) {
                try {
                    R.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean w() {
            if (T.get() == null) {
                if (U) {
                    return false;
                }
                T.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "Window_windowIsFloating"));
                U = true;
                return T.get() != null;
            }
            return true;
        }

        public static boolean w0(int value) {
            if (w()) {
                try {
                    T.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean x() {
            if (V.get() == null) {
                if (W) {
                    return false;
                }
                V.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "Window_windowIsTranslucent"));
                W = true;
                return V.get() != null;
            }
            return true;
        }

        public static boolean x0(int value) {
            if (x()) {
                try {
                    V.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean y() {
            if (X.get() == null) {
                if (Y) {
                    return false;
                }
                X.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "Window_windowShowWallpaper"));
                Y = true;
                return X.get() != null;
            }
            return true;
        }

        public static boolean y0(int value) {
            if (y()) {
                try {
                    X.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }

        public static boolean z() {
            if (Z.get() == null) {
                if (f63727a0) {
                    return false;
                }
                Z.compareAndSet(null, com.xinzhu.haunted.d.f(f63726a, "Window_windowSwipeToDismiss"));
                f63727a0 = true;
                return Z.get() != null;
            }
            return true;
        }

        public static boolean z0(int value) {
            if (z()) {
                try {
                    Z.get().set(null, Integer.valueOf(value));
                    return true;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                    return false;
                }
            }
            return false;
        }
    }
}
