package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.maybe.MaybeAmb;
import io.reactivex.internal.operators.maybe.MaybeCache;
import io.reactivex.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.internal.operators.maybe.MaybeConcatArray;
import io.reactivex.internal.operators.maybe.MaybeConcatArrayDelayError;
import io.reactivex.internal.operators.maybe.MaybeConcatIterable;
import io.reactivex.internal.operators.maybe.MaybeCreate;
import io.reactivex.internal.operators.maybe.MaybeDelay;
import io.reactivex.internal.operators.maybe.MaybeDelayOtherPublisher;
import io.reactivex.internal.operators.maybe.MaybeDelaySubscriptionOtherPublisher;
import io.reactivex.internal.operators.maybe.MaybeDoFinally;
import io.reactivex.internal.operators.maybe.MaybeEqualSingle;
import io.reactivex.internal.operators.maybe.MaybeFlatMapBiSelector;
import io.reactivex.internal.operators.maybe.MaybeFlatMapCompletable;
import io.reactivex.internal.operators.maybe.MaybeFlatMapIterableFlowable;
import io.reactivex.internal.operators.maybe.MaybeFlatMapNotification;
import io.reactivex.internal.operators.maybe.MaybeFlatMapSingle;
import io.reactivex.internal.operators.maybe.MaybeFlatMapSingleElement;
import io.reactivex.internal.operators.maybe.MaybeFlatten;
import io.reactivex.internal.operators.maybe.MaybeMergeArray;
import io.reactivex.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.internal.operators.maybe.MaybeOnErrorNext;
import io.reactivex.internal.operators.maybe.MaybeSubscribeOn;
import io.reactivex.internal.operators.maybe.MaybeSwitchIfEmpty;
import io.reactivex.internal.operators.maybe.MaybeSwitchIfEmptySingle;
import io.reactivex.internal.operators.maybe.MaybeTakeUntilMaybe;
import io.reactivex.internal.operators.maybe.MaybeTakeUntilPublisher;
import io.reactivex.internal.operators.maybe.MaybeTimeoutMaybe;
import io.reactivex.internal.operators.maybe.MaybeTimeoutPublisher;
import io.reactivex.internal.operators.maybe.MaybeTimer;
import io.reactivex.internal.operators.maybe.MaybeToFlowable;
import io.reactivex.internal.operators.maybe.MaybeToObservable;
import io.reactivex.internal.operators.maybe.MaybeToPublisher;
import io.reactivex.internal.operators.maybe.MaybeUnsubscribeOn;
import io.reactivex.internal.operators.maybe.MaybeUsing;
import io.reactivex.internal.operators.maybe.MaybeZipArray;
import io.reactivex.internal.operators.mixed.MaybeFlatMapObservable;
import io.reactivex.internal.operators.mixed.MaybeFlatMapPublisher;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.observers.TestObserver;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* compiled from: Maybe.java */
/* loaded from: classes.dex */
public abstract class q<T> implements w<T> {
    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> A0(l3.b<? extends w<? extends T>> bVar) {
        return B0(bVar, Integer.MAX_VALUE);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> B0(l3.b<? extends w<? extends T>> bVar, int i2) {
        io.reactivex.internal.functions.a.g(bVar, "source is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.e0(bVar, MaybeToPublisher.instance(), false, i2, 1));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> C0(w<? extends w<? extends T>> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "source is null");
        return io.reactivex.plugins.a.Q(new MaybeFlatten(wVar, Functions.k()));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> D(u<T> uVar) {
        io.reactivex.internal.functions.a.g(uVar, "onSubscribe is null");
        return io.reactivex.plugins.a.Q(new MaybeCreate(uVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> D0(w<? extends T>... wVarArr) {
        io.reactivex.internal.functions.a.g(wVarArr, "sources is null");
        if (wVarArr.length == 0) {
            return j.h2();
        }
        if (wVarArr.length == 1) {
            return io.reactivex.plugins.a.P(new MaybeToFlowable(wVarArr[0]));
        }
        return io.reactivex.plugins.a.P(new MaybeMergeArray(wVarArr));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> E0(w<? extends T>... wVarArr) {
        if (wVarArr.length == 0) {
            return j.h2();
        }
        return j.O2(wVarArr).y2(MaybeToPublisher.instance(), true, wVarArr.length);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> F(Callable<? extends w<? extends T>> callable) {
        io.reactivex.internal.functions.a.g(callable, "maybeSupplier is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.d(callable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> F0(w<? extends T> wVar, w<? extends T> wVar2) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        return E0(wVar, wVar2);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public static q<Long> F1(long j4, TimeUnit timeUnit) {
        return G1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> G0(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        return E0(wVar, wVar2, wVar3);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static q<Long> G1(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.Q(new MaybeTimer(Math.max(0L, j4), timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> H0(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3, w<? extends T> wVar4) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(wVar4, "source4 is null");
        return E0(wVar, wVar2, wVar3, wVar4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> I0(Iterable<? extends w<? extends T>> iterable) {
        return j.U2(iterable).x2(MaybeToPublisher.instance(), true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> J0(l3.b<? extends w<? extends T>> bVar) {
        return K0(bVar, Integer.MAX_VALUE);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> K0(l3.b<? extends w<? extends T>> bVar, int i2) {
        io.reactivex.internal.functions.a.g(bVar, "source is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.e0(bVar, MaybeToPublisher.instance(), true, i2, 1));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> M0() {
        return io.reactivex.plugins.a.Q(io.reactivex.internal.operators.maybe.b0.f67822a);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> M1(w<T> wVar) {
        if (!(wVar instanceof q)) {
            io.reactivex.internal.functions.a.g(wVar, "onSubscribe is null");
            return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.g0(wVar));
        }
        throw new IllegalArgumentException("unsafeCreate(Maybe) should be upgraded");
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, D> q<T> O1(Callable<? extends D> callable, w2.o<? super D, ? extends w<? extends T>> oVar, w2.g<? super D> gVar) {
        return P1(callable, oVar, gVar, true);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, D> q<T> P1(Callable<? extends D> callable, w2.o<? super D, ? extends w<? extends T>> oVar, w2.g<? super D> gVar, boolean z3) {
        io.reactivex.internal.functions.a.g(callable, "resourceSupplier is null");
        io.reactivex.internal.functions.a.g(oVar, "sourceSupplier is null");
        io.reactivex.internal.functions.a.g(gVar, "disposer is null");
        return io.reactivex.plugins.a.Q(new MaybeUsing(callable, oVar, gVar, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> Q1(w<T> wVar) {
        if (wVar instanceof q) {
            return io.reactivex.plugins.a.Q((q) wVar);
        }
        io.reactivex.internal.functions.a.g(wVar, "onSubscribe is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.g0(wVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> q<R> R1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, w<? extends T7> wVar7, w<? extends T8> wVar8, w<? extends T9> wVar9, w2.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(wVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(wVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(wVar6, "source6 is null");
        io.reactivex.internal.functions.a.g(wVar7, "source7 is null");
        io.reactivex.internal.functions.a.g(wVar8, "source8 is null");
        io.reactivex.internal.functions.a.g(wVar9, "source9 is null");
        return a2(Functions.E(nVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6, wVar7, wVar8, wVar9);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> q<R> S1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, w<? extends T7> wVar7, w<? extends T8> wVar8, w2.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(wVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(wVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(wVar6, "source6 is null");
        io.reactivex.internal.functions.a.g(wVar7, "source7 is null");
        io.reactivex.internal.functions.a.g(wVar8, "source8 is null");
        return a2(Functions.D(mVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6, wVar7, wVar8);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, R> q<R> T1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, w<? extends T7> wVar7, w2.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(wVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(wVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(wVar6, "source6 is null");
        io.reactivex.internal.functions.a.g(wVar7, "source7 is null");
        return a2(Functions.C(lVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6, wVar7);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, R> q<R> U1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, w2.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(wVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(wVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(wVar6, "source6 is null");
        return a2(Functions.B(kVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> V() {
        return io.reactivex.plugins.a.Q(io.reactivex.internal.operators.maybe.h.f67859a);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, R> q<R> V1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w2.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(wVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(wVar5, "source5 is null");
        return a2(Functions.A(jVar), wVar, wVar2, wVar3, wVar4, wVar5);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> W(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "exception is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.i(th));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, R> q<R> W1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w2.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(wVar4, "source4 is null");
        return a2(Functions.z(iVar), wVar, wVar2, wVar3, wVar4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> X(Callable<? extends Throwable> callable) {
        io.reactivex.internal.functions.a.g(callable, "errorSupplier is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.j(callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, R> q<R> X1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w2.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        return a2(Functions.y(hVar), wVar, wVar2, wVar3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, R> q<R> Y1(w<? extends T1> wVar, w<? extends T2> wVar2, w2.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        return a2(Functions.x(cVar), wVar, wVar2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> q<R> Z1(Iterable<? extends w<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.h0(iterable, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> q<R> a2(w2.o<? super Object[], ? extends R> oVar, w<? extends T>... wVarArr) {
        io.reactivex.internal.functions.a.g(wVarArr, "sources is null");
        if (wVarArr.length == 0) {
            return V();
        }
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        return io.reactivex.plugins.a.Q(new MaybeZipArray(wVarArr, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> c(Iterable<? extends w<? extends T>> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.Q(new MaybeAmb(null, iterable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> e(w<? extends T>... wVarArr) {
        if (wVarArr.length == 0) {
            return V();
        }
        if (wVarArr.length == 1) {
            return Q1(wVarArr[0]);
        }
        return io.reactivex.plugins.a.Q(new MaybeAmb(wVarArr, null));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<Boolean> i1(w<? extends T> wVar, w<? extends T> wVar2) {
        return j1(wVar, wVar2, io.reactivex.internal.functions.a.d());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> j0(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "run is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.n(aVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<Boolean> j1(w<? extends T> wVar, w<? extends T> wVar2, w2.d<? super T, ? super T> dVar) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(dVar, "isEqual is null");
        return io.reactivex.plugins.a.S(new MaybeEqualSingle(wVar, wVar2, dVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> k0(@NonNull Callable<? extends T> callable) {
        io.reactivex.internal.functions.a.g(callable, "callable is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.o(callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> l0(g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "completableSource is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.p(gVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> m(w<? extends T> wVar, w<? extends T> wVar2) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        return s(wVar, wVar2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> m0(Future<? extends T> future) {
        io.reactivex.internal.functions.a.g(future, "future is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.q(future, 0L, null));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> n(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        return s(wVar, wVar2, wVar3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> n0(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        io.reactivex.internal.functions.a.g(future, "future is null");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.q(future, j4, timeUnit));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> o(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3, w<? extends T> wVar4) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(wVar4, "source4 is null");
        return s(wVar, wVar2, wVar3, wVar4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> o0(Runnable runnable) {
        io.reactivex.internal.functions.a.g(runnable, "run is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.r(runnable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> p(Iterable<? extends w<? extends T>> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.P(new MaybeConcatIterable(iterable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> p0(o0<T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "singleSource is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.s(o0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> q(l3.b<? extends w<? extends T>> bVar) {
        return r(bVar, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> r(l3.b<? extends w<? extends T>> bVar, int i2) {
        io.reactivex.internal.functions.a.g(bVar, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.n(bVar, MaybeToPublisher.instance(), i2, ErrorMode.IMMEDIATE));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> s(w<? extends T>... wVarArr) {
        io.reactivex.internal.functions.a.g(wVarArr, "sources is null");
        if (wVarArr.length == 0) {
            return j.h2();
        }
        if (wVarArr.length == 1) {
            return io.reactivex.plugins.a.P(new MaybeToFlowable(wVarArr[0]));
        }
        return io.reactivex.plugins.a.P(new MaybeConcatArray(wVarArr));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> t(w<? extends T>... wVarArr) {
        if (wVarArr.length == 0) {
            return j.h2();
        }
        if (wVarArr.length == 1) {
            return io.reactivex.plugins.a.P(new MaybeToFlowable(wVarArr[0]));
        }
        return io.reactivex.plugins.a.P(new MaybeConcatArrayDelayError(wVarArr));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> q<T> t0(T t3) {
        io.reactivex.internal.functions.a.g(t3, "item is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.y(t3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> u(w<? extends T>... wVarArr) {
        return j.O2(wVarArr).Y0(MaybeToPublisher.instance());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> v(Iterable<? extends w<? extends T>> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return j.U2(iterable).W0(MaybeToPublisher.instance());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> w(l3.b<? extends w<? extends T>> bVar) {
        return j.V2(bVar).W0(MaybeToPublisher.instance());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> w0(w<? extends T> wVar, w<? extends T> wVar2) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        return D0(wVar, wVar2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> x(Iterable<? extends w<? extends T>> iterable) {
        return j.U2(iterable).Y0(MaybeToPublisher.instance());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> x0(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        return D0(wVar, wVar2, wVar3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> y(l3.b<? extends w<? extends T>> bVar) {
        return j.V2(bVar).Y0(MaybeToPublisher.instance());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> y0(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3, w<? extends T> wVar4) {
        io.reactivex.internal.functions.a.g(wVar, "source1 is null");
        io.reactivex.internal.functions.a.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(wVar4, "source4 is null");
        return D0(wVar, wVar2, wVar3, wVar4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> z0(Iterable<? extends w<? extends T>> iterable) {
        return A0(j.U2(iterable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> A(w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return m(this, wVar);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final q<T> A1(long j4, TimeUnit timeUnit, h0 h0Var, w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "fallback is null");
        return C1(G1(j4, timeUnit, h0Var), wVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<Boolean> B(Object obj) {
        io.reactivex.internal.functions.a.g(obj, "item is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.maybe.b(this, obj));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> q<T> B1(w<U> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "timeoutIndicator is null");
        return io.reactivex.plugins.a.Q(new MaybeTimeoutMaybe(this, wVar, null));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<Long> C() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.maybe.c(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> q<T> C1(w<U> wVar, w<? extends T> wVar2) {
        io.reactivex.internal.functions.a.g(wVar, "timeoutIndicator is null");
        io.reactivex.internal.functions.a.g(wVar2, "fallback is null");
        return io.reactivex.plugins.a.Q(new MaybeTimeoutMaybe(this, wVar, wVar2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <U> q<T> D1(l3.b<U> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "timeoutIndicator is null");
        return io.reactivex.plugins.a.Q(new MaybeTimeoutPublisher(this, bVar, null));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> E(T t3) {
        io.reactivex.internal.functions.a.g(t3, "item is null");
        return r1(t0(t3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <U> q<T> E1(l3.b<U> bVar, w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(bVar, "timeoutIndicator is null");
        io.reactivex.internal.functions.a.g(wVar, "fallback is null");
        return io.reactivex.plugins.a.Q(new MaybeTimeoutPublisher(this, bVar, wVar));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final q<T> G(long j4, TimeUnit timeUnit) {
        return H(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final q<T> H(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.Q(new MaybeDelay(this, Math.max(0L, j4), timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> R H1(w2.o<? super q<T>, R> oVar) {
        try {
            return (R) ((w2.o) io.reactivex.internal.functions.a.g(oVar, "convert is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.e(th);
        }
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <U, V> q<T> I(l3.b<U> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "delayIndicator is null");
        return io.reactivex.plugins.a.Q(new MaybeDelayOtherPublisher(this, bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> I1() {
        if (this instanceof x2.b) {
            return ((x2.b) this).d();
        }
        return io.reactivex.plugins.a.P(new MaybeToFlowable(this));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final q<T> J(long j4, TimeUnit timeUnit) {
        return K(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> J1() {
        if (this instanceof x2.d) {
            return ((x2.d) this).b();
        }
        return io.reactivex.plugins.a.R(new MaybeToObservable(this));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final q<T> K(long j4, TimeUnit timeUnit, h0 h0Var) {
        return L(j.s7(j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> K1() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.maybe.f0(this, null));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <U> q<T> L(l3.b<U> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "subscriptionIndicator is null");
        return io.reactivex.plugins.a.Q(new MaybeDelaySubscriptionOtherPublisher(this, bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> L0(w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return w0(this, wVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> L1(T t3) {
        io.reactivex.internal.functions.a.g(t3, "defaultValue is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.maybe.f0(this, t3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> M(w2.g<? super T> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "doAfterSuccess is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.f(this, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> N(w2.a aVar) {
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.g h6 = Functions.h();
        w2.a aVar2 = Functions.f65824c;
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.e0(this, h4, h5, h6, aVar2, (w2.a) io.reactivex.internal.functions.a.g(aVar, "onAfterTerminate is null"), aVar2));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final q<T> N0(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.Q(new MaybeObserveOn(this, h0Var));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final q<T> N1(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.Q(new MaybeUnsubscribeOn(this, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> O(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onFinally is null");
        return io.reactivex.plugins.a.Q(new MaybeDoFinally(this, aVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> q<U> O0(Class<U> cls) {
        io.reactivex.internal.functions.a.g(cls, "clazz is null");
        return Y(Functions.l(cls)).k(cls);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> P(w2.a aVar) {
        w2.a aVar2 = Functions.f65824c;
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.e0(this, Functions.h(), Functions.h(), Functions.h(), (w2.a) io.reactivex.internal.functions.a.g(aVar, "onComplete is null"), aVar2, aVar2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> P0() {
        return Q0(Functions.c());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> Q(w2.a aVar) {
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.g h6 = Functions.h();
        w2.a aVar2 = Functions.f65824c;
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.e0(this, h4, h5, h6, aVar2, aVar2, (w2.a) io.reactivex.internal.functions.a.g(aVar, "onDispose is null")));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> Q0(w2.r<? super Throwable> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.c0(this, rVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> R(w2.g<? super Throwable> gVar) {
        w2.a aVar = Functions.f65824c;
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.e0(this, Functions.h(), Functions.h(), (w2.g) io.reactivex.internal.functions.a.g(gVar, "onError is null"), aVar, aVar, aVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> R0(w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "next is null");
        return S0(Functions.n(wVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> S(w2.b<? super T, ? super Throwable> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "onEvent is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.g(this, bVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> S0(w2.o<? super Throwable, ? extends w<? extends T>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "resumeFunction is null");
        return io.reactivex.plugins.a.Q(new MaybeOnErrorNext(this, oVar, true));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> T(w2.g<? super io.reactivex.disposables.b> gVar) {
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.e0(this, (w2.g) io.reactivex.internal.functions.a.g(gVar, "onSubscribe is null"), h4, h5, aVar, aVar, aVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> T0(w2.o<? super Throwable, ? extends T> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "valueSupplier is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.d0(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> U(w2.g<? super T> gVar) {
        w2.g h4 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.e0(this, Functions.h(), (w2.g) io.reactivex.internal.functions.a.g(gVar, "onSubscribe is null"), h4, aVar, aVar, aVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> U0(T t3) {
        io.reactivex.internal.functions.a.g(t3, "item is null");
        return T0(Functions.n(t3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> V0(w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "next is null");
        return io.reactivex.plugins.a.Q(new MaybeOnErrorNext(this, Functions.n(wVar), false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> W0() {
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.e(this));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> X0() {
        return Y0(Long.MAX_VALUE);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> Y(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.k(this, rVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> Y0(long j4) {
        return I1().R4(j4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> q<R> Z(w2.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.Q(new MaybeFlatten(this, oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> Z0(w2.e eVar) {
        return I1().S4(eVar);
    }

    @Override // io.reactivex.w
    @SchedulerSupport("none")
    public final void a(t<? super T> tVar) {
        io.reactivex.internal.functions.a.g(tVar, "observer is null");
        t<? super T> e02 = io.reactivex.plugins.a.e0(this, tVar);
        io.reactivex.internal.functions.a.g(e02, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            o1(e02);
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> q<R> a0(w2.o<? super T, ? extends w<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.g(cVar, "resultSelector is null");
        return io.reactivex.plugins.a.Q(new MaybeFlatMapBiSelector(this, oVar, cVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> a1(w2.o<? super j<Object>, ? extends l3.b<?>> oVar) {
        return I1().T4(oVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> q<R> b0(w2.o<? super T, ? extends w<? extends R>> oVar, w2.o<? super Throwable, ? extends w<? extends R>> oVar2, Callable<? extends w<? extends R>> callable) {
        io.reactivex.internal.functions.a.g(oVar, "onSuccessMapper is null");
        io.reactivex.internal.functions.a.g(oVar2, "onErrorMapper is null");
        io.reactivex.internal.functions.a.g(callable, "onCompleteSupplier is null");
        return io.reactivex.plugins.a.Q(new MaybeFlatMapNotification(this, oVar, oVar2, callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> b1() {
        return d1(Long.MAX_VALUE, Functions.c());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> q<R> b2(w<? extends U> wVar, w2.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return Y1(this, wVar, cVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a c0(w2.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new MaybeFlatMapCompletable(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> c1(long j4) {
        return d1(j4, Functions.c());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> d0(w2.o<? super T, ? extends e0<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new MaybeFlatMapObservable(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> d1(long j4, w2.r<? super Throwable> rVar) {
        return I1().m5(j4, rVar).I5();
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> e0(w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new MaybeFlatMapPublisher(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> e1(w2.d<? super Integer, ? super Throwable> dVar) {
        return I1().n5(dVar).I5();
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> f(w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return e(this, wVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> i0<R> f0(w2.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.S(new MaybeFlatMapSingle(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> f1(w2.r<? super Throwable> rVar) {
        return d1(Long.MAX_VALUE, rVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> R g(@NonNull r<T, ? extends R> rVar) {
        return (R) ((r) io.reactivex.internal.functions.a.g(rVar, "converter is null")).a(this);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> q<R> g0(w2.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.Q(new MaybeFlatMapSingleElement(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> g1(w2.e eVar) {
        io.reactivex.internal.functions.a.g(eVar, "stop is null");
        return d1(Long.MAX_VALUE, Functions.v(eVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final T h() {
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        a(fVar);
        return (T) fVar.b();
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U> j<U> h0(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new MaybeFlatMapIterableFlowable(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> h1(w2.o<? super j<Throwable>, ? extends l3.b<?>> oVar) {
        return I1().q5(oVar).I5();
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final T i(T t3) {
        io.reactivex.internal.functions.a.g(t3, "defaultValue is null");
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        a(fVar);
        return (T) fVar.c(t3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<U> i0(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.maybe.m(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> j() {
        return io.reactivex.plugins.a.Q(new MaybeCache(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> q<U> k(Class<? extends U> cls) {
        io.reactivex.internal.functions.a.g(cls, "clazz is null");
        return (q<U>) v0(Functions.e(cls));
    }

    @SchedulerSupport("none")
    public final io.reactivex.disposables.b k1() {
        return n1(Functions.h(), Functions.f65827f, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> q<R> l(x<? super T, ? extends R> xVar) {
        return Q1(((x) io.reactivex.internal.functions.a.g(xVar, "transformer is null")).a(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b l1(w2.g<? super T> gVar) {
        return n1(gVar, Functions.f65827f, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b m1(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2) {
        return n1(gVar, gVar2, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b n1(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar) {
        io.reactivex.internal.functions.a.g(gVar, "onSuccess is null");
        io.reactivex.internal.functions.a.g(gVar2, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        return (io.reactivex.disposables.b) q1(new MaybeCallbackObserver(gVar, gVar2, aVar));
    }

    protected abstract void o1(t<? super T> tVar);

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final q<T> p1(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.Q(new MaybeSubscribeOn(this, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> q0() {
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.t(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <E extends t<? super T>> E q1(E e4) {
        a(e4);
        return e4;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a r0() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.maybe.v(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> r1(w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return io.reactivex.plugins.a.Q(new MaybeSwitchIfEmpty(this, wVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<Boolean> s0() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.maybe.x(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> s1(o0<? extends T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "other is null");
        return io.reactivex.plugins.a.S(new MaybeSwitchIfEmptySingle(this, o0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> q<T> t1(w<U> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return io.reactivex.plugins.a.Q(new MaybeTakeUntilMaybe(this, wVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> q<R> u0(v<? extends R, ? super T> vVar) {
        io.reactivex.internal.functions.a.g(vVar, "onLift is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.z(this, vVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <U> q<T> u1(l3.b<U> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return io.reactivex.plugins.a.Q(new MaybeTakeUntilPublisher(this, bVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> q<R> v0(w2.o<? super T, ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.a0(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final TestObserver<T> v1() {
        TestObserver<T> testObserver = new TestObserver<>();
        a(testObserver);
        return testObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final TestObserver<T> w1(boolean z3) {
        TestObserver<T> testObserver = new TestObserver<>();
        if (z3) {
            testObserver.cancel();
        }
        a(testObserver);
        return testObserver;
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final q<T> x1(long j4, TimeUnit timeUnit) {
        return z1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final q<T> y1(long j4, TimeUnit timeUnit, w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return A1(j4, timeUnit, io.reactivex.schedulers.b.a(), wVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> q<R> z(w2.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.Q(new MaybeFlatten(this, oVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final q<T> z1(long j4, TimeUnit timeUnit, h0 h0Var) {
        return B1(G1(j4, timeUnit, h0Var));
    }
}
