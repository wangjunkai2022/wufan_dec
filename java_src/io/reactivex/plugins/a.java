package io.reactivex.plugins;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.d;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.exceptions.UndeliverableException;
import io.reactivex.g0;
import io.reactivex.h0;
import io.reactivex.i0;
import io.reactivex.internal.schedulers.f;
import io.reactivex.internal.schedulers.k;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.j;
import io.reactivex.l0;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.z;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;
import w2.c;
import w2.e;
import w2.g;
import w2.o;
/* compiled from: RxJavaPlugins.java */
/* loaded from: classes5.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    static volatile g<? super Throwable> f70148a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    static volatile o<? super Runnable, ? extends Runnable> f70149b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    static volatile o<? super Callable<h0>, ? extends h0> f70150c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    static volatile o<? super Callable<h0>, ? extends h0> f70151d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    static volatile o<? super Callable<h0>, ? extends h0> f70152e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    static volatile o<? super Callable<h0>, ? extends h0> f70153f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    static volatile o<? super h0, ? extends h0> f70154g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    static volatile o<? super h0, ? extends h0> f70155h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    static volatile o<? super h0, ? extends h0> f70156i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    static volatile o<? super h0, ? extends h0> f70157j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    static volatile o<? super j, ? extends j> f70158k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    static volatile o<? super io.reactivex.flowables.a, ? extends io.reactivex.flowables.a> f70159l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    static volatile o<? super z, ? extends z> f70160m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    static volatile o<? super io.reactivex.observables.a, ? extends io.reactivex.observables.a> f70161n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    static volatile o<? super q, ? extends q> f70162o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    static volatile o<? super i0, ? extends i0> f70163p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    static volatile o<? super io.reactivex.a, ? extends io.reactivex.a> f70164q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    static volatile o<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> f70165r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    static volatile c<? super j, ? super l3.c, ? extends l3.c> f70166s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    static volatile c<? super q, ? super t, ? extends t> f70167t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    static volatile c<? super z, ? super g0, ? extends g0> f70168u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    static volatile c<? super i0, ? super l0, ? extends l0> f70169v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    static volatile c<? super io.reactivex.a, ? super d, ? extends d> f70170w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    static volatile e f70171x;

    /* renamed from: y  reason: collision with root package name */
    static volatile boolean f70172y;

    /* renamed from: z  reason: collision with root package name */
    static volatile boolean f70173z;

    private a() {
        throw new IllegalStateException("No instances!");
    }

    @Nullable
    public static c<? super z, ? super g0, ? extends g0> A() {
        return f70168u;
    }

    public static void A0(@Nullable c<? super q, t, ? extends t> cVar) {
        if (!f70172y) {
            f70167t = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> B() {
        return f70165r;
    }

    public static void B0(@Nullable o<? super z, ? extends z> oVar) {
        if (!f70172y) {
            f70160m = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super i0, ? extends i0> C() {
        return f70163p;
    }

    public static void C0(@Nullable c<? super z, ? super g0, ? extends g0> cVar) {
        if (!f70172y) {
            f70168u = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static c<? super i0, ? super l0, ? extends l0> D() {
        return f70169v;
    }

    public static void D0(@Nullable o<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> oVar) {
        if (!f70172y) {
            f70165r = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super Runnable, ? extends Runnable> E() {
        return f70149b;
    }

    public static void E0(@Nullable o<? super i0, ? extends i0> oVar) {
        if (!f70172y) {
            f70163p = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super h0, ? extends h0> F() {
        return f70155h;
    }

    public static void F0(@Nullable c<? super i0, ? super l0, ? extends l0> cVar) {
        if (!f70172y) {
            f70169v = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @NonNull
    public static h0 G(@NonNull Callable<h0> callable) {
        io.reactivex.internal.functions.a.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<h0>, ? extends h0> oVar = f70150c;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    public static void G0(@Nullable o<? super Runnable, ? extends Runnable> oVar) {
        if (!f70172y) {
            f70149b = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @NonNull
    public static h0 H(@NonNull Callable<h0> callable) {
        io.reactivex.internal.functions.a.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<h0>, ? extends h0> oVar = f70152e;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    public static void H0(@Nullable o<? super h0, ? extends h0> oVar) {
        if (!f70172y) {
            f70155h = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @NonNull
    public static h0 I(@NonNull Callable<h0> callable) {
        io.reactivex.internal.functions.a.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<h0>, ? extends h0> oVar = f70153f;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    static void I0(@NonNull Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }

    @NonNull
    public static h0 J(@NonNull Callable<h0> callable) {
        io.reactivex.internal.functions.a.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<h0>, ? extends h0> oVar = f70151d;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    static void J0() {
        f70172y = false;
    }

    static boolean K(Throwable th) {
        return (th instanceof OnErrorNotImplementedException) || (th instanceof MissingBackpressureException) || (th instanceof IllegalStateException) || (th instanceof NullPointerException) || (th instanceof IllegalArgumentException) || (th instanceof CompositeException);
    }

    public static boolean L() {
        return f70173z;
    }

    public static boolean M() {
        return f70172y;
    }

    public static void N() {
        f70172y = true;
    }

    @NonNull
    public static io.reactivex.a O(@NonNull io.reactivex.a aVar) {
        o<? super io.reactivex.a, ? extends io.reactivex.a> oVar = f70164q;
        return oVar != null ? (io.reactivex.a) b(oVar, aVar) : aVar;
    }

    @NonNull
    public static <T> j<T> P(@NonNull j<T> jVar) {
        o<? super j, ? extends j> oVar = f70158k;
        return oVar != null ? (j) b(oVar, jVar) : jVar;
    }

    @NonNull
    public static <T> q<T> Q(@NonNull q<T> qVar) {
        o<? super q, ? extends q> oVar = f70162o;
        return oVar != null ? (q) b(oVar, qVar) : qVar;
    }

    @NonNull
    public static <T> z<T> R(@NonNull z<T> zVar) {
        o<? super z, ? extends z> oVar = f70160m;
        return oVar != null ? (z) b(oVar, zVar) : zVar;
    }

    @NonNull
    public static <T> i0<T> S(@NonNull i0<T> i0Var) {
        o<? super i0, ? extends i0> oVar = f70163p;
        return oVar != null ? (i0) b(oVar, i0Var) : i0Var;
    }

    @NonNull
    public static <T> io.reactivex.flowables.a<T> T(@NonNull io.reactivex.flowables.a<T> aVar) {
        o<? super io.reactivex.flowables.a, ? extends io.reactivex.flowables.a> oVar = f70159l;
        return oVar != null ? (io.reactivex.flowables.a) b(oVar, aVar) : aVar;
    }

    @NonNull
    public static <T> io.reactivex.observables.a<T> U(@NonNull io.reactivex.observables.a<T> aVar) {
        o<? super io.reactivex.observables.a, ? extends io.reactivex.observables.a> oVar = f70161n;
        return oVar != null ? (io.reactivex.observables.a) b(oVar, aVar) : aVar;
    }

    @NonNull
    public static <T> io.reactivex.parallel.a<T> V(@NonNull io.reactivex.parallel.a<T> aVar) {
        o<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> oVar = f70165r;
        return oVar != null ? (io.reactivex.parallel.a) b(oVar, aVar) : aVar;
    }

    public static boolean W() {
        e eVar = f70171x;
        if (eVar != null) {
            try {
                return eVar.a();
            } catch (Throwable th) {
                throw ExceptionHelper.e(th);
            }
        }
        return false;
    }

    @NonNull
    public static h0 X(@NonNull h0 h0Var) {
        o<? super h0, ? extends h0> oVar = f70154g;
        return oVar == null ? h0Var : (h0) b(oVar, h0Var);
    }

    public static void Y(@NonNull Throwable th) {
        g<? super Throwable> gVar = f70148a;
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!K(th)) {
            th = new UndeliverableException(th);
        }
        if (gVar != null) {
            try {
                gVar.accept(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                I0(th2);
            }
        }
        th.printStackTrace();
        I0(th);
    }

    @NonNull
    public static h0 Z(@NonNull h0 h0Var) {
        o<? super h0, ? extends h0> oVar = f70156i;
        return oVar == null ? h0Var : (h0) b(oVar, h0Var);
    }

    @NonNull
    static <T, U, R> R a(@NonNull c<T, U, R> cVar, @NonNull T t3, @NonNull U u3) {
        try {
            return cVar.apply(t3, u3);
        } catch (Throwable th) {
            throw ExceptionHelper.e(th);
        }
    }

    @NonNull
    public static h0 a0(@NonNull h0 h0Var) {
        o<? super h0, ? extends h0> oVar = f70157j;
        return oVar == null ? h0Var : (h0) b(oVar, h0Var);
    }

    @NonNull
    static <T, R> R b(@NonNull o<T, R> oVar, @NonNull T t3) {
        try {
            return oVar.apply(t3);
        } catch (Throwable th) {
            throw ExceptionHelper.e(th);
        }
    }

    @NonNull
    public static Runnable b0(@NonNull Runnable runnable) {
        io.reactivex.internal.functions.a.g(runnable, "run is null");
        o<? super Runnable, ? extends Runnable> oVar = f70149b;
        return oVar == null ? runnable : (Runnable) b(oVar, runnable);
    }

    @NonNull
    static h0 c(@NonNull o<? super Callable<h0>, ? extends h0> oVar, Callable<h0> callable) {
        return (h0) io.reactivex.internal.functions.a.g(b(oVar, callable), "Scheduler Callable result can't be null");
    }

    @NonNull
    public static h0 c0(@NonNull h0 h0Var) {
        o<? super h0, ? extends h0> oVar = f70155h;
        return oVar == null ? h0Var : (h0) b(oVar, h0Var);
    }

    @NonNull
    static h0 d(@NonNull Callable<h0> callable) {
        try {
            return (h0) io.reactivex.internal.functions.a.g(callable.call(), "Scheduler Callable result can't be null");
        } catch (Throwable th) {
            throw ExceptionHelper.e(th);
        }
    }

    @NonNull
    public static d d0(@NonNull io.reactivex.a aVar, @NonNull d dVar) {
        c<? super io.reactivex.a, ? super d, ? extends d> cVar = f70170w;
        return cVar != null ? (d) a(cVar, aVar, dVar) : dVar;
    }

    @NonNull
    public static h0 e(@NonNull ThreadFactory threadFactory) {
        return new io.reactivex.internal.schedulers.a((ThreadFactory) io.reactivex.internal.functions.a.g(threadFactory, "threadFactory is null"));
    }

    @NonNull
    public static <T> t<? super T> e0(@NonNull q<T> qVar, @NonNull t<? super T> tVar) {
        c<? super q, ? super t, ? extends t> cVar = f70167t;
        return cVar != null ? (t) a(cVar, qVar, tVar) : tVar;
    }

    @NonNull
    public static h0 f(@NonNull ThreadFactory threadFactory) {
        return new io.reactivex.internal.schedulers.e((ThreadFactory) io.reactivex.internal.functions.a.g(threadFactory, "threadFactory is null"));
    }

    @NonNull
    public static <T> g0<? super T> f0(@NonNull z<T> zVar, @NonNull g0<? super T> g0Var) {
        c<? super z, ? super g0, ? extends g0> cVar = f70168u;
        return cVar != null ? (g0) a(cVar, zVar, g0Var) : g0Var;
    }

    @NonNull
    public static h0 g(@NonNull ThreadFactory threadFactory) {
        return new f((ThreadFactory) io.reactivex.internal.functions.a.g(threadFactory, "threadFactory is null"));
    }

    @NonNull
    public static <T> l0<? super T> g0(@NonNull i0<T> i0Var, @NonNull l0<? super T> l0Var) {
        c<? super i0, ? super l0, ? extends l0> cVar = f70169v;
        return cVar != null ? (l0) a(cVar, i0Var, l0Var) : l0Var;
    }

    @NonNull
    public static h0 h(@NonNull ThreadFactory threadFactory) {
        return new k((ThreadFactory) io.reactivex.internal.functions.a.g(threadFactory, "threadFactory is null"));
    }

    @NonNull
    public static <T> l3.c<? super T> h0(@NonNull j<T> jVar, @NonNull l3.c<? super T> cVar) {
        c<? super j, ? super l3.c, ? extends l3.c> cVar2 = f70166s;
        return cVar2 != null ? (l3.c) a(cVar2, jVar, cVar) : cVar;
    }

    @Nullable
    public static o<? super h0, ? extends h0> i() {
        return f70154g;
    }

    public static void i0() {
        k0(null);
        G0(null);
        j0(null);
        m0(null);
        q0(null);
        n0(null);
        H0(null);
        p0(null);
        r0(null);
        o0(null);
        x0(null);
        y0(null);
        B0(null);
        C0(null);
        E0(null);
        F0(null);
        t0(null);
        u0(null);
        v0(null);
        w0(null);
        z0(null);
        A0(null);
        D0(null);
        l0(false);
        s0(null);
    }

    @Nullable
    public static g<? super Throwable> j() {
        return f70148a;
    }

    public static void j0(@Nullable o<? super h0, ? extends h0> oVar) {
        if (!f70172y) {
            f70154g = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super Callable<h0>, ? extends h0> k() {
        return f70150c;
    }

    public static void k0(@Nullable g<? super Throwable> gVar) {
        if (!f70172y) {
            f70148a = gVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super Callable<h0>, ? extends h0> l() {
        return f70152e;
    }

    public static void l0(boolean z3) {
        if (!f70172y) {
            f70173z = z3;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super Callable<h0>, ? extends h0> m() {
        return f70153f;
    }

    public static void m0(@Nullable o<? super Callable<h0>, ? extends h0> oVar) {
        if (!f70172y) {
            f70150c = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super Callable<h0>, ? extends h0> n() {
        return f70151d;
    }

    public static void n0(@Nullable o<? super Callable<h0>, ? extends h0> oVar) {
        if (!f70172y) {
            f70152e = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super h0, ? extends h0> o() {
        return f70156i;
    }

    public static void o0(@Nullable o<? super Callable<h0>, ? extends h0> oVar) {
        if (!f70172y) {
            f70153f = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super h0, ? extends h0> p() {
        return f70157j;
    }

    public static void p0(@Nullable o<? super Callable<h0>, ? extends h0> oVar) {
        if (!f70172y) {
            f70151d = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static e q() {
        return f70171x;
    }

    public static void q0(@Nullable o<? super h0, ? extends h0> oVar) {
        if (!f70172y) {
            f70156i = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super io.reactivex.a, ? extends io.reactivex.a> r() {
        return f70164q;
    }

    public static void r0(@Nullable o<? super h0, ? extends h0> oVar) {
        if (!f70172y) {
            f70157j = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static c<? super io.reactivex.a, ? super d, ? extends d> s() {
        return f70170w;
    }

    public static void s0(@Nullable e eVar) {
        if (!f70172y) {
            f70171x = eVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super io.reactivex.flowables.a, ? extends io.reactivex.flowables.a> t() {
        return f70159l;
    }

    public static void t0(@Nullable o<? super io.reactivex.a, ? extends io.reactivex.a> oVar) {
        if (!f70172y) {
            f70164q = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super io.reactivex.observables.a, ? extends io.reactivex.observables.a> u() {
        return f70161n;
    }

    public static void u0(@Nullable c<? super io.reactivex.a, ? super d, ? extends d> cVar) {
        if (!f70172y) {
            f70170w = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super j, ? extends j> v() {
        return f70158k;
    }

    public static void v0(@Nullable o<? super io.reactivex.flowables.a, ? extends io.reactivex.flowables.a> oVar) {
        if (!f70172y) {
            f70159l = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static c<? super j, ? super l3.c, ? extends l3.c> w() {
        return f70166s;
    }

    public static void w0(@Nullable o<? super io.reactivex.observables.a, ? extends io.reactivex.observables.a> oVar) {
        if (!f70172y) {
            f70161n = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super q, ? extends q> x() {
        return f70162o;
    }

    public static void x0(@Nullable o<? super j, ? extends j> oVar) {
        if (!f70172y) {
            f70158k = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static c<? super q, ? super t, ? extends t> y() {
        return f70167t;
    }

    public static void y0(@Nullable c<? super j, ? super l3.c, ? extends l3.c> cVar) {
        if (!f70172y) {
            f70166s = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @Nullable
    public static o<? super z, ? extends z> z() {
        return f70160m;
    }

    public static void z0(@Nullable o<? super q, ? extends q> oVar) {
        if (!f70172y) {
            f70162o = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }
}
