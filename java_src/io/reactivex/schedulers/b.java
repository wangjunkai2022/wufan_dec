package io.reactivex.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.h0;
import io.reactivex.internal.schedulers.ExecutorScheduler;
import io.reactivex.internal.schedulers.j;
import io.reactivex.internal.schedulers.k;
import io.reactivex.internal.schedulers.l;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: Schedulers.java */
/* loaded from: classes5.dex */
public final class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    static final h0 f70271a = io.reactivex.plugins.a.J(new h());
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    static final h0 f70272b = io.reactivex.plugins.a.G(new CallableC0470b());
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    static final h0 f70273c = io.reactivex.plugins.a.H(new c());
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    static final h0 f70274d = l.k();
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    static final h0 f70275e = io.reactivex.plugins.a.I(new f());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final h0 f70276a = new io.reactivex.internal.schedulers.a();

        a() {
        }
    }

    /* compiled from: Schedulers.java */
    /* renamed from: io.reactivex.schedulers.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class CallableC0470b implements Callable<h0> {
        CallableC0470b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public h0 call() throws Exception {
            return a.f70276a;
        }
    }

    /* compiled from: Schedulers.java */
    /* loaded from: classes5.dex */
    static final class c implements Callable<h0> {
        c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public h0 call() throws Exception {
            return d.f70277a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final h0 f70277a = new io.reactivex.internal.schedulers.e();

        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes5.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        static final h0 f70278a = new io.reactivex.internal.schedulers.f();

        e() {
        }
    }

    /* compiled from: Schedulers.java */
    /* loaded from: classes5.dex */
    static final class f implements Callable<h0> {
        f() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public h0 call() throws Exception {
            return e.f70278a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Schedulers.java */
    /* loaded from: classes5.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        static final h0 f70279a = new k();

        g() {
        }
    }

    /* compiled from: Schedulers.java */
    /* loaded from: classes5.dex */
    static final class h implements Callable<h0> {
        h() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public h0 call() throws Exception {
            return g.f70279a;
        }
    }

    private b() {
        throw new IllegalStateException("No instances!");
    }

    @NonNull
    public static h0 a() {
        return io.reactivex.plugins.a.X(f70272b);
    }

    @NonNull
    public static h0 b(@NonNull Executor executor) {
        return new ExecutorScheduler(executor);
    }

    @NonNull
    public static h0 c() {
        return io.reactivex.plugins.a.Z(f70273c);
    }

    @NonNull
    public static h0 d() {
        return io.reactivex.plugins.a.a0(f70275e);
    }

    public static void e() {
        a().h();
        c().h();
        d().h();
        f().h();
        h().h();
        j.b();
    }

    @NonNull
    public static h0 f() {
        return io.reactivex.plugins.a.c0(f70271a);
    }

    public static void g() {
        a().i();
        c().i();
        d().i();
        f().i();
        h().i();
        j.c();
    }

    @NonNull
    public static h0 h() {
        return f70274d;
    }
}
