package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.observers.CallbackCompletableObserver;
import io.reactivex.internal.observers.EmptyCompletableObserver;
import io.reactivex.internal.operators.completable.CompletableCache;
import io.reactivex.internal.operators.completable.CompletableConcat;
import io.reactivex.internal.operators.completable.CompletableConcatArray;
import io.reactivex.internal.operators.completable.CompletableConcatIterable;
import io.reactivex.internal.operators.completable.CompletableCreate;
import io.reactivex.internal.operators.completable.CompletableDelay;
import io.reactivex.internal.operators.completable.CompletableDoFinally;
import io.reactivex.internal.operators.completable.CompletableMerge;
import io.reactivex.internal.operators.completable.CompletableMergeArray;
import io.reactivex.internal.operators.completable.CompletableMergeIterable;
import io.reactivex.internal.operators.completable.CompletableObserveOn;
import io.reactivex.internal.operators.completable.CompletableResumeNext;
import io.reactivex.internal.operators.completable.CompletableSubscribeOn;
import io.reactivex.internal.operators.completable.CompletableTakeUntilCompletable;
import io.reactivex.internal.operators.completable.CompletableTimer;
import io.reactivex.internal.operators.completable.CompletableUsing;
import io.reactivex.internal.operators.maybe.MaybeDelayWithCompletable;
import io.reactivex.internal.operators.mixed.CompletableAndThenObservable;
import io.reactivex.internal.operators.mixed.CompletableAndThenPublisher;
import io.reactivex.internal.operators.single.SingleDelayWithCompletable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.observers.TestObserver;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* compiled from: Completable.java */
/* loaded from: classes.dex */
public abstract class a implements g {
    @SchedulerSupport("none")
    @CheckReturnValue
    public static a A(Callable<? extends g> callable) {
        io.reactivex.internal.functions.a.g(callable, "completableSupplier");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.b(callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    private a K(w2.g<? super io.reactivex.disposables.b> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.a aVar2, w2.a aVar3, w2.a aVar4) {
        io.reactivex.internal.functions.a.g(gVar, "onSubscribe is null");
        io.reactivex.internal.functions.a.g(gVar2, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.a.g(aVar2, "onTerminate is null");
        io.reactivex.internal.functions.a.g(aVar3, "onAfterTerminate is null");
        io.reactivex.internal.functions.a.g(aVar4, "onDispose is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.v(this, gVar, gVar2, aVar, aVar2, aVar3, aVar4));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a N(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "error is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.g(th));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a O(Callable<? extends Throwable> callable) {
        io.reactivex.internal.functions.a.g(callable, "errorSupplier is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.h(callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a P(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "run is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.i(aVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    private a P0(long j4, TimeUnit timeUnit, h0 h0Var, g gVar) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.w(this, j4, timeUnit, h0Var, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a Q(Callable<?> callable) {
        io.reactivex.internal.functions.a.g(callable, "callable is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.j(callable));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public static a Q0(long j4, TimeUnit timeUnit) {
        return R0(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a R(Future<?> future) {
        io.reactivex.internal.functions.a.g(future, "future is null");
        return P(Functions.j(future));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static a R0(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new CompletableTimer(j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> a S(w<T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "maybe is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.maybe.v(wVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> a T(e0<T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "observable is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.k(e0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public static <T> a U(l3.b<T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "publisher is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.l(bVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a V(Runnable runnable) {
        io.reactivex.internal.functions.a.g(runnable, "run is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.m(runnable));
    }

    private static NullPointerException V0(Throwable th) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th);
        return nullPointerException;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> a W(o0<T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "single is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.n(o0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a Z(Iterable<? extends g> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.O(new CompletableMergeIterable(iterable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a Z0(g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "source is null");
        if (!(gVar instanceof a)) {
            return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.o(gVar));
        }
        throw new IllegalArgumentException("Use of unsafeCreate(Completable)!");
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public static a a0(l3.b<? extends g> bVar) {
        return c0(bVar, Integer.MAX_VALUE, false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static a b0(l3.b<? extends g> bVar, int i2) {
        return c0(bVar, i2, false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <R> a b1(Callable<R> callable, w2.o<? super R, ? extends g> oVar, w2.g<? super R> gVar) {
        return c1(callable, oVar, gVar, true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    private static a c0(l3.b<? extends g> bVar, int i2, boolean z3) {
        io.reactivex.internal.functions.a.g(bVar, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        return io.reactivex.plugins.a.O(new CompletableMerge(bVar, i2, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <R> a c1(Callable<R> callable, w2.o<? super R, ? extends g> oVar, w2.g<? super R> gVar, boolean z3) {
        io.reactivex.internal.functions.a.g(callable, "resourceSupplier is null");
        io.reactivex.internal.functions.a.g(oVar, "completableFunction is null");
        io.reactivex.internal.functions.a.g(gVar, "disposer is null");
        return io.reactivex.plugins.a.O(new CompletableUsing(callable, oVar, gVar, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a d0(g... gVarArr) {
        io.reactivex.internal.functions.a.g(gVarArr, "sources is null");
        if (gVarArr.length == 0) {
            return s();
        }
        if (gVarArr.length == 1) {
            return d1(gVarArr[0]);
        }
        return io.reactivex.plugins.a.O(new CompletableMergeArray(gVarArr));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a d1(g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "source is null");
        if (gVar instanceof a) {
            return io.reactivex.plugins.a.O((a) gVar);
        }
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.o(gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a e(Iterable<? extends g> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.a(null, iterable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a e0(g... gVarArr) {
        io.reactivex.internal.functions.a.g(gVarArr, "sources is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.r(gVarArr));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a f(g... gVarArr) {
        io.reactivex.internal.functions.a.g(gVarArr, "sources is null");
        if (gVarArr.length == 0) {
            return s();
        }
        if (gVarArr.length == 1) {
            return d1(gVarArr[0]);
        }
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.a(gVarArr, null));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a f0(Iterable<? extends g> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.s(iterable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public static a g0(l3.b<? extends g> bVar) {
        return c0(bVar, Integer.MAX_VALUE, true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static a h0(l3.b<? extends g> bVar, int i2) {
        return c0(bVar, i2, true);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a j0() {
        return io.reactivex.plugins.a.O(io.reactivex.internal.operators.completable.t.f66089a);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a s() {
        return io.reactivex.plugins.a.O(io.reactivex.internal.operators.completable.f.f66064a);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a u(Iterable<? extends g> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.O(new CompletableConcatIterable(iterable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static a v(l3.b<? extends g> bVar) {
        return w(bVar, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static a w(l3.b<? extends g> bVar, int i2) {
        io.reactivex.internal.functions.a.g(bVar, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.O(new CompletableConcat(bVar, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a x(g... gVarArr) {
        io.reactivex.internal.functions.a.g(gVarArr, "sources is null");
        if (gVarArr.length == 0) {
            return s();
        }
        if (gVarArr.length == 1) {
            return d1(gVarArr[0]);
        }
        return io.reactivex.plugins.a.O(new CompletableConcatArray(gVarArr));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static a z(e eVar) {
        io.reactivex.internal.functions.a.g(eVar, "source is null");
        return io.reactivex.plugins.a.O(new CompletableCreate(eVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <T> j<T> A0(l3.b<T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return T0().Z5(bVar);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final a B(long j4, TimeUnit timeUnit) {
        return D(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T> z<T> B0(z<T> zVar) {
        io.reactivex.internal.functions.a.g(zVar, "other is null");
        return zVar.l1(W0());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final a C(long j4, TimeUnit timeUnit, h0 h0Var) {
        return D(j4, timeUnit, h0Var, false);
    }

    @SchedulerSupport("none")
    public final io.reactivex.disposables.b C0() {
        EmptyCompletableObserver emptyCompletableObserver = new EmptyCompletableObserver();
        a(emptyCompletableObserver);
        return emptyCompletableObserver;
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final a D(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new CompletableDelay(this, j4, timeUnit, h0Var, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b D0(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(aVar);
        a(callbackCompletableObserver);
        return callbackCompletableObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a E(w2.a aVar) {
        w2.g<? super io.reactivex.disposables.b> h4 = Functions.h();
        w2.g<? super Throwable> h5 = Functions.h();
        w2.a aVar2 = Functions.f65824c;
        return K(h4, h5, aVar2, aVar2, aVar, aVar2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b E0(w2.a aVar, w2.g<? super Throwable> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(gVar, aVar);
        a(callbackCompletableObserver);
        return callbackCompletableObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a F(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onFinally is null");
        return io.reactivex.plugins.a.O(new CompletableDoFinally(this, aVar));
    }

    protected abstract void F0(d dVar);

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a G(w2.a aVar) {
        w2.g<? super io.reactivex.disposables.b> h4 = Functions.h();
        w2.g<? super Throwable> h5 = Functions.h();
        w2.a aVar2 = Functions.f65824c;
        return K(h4, h5, aVar, aVar2, aVar2, aVar2);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final a G0(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new CompletableSubscribeOn(this, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a H(w2.a aVar) {
        w2.g<? super io.reactivex.disposables.b> h4 = Functions.h();
        w2.g<? super Throwable> h5 = Functions.h();
        w2.a aVar2 = Functions.f65824c;
        return K(h4, h5, aVar2, aVar2, aVar2, aVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <E extends d> E H0(E e4) {
        a(e4);
        return e4;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a I(w2.g<? super Throwable> gVar) {
        w2.g<? super io.reactivex.disposables.b> h4 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return K(h4, gVar, aVar, aVar, aVar, aVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a I0(g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return io.reactivex.plugins.a.O(new CompletableTakeUntilCompletable(this, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a J(w2.g<? super Throwable> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onEvent is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.e(this, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final TestObserver<Void> J0() {
        TestObserver<Void> testObserver = new TestObserver<>();
        a(testObserver);
        return testObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final TestObserver<Void> K0(boolean z3) {
        TestObserver<Void> testObserver = new TestObserver<>();
        if (z3) {
            testObserver.cancel();
        }
        a(testObserver);
        return testObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a L(w2.g<? super io.reactivex.disposables.b> gVar) {
        w2.g<? super Throwable> h4 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return K(gVar, h4, aVar, aVar, aVar, aVar);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final a L0(long j4, TimeUnit timeUnit) {
        return P0(j4, timeUnit, io.reactivex.schedulers.b.a(), null);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a M(w2.a aVar) {
        w2.g<? super io.reactivex.disposables.b> h4 = Functions.h();
        w2.g<? super Throwable> h5 = Functions.h();
        w2.a aVar2 = Functions.f65824c;
        return K(h4, h5, aVar2, aVar, aVar2, aVar2);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final a M0(long j4, TimeUnit timeUnit, g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return P0(j4, timeUnit, io.reactivex.schedulers.b.a(), gVar);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final a N0(long j4, TimeUnit timeUnit, h0 h0Var) {
        return P0(j4, timeUnit, h0Var, null);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final a O0(long j4, TimeUnit timeUnit, h0 h0Var, g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return P0(j4, timeUnit, h0Var, gVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> U S0(w2.o<? super a, U> oVar) {
        try {
            return (U) ((w2.o) io.reactivex.internal.functions.a.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.e(th);
        }
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <T> j<T> T0() {
        if (this instanceof x2.b) {
            return ((x2.b) this).d();
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.completable.x(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T> q<T> U0() {
        if (this instanceof x2.c) {
            return ((x2.c) this).c();
        }
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.p(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T> z<T> W0() {
        if (this instanceof x2.d) {
            return ((x2.d) this).b();
        }
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.completable.y(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a X() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.p(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T> i0<T> X0(Callable<? extends T> callable) {
        io.reactivex.internal.functions.a.g(callable, "completionValueSupplier is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.completable.z(this, callable, null));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a Y(f fVar) {
        io.reactivex.internal.functions.a.g(fVar, "onLift is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.q(this, fVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T> i0<T> Y0(T t3) {
        io.reactivex.internal.functions.a.g(t3, "completionValue is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.completable.z(this, null, t3));
    }

    @Override // io.reactivex.g
    @SchedulerSupport("none")
    public final void a(d dVar) {
        io.reactivex.internal.functions.a.g(dVar, "s is null");
        try {
            d d02 = io.reactivex.plugins.a.d0(this, dVar);
            io.reactivex.internal.functions.a.g(d02, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            F0(d02);
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
            throw V0(th);
        }
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final a a1(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.d(this, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a g(g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return f(this, gVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a h(g gVar) {
        return y(gVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <T> j<T> i(l3.b<T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "next is null");
        return io.reactivex.plugins.a.P(new CompletableAndThenPublisher(this, bVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a i0(g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return d0(this, gVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T> q<T> j(w<T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "next is null");
        return io.reactivex.plugins.a.Q(new MaybeDelayWithCompletable(wVar, this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T> z<T> k(e0<T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "next is null");
        return io.reactivex.plugins.a.R(new CompletableAndThenObservable(this, e0Var));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final a k0(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new CompletableObserveOn(this, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T> i0<T> l(o0<T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "next is null");
        return io.reactivex.plugins.a.S(new SingleDelayWithCompletable(o0Var, this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a l0() {
        return m0(Functions.c());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> R m(@NonNull b<? extends R> bVar) {
        return (R) ((b) io.reactivex.internal.functions.a.g(bVar, "converter is null")).a(this);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a m0(w2.r<? super Throwable> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.u(this, rVar));
    }

    @SchedulerSupport("none")
    public final void n() {
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        a(fVar);
        fVar.b();
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a n0(w2.o<? super Throwable, ? extends g> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "errorMapper is null");
        return io.reactivex.plugins.a.O(new CompletableResumeNext(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final boolean o(long j4, TimeUnit timeUnit) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        a(fVar);
        return fVar.a(j4, timeUnit);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a o0() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.c(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final Throwable p() {
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        a(fVar);
        return fVar.d();
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a p0() {
        return U(T0().Q4());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final Throwable q(long j4, TimeUnit timeUnit) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        a(fVar);
        return fVar.e(j4, timeUnit);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a q0(long j4) {
        return U(T0().R4(j4));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a r() {
        return io.reactivex.plugins.a.O(new CompletableCache(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a r0(w2.e eVar) {
        return U(T0().S4(eVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a s0(w2.o<? super j<Object>, ? extends l3.b<?>> oVar) {
        return U(T0().T4(oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a t(h hVar) {
        return d1(((h) io.reactivex.internal.functions.a.g(hVar, "transformer is null")).a(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a t0() {
        return U(T0().k5());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a u0(long j4) {
        return U(T0().l5(j4));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a v0(long j4, w2.r<? super Throwable> rVar) {
        return U(T0().m5(j4, rVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a w0(w2.d<? super Integer, ? super Throwable> dVar) {
        return U(T0().n5(dVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a x0(w2.r<? super Throwable> rVar) {
        return U(T0().o5(rVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a y(g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return x(this, gVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a y0(w2.o<? super j<Throwable>, ? extends l3.b<?>> oVar) {
        return U(T0().q5(oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a z0(g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return x(gVar, this);
    }
}
