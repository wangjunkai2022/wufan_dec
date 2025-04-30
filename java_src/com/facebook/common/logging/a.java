package com.facebook.common.logging;
/* compiled from: FLog.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f11702a = 2;

    /* renamed from: b  reason: collision with root package name */
    public static final int f11703b = 3;

    /* renamed from: c  reason: collision with root package name */
    public static final int f11704c = 4;

    /* renamed from: d  reason: collision with root package name */
    public static final int f11705d = 5;

    /* renamed from: e  reason: collision with root package name */
    public static final int f11706e = 6;

    /* renamed from: f  reason: collision with root package name */
    public static final int f11707f = 7;

    /* renamed from: g  reason: collision with root package name */
    private static c f11708g = b.k();

    private static String A(Class<?> cls) {
        return cls.getSimpleName();
    }

    public static void B(Class<?> cls, String str) {
        if (f11708g.h(4)) {
            f11708g.i(A(cls), str);
        }
    }

    public static void C(Class<?> cls, String str, Object obj) {
        if (f11708g.h(4)) {
            f11708g.i(A(cls), y(str, obj));
        }
    }

    public static void D(Class<?> cls, String str, Object obj, Object obj2) {
        if (f11708g.h(4)) {
            f11708g.i(A(cls), y(str, obj, obj2));
        }
    }

    public static void E(Class<?> cls, String str, Object obj, Object obj2, Object obj3) {
        if (f11708g.h(4)) {
            f11708g.i(A(cls), y(str, obj, obj2, obj3));
        }
    }

    public static void F(Class<?> cls, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (f11708g.h(4)) {
            f11708g.i(A(cls), y(str, obj, obj2, obj3, obj4));
        }
    }

    public static void G(Class<?> cls, String str, Throwable th) {
        if (f11708g.h(4)) {
            f11708g.j(A(cls), str, th);
        }
    }

    public static void H(Class<?> cls, String str, Object... objArr) {
        if (f11708g.h(4)) {
            f11708g.i(A(cls), y(str, objArr));
        }
    }

    public static void I(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (R(4)) {
            f11708g.j(A(cls), y(str, objArr), th);
        }
    }

    public static void J(String str, String str2) {
        if (f11708g.h(4)) {
            f11708g.i(str, str2);
        }
    }

    public static void K(String str, String str2, Object obj) {
        if (f11708g.h(4)) {
            f11708g.i(str, y(str2, obj));
        }
    }

    public static void L(String str, String str2, Object obj, Object obj2) {
        if (f11708g.h(4)) {
            f11708g.i(str, y(str2, obj, obj2));
        }
    }

    public static void M(String str, String str2, Object obj, Object obj2, Object obj3) {
        if (f11708g.h(4)) {
            f11708g.i(str, y(str2, obj, obj2, obj3));
        }
    }

    public static void N(String str, String str2, Object obj, Object obj2, Object obj3, Object obj4) {
        if (f11708g.h(4)) {
            f11708g.i(str, y(str2, obj, obj2, obj3, obj4));
        }
    }

    public static void O(String str, String str2, Throwable th) {
        if (f11708g.h(4)) {
            f11708g.j(str, str2, th);
        }
    }

    public static void P(String str, String str2, Object... objArr) {
        if (f11708g.h(4)) {
            f11708g.i(str, y(str2, objArr));
        }
    }

    public static void Q(String str, Throwable th, String str2, Object... objArr) {
        if (f11708g.h(4)) {
            f11708g.j(str, y(str2, objArr), th);
        }
    }

    public static boolean R(int i2) {
        return f11708g.h(i2);
    }

    public static void S(c cVar) {
        if (cVar != null) {
            f11708g = cVar;
            return;
        }
        throw new IllegalArgumentException();
    }

    public static void T(int i2) {
        f11708g.i(i2);
    }

    public static void U(Class<?> cls, String str) {
        if (f11708g.h(2)) {
            f11708g.v(A(cls), str);
        }
    }

    public static void V(Class<?> cls, String str, Object obj) {
        if (f11708g.h(2)) {
            f11708g.v(A(cls), y(str, obj));
        }
    }

    public static void W(Class<?> cls, String str, Object obj, Object obj2) {
        if (f11708g.h(2)) {
            f11708g.v(A(cls), y(str, obj, obj2));
        }
    }

    public static void X(Class<?> cls, String str, Object obj, Object obj2, Object obj3) {
        if (R(2)) {
            U(cls, y(str, obj, obj2, obj3));
        }
    }

    public static void Y(Class<?> cls, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (f11708g.h(2)) {
            f11708g.v(A(cls), y(str, obj, obj2, obj3, obj4));
        }
    }

    public static void Z(Class<?> cls, String str, Throwable th) {
        if (f11708g.h(2)) {
            f11708g.g(A(cls), str, th);
        }
    }

    public static void a(Class<?> cls, String str) {
        if (f11708g.h(3)) {
            f11708g.d(A(cls), str);
        }
    }

    public static void a0(Class<?> cls, String str, Object... objArr) {
        if (f11708g.h(2)) {
            f11708g.v(A(cls), y(str, objArr));
        }
    }

    public static void b(Class<?> cls, String str, Object obj) {
        if (f11708g.h(3)) {
            f11708g.d(A(cls), y(str, obj));
        }
    }

    public static void b0(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (f11708g.h(2)) {
            f11708g.g(A(cls), y(str, objArr), th);
        }
    }

    public static void c(Class<?> cls, String str, Object obj, Object obj2) {
        if (f11708g.h(3)) {
            f11708g.d(A(cls), y(str, obj, obj2));
        }
    }

    public static void c0(String str, String str2) {
        if (f11708g.h(2)) {
            f11708g.v(str, str2);
        }
    }

    public static void d(Class<?> cls, String str, Object obj, Object obj2, Object obj3) {
        if (f11708g.h(3)) {
            f11708g.d(A(cls), y(str, obj, obj2, obj3));
        }
    }

    public static void d0(String str, String str2, Object obj) {
        if (f11708g.h(2)) {
            f11708g.v(str, y(str2, obj));
        }
    }

    public static void e(Class<?> cls, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (f11708g.h(3)) {
            f11708g.d(A(cls), y(str, obj, obj2, obj3, obj4));
        }
    }

    public static void e0(String str, String str2, Object obj, Object obj2) {
        if (f11708g.h(2)) {
            f11708g.v(str, y(str2, obj, obj2));
        }
    }

    public static void f(Class<?> cls, String str, Throwable th) {
        if (f11708g.h(3)) {
            f11708g.c(A(cls), str, th);
        }
    }

    public static void f0(String str, String str2, Object obj, Object obj2, Object obj3) {
        if (f11708g.h(2)) {
            f11708g.v(str, y(str2, obj, obj2, obj3));
        }
    }

    public static void g(Class<?> cls, String str, Object... objArr) {
        if (f11708g.h(3)) {
            f11708g.d(A(cls), y(str, objArr));
        }
    }

    public static void g0(String str, String str2, Object obj, Object obj2, Object obj3, Object obj4) {
        if (f11708g.h(2)) {
            f11708g.v(str, y(str2, obj, obj2, obj3, obj4));
        }
    }

    public static void h(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (f11708g.h(3)) {
            f11708g.c(A(cls), y(str, objArr), th);
        }
    }

    public static void h0(String str, String str2, Throwable th) {
        if (f11708g.h(2)) {
            f11708g.g(str, str2, th);
        }
    }

    public static void i(String str, String str2) {
        if (f11708g.h(3)) {
            f11708g.d(str, str2);
        }
    }

    public static void i0(String str, String str2, Object... objArr) {
        if (f11708g.h(2)) {
            f11708g.v(str, y(str2, objArr));
        }
    }

    public static void j(String str, String str2, Object obj) {
        if (f11708g.h(3)) {
            f11708g.d(str, y(str2, obj));
        }
    }

    public static void j0(String str, Throwable th, String str2, Object... objArr) {
        if (f11708g.h(2)) {
            f11708g.g(str, y(str2, objArr), th);
        }
    }

    public static void k(String str, String str2, Object obj, Object obj2) {
        if (f11708g.h(3)) {
            f11708g.d(str, y(str2, obj, obj2));
        }
    }

    public static void k0(Class<?> cls, String str) {
        if (f11708g.h(5)) {
            f11708g.w(A(cls), str);
        }
    }

    public static void l(String str, String str2, Object obj, Object obj2, Object obj3) {
        if (f11708g.h(3)) {
            f11708g.d(str, y(str2, obj, obj2, obj3));
        }
    }

    public static void l0(Class<?> cls, String str, Throwable th) {
        if (f11708g.h(5)) {
            f11708g.w(A(cls), str, th);
        }
    }

    public static void m(String str, String str2, Object obj, Object obj2, Object obj3, Object obj4) {
        if (f11708g.h(3)) {
            f11708g.d(str, y(str2, obj, obj2, obj3, obj4));
        }
    }

    public static void m0(Class<?> cls, String str, Object... objArr) {
        if (f11708g.h(5)) {
            f11708g.w(A(cls), y(str, objArr));
        }
    }

    public static void n(String str, String str2, Throwable th) {
        if (f11708g.h(3)) {
            f11708g.c(str, str2, th);
        }
    }

    public static void n0(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (R(5)) {
            l0(cls, y(str, objArr), th);
        }
    }

    public static void o(String str, String str2, Object... objArr) {
        if (f11708g.h(3)) {
            i(str, y(str2, objArr));
        }
    }

    public static void o0(String str, String str2) {
        if (f11708g.h(5)) {
            f11708g.w(str, str2);
        }
    }

    public static void p(String str, Throwable th, String str2, Object... objArr) {
        if (f11708g.h(3)) {
            n(str, y(str2, objArr), th);
        }
    }

    public static void p0(String str, String str2, Throwable th) {
        if (f11708g.h(5)) {
            f11708g.w(str, str2, th);
        }
    }

    public static void q(Class<?> cls, String str) {
        if (f11708g.h(6)) {
            f11708g.e(A(cls), str);
        }
    }

    public static void q0(String str, String str2, Object... objArr) {
        if (f11708g.h(5)) {
            f11708g.w(str, y(str2, objArr));
        }
    }

    public static void r(Class<?> cls, String str, Throwable th) {
        if (f11708g.h(6)) {
            f11708g.e(A(cls), str, th);
        }
    }

    public static void r0(String str, Throwable th, String str2, Object... objArr) {
        if (f11708g.h(5)) {
            f11708g.w(str, y(str2, objArr), th);
        }
    }

    public static void s(Class<?> cls, String str, Object... objArr) {
        if (f11708g.h(6)) {
            f11708g.e(A(cls), y(str, objArr));
        }
    }

    public static void s0(Class<?> cls, String str) {
        if (f11708g.h(6)) {
            f11708g.b(A(cls), str);
        }
    }

    public static void t(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (f11708g.h(6)) {
            f11708g.e(A(cls), y(str, objArr), th);
        }
    }

    public static void t0(Class<?> cls, String str, Throwable th) {
        if (f11708g.h(6)) {
            f11708g.f(A(cls), str, th);
        }
    }

    public static void u(String str, String str2) {
        if (f11708g.h(6)) {
            f11708g.e(str, str2);
        }
    }

    public static void u0(Class<?> cls, String str, Object... objArr) {
        if (f11708g.h(6)) {
            f11708g.b(A(cls), y(str, objArr));
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (f11708g.h(6)) {
            f11708g.e(str, str2, th);
        }
    }

    public static void v0(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (f11708g.h(6)) {
            f11708g.f(A(cls), y(str, objArr), th);
        }
    }

    public static void w(String str, String str2, Object... objArr) {
        if (f11708g.h(6)) {
            f11708g.e(str, y(str2, objArr));
        }
    }

    public static void w0(String str, String str2) {
        if (f11708g.h(6)) {
            f11708g.b(str, str2);
        }
    }

    public static void x(String str, Throwable th, String str2, Object... objArr) {
        if (f11708g.h(6)) {
            f11708g.e(str, y(str2, objArr), th);
        }
    }

    public static void x0(String str, String str2, Throwable th) {
        if (f11708g.h(6)) {
            f11708g.f(str, str2, th);
        }
    }

    private static String y(String str, Object... objArr) {
        return String.format(null, str, objArr);
    }

    public static void y0(String str, String str2, Object... objArr) {
        if (f11708g.h(6)) {
            f11708g.b(str, y(str2, objArr));
        }
    }

    public static int z() {
        return f11708g.a();
    }

    public static void z0(String str, Throwable th, String str2, Object... objArr) {
        if (f11708g.h(6)) {
            f11708g.f(str, y(str2, objArr), th);
        }
    }
}
