package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.observers.BiConsumerSingleObserver;
import io.reactivex.internal.observers.ConsumerSingleObserver;
import io.reactivex.internal.operators.flowable.FlowableConcatMap;
import io.reactivex.internal.operators.flowable.a1;
import io.reactivex.internal.operators.mixed.SingleFlatMapObservable;
import io.reactivex.internal.operators.observable.ObservableConcatMap;
import io.reactivex.internal.operators.observable.k1;
import io.reactivex.internal.operators.single.SingleAmb;
import io.reactivex.internal.operators.single.SingleCache;
import io.reactivex.internal.operators.single.SingleCreate;
import io.reactivex.internal.operators.single.SingleDelayWithCompletable;
import io.reactivex.internal.operators.single.SingleDelayWithObservable;
import io.reactivex.internal.operators.single.SingleDelayWithPublisher;
import io.reactivex.internal.operators.single.SingleDelayWithSingle;
import io.reactivex.internal.operators.single.SingleDoFinally;
import io.reactivex.internal.operators.single.SingleDoOnDispose;
import io.reactivex.internal.operators.single.SingleFlatMap;
import io.reactivex.internal.operators.single.SingleFlatMapCompletable;
import io.reactivex.internal.operators.single.SingleFlatMapIterableFlowable;
import io.reactivex.internal.operators.single.SingleFlatMapIterableObservable;
import io.reactivex.internal.operators.single.SingleFlatMapMaybe;
import io.reactivex.internal.operators.single.SingleFlatMapPublisher;
import io.reactivex.internal.operators.single.SingleInternalHelper;
import io.reactivex.internal.operators.single.SingleObserveOn;
import io.reactivex.internal.operators.single.SingleResumeNext;
import io.reactivex.internal.operators.single.SingleSubscribeOn;
import io.reactivex.internal.operators.single.SingleTakeUntil;
import io.reactivex.internal.operators.single.SingleTimeout;
import io.reactivex.internal.operators.single.SingleTimer;
import io.reactivex.internal.operators.single.SingleToFlowable;
import io.reactivex.internal.operators.single.SingleToObservable;
import io.reactivex.internal.operators.single.SingleUnsubscribeOn;
import io.reactivex.internal.operators.single.SingleUsing;
import io.reactivex.internal.operators.single.SingleZipArray;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.observers.TestObserver;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* compiled from: Single.java */
/* loaded from: classes.dex */
public abstract class i0<T> implements o0<T> {
    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> A(m0<T> m0Var) {
        io.reactivex.internal.functions.a.g(m0Var, "source is null");
        return io.reactivex.plugins.a.S(new SingleCreate(m0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> A0(Iterable<? extends o0<? extends T>> iterable) {
        return B0(j.U2(iterable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> i0<R> A1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, o0<? extends T5> o0Var5, o0<? extends T6> o0Var6, o0<? extends T7> o0Var7, o0<? extends T8> o0Var8, w2.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(o0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(o0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(o0Var6, "source6 is null");
        io.reactivex.internal.functions.a.g(o0Var7, "source7 is null");
        io.reactivex.internal.functions.a.g(o0Var8, "source8 is null");
        return I1(Functions.D(mVar), o0Var, o0Var2, o0Var3, o0Var4, o0Var5, o0Var6, o0Var7, o0Var8);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> B(Callable<? extends o0<? extends T>> callable) {
        io.reactivex.internal.functions.a.g(callable, "singleSupplier is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.b(callable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> B0(l3.b<? extends o0<? extends T>> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "sources is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.e0(bVar, SingleInternalHelper.c(), true, Integer.MAX_VALUE, j.V()));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, R> i0<R> B1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, o0<? extends T5> o0Var5, o0<? extends T6> o0Var6, o0<? extends T7> o0Var7, w2.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(o0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(o0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(o0Var6, "source6 is null");
        io.reactivex.internal.functions.a.g(o0Var7, "source7 is null");
        return I1(Functions.C(lVar), o0Var, o0Var2, o0Var3, o0Var4, o0Var5, o0Var6, o0Var7);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, R> i0<R> C1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, o0<? extends T5> o0Var5, o0<? extends T6> o0Var6, w2.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(o0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(o0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(o0Var6, "source6 is null");
        return I1(Functions.B(kVar), o0Var, o0Var2, o0Var3, o0Var4, o0Var5, o0Var6);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> D0() {
        return io.reactivex.plugins.a.S(io.reactivex.internal.operators.single.t.f69803a);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, R> i0<R> D1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, o0<? extends T5> o0Var5, w2.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(o0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(o0Var5, "source5 is null");
        return I1(Functions.A(jVar), o0Var, o0Var2, o0Var3, o0Var4, o0Var5);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, R> i0<R> E1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, w2.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(o0Var4, "source4 is null");
        return I1(Functions.z(iVar), o0Var, o0Var2, o0Var3, o0Var4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, R> i0<R> F1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, w2.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        return I1(Functions.y(hVar), o0Var, o0Var2, o0Var3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, R> i0<R> G1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, w2.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        return I1(Functions.x(cVar), o0Var, o0Var2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> i0<R> H1(Iterable<? extends o0<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.v(iterable, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> i0<R> I1(w2.o<? super Object[], ? extends R> oVar, o0<? extends T>... o0VarArr) {
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        io.reactivex.internal.functions.a.g(o0VarArr, "sources is null");
        if (o0VarArr.length == 0) {
            return V(new NoSuchElementException());
        }
        return io.reactivex.plugins.a.S(new SingleZipArray(o0VarArr, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<Boolean> U(o0<? extends T> o0Var, o0<? extends T> o0Var2) {
        io.reactivex.internal.functions.a.g(o0Var, "first is null");
        io.reactivex.internal.functions.a.g(o0Var2, "second is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.k(o0Var, o0Var2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> V(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "error is null");
        return W(Functions.m(th));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> W(Callable<? extends Throwable> callable) {
        io.reactivex.internal.functions.a.g(callable, "errorSupplier is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.l(callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> e(Iterable<? extends o0<? extends T>> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.S(new SingleAmb(null, iterable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> f(o0<? extends T>... o0VarArr) {
        if (o0VarArr.length == 0) {
            return W(SingleInternalHelper.a());
        }
        if (o0VarArr.length == 1) {
            return y1(o0VarArr[0]);
        }
        return io.reactivex.plugins.a.S(new SingleAmb(o0VarArr, null));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> f0(Callable<? extends T> callable) {
        io.reactivex.internal.functions.a.g(callable, "callable is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.m(callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> g0(Future<? extends T> future) {
        return t1(j.Q2(future));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> h0(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        return t1(j.R2(future, j4, timeUnit));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static <T> i0<T> i0(Future<? extends T> future, long j4, TimeUnit timeUnit, h0 h0Var) {
        return t1(j.S2(future, j4, timeUnit, h0Var));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static <T> i0<T> j0(Future<? extends T> future, h0 h0Var) {
        return t1(j.T2(future, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> k0(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "observableSource is null");
        return io.reactivex.plugins.a.S(new k1(e0Var, null));
    }

    private i0<T> k1(long j4, TimeUnit timeUnit, h0 h0Var, o0<? extends T> o0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new SingleTimeout(this, j4, timeUnit, h0Var, o0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public static <T> i0<T> l0(l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "publisher is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.n(bVar));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public static i0<Long> l1(long j4, TimeUnit timeUnit) {
        return m1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> m(o0<? extends T> o0Var, o0<? extends T> o0Var2) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        return q(j.O2(o0Var, o0Var2));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static i0<Long> m1(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new SingleTimer(j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> n(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        return q(j.O2(o0Var, o0Var2, o0Var3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> o(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3, o0<? extends T> o0Var4) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(o0Var4, "source4 is null");
        return q(j.O2(o0Var, o0Var2, o0Var3, o0Var4));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> o0(T t3) {
        io.reactivex.internal.functions.a.g(t3, "value is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.q(t3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> p(Iterable<? extends o0<? extends T>> iterable) {
        return q(j.U2(iterable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> q(l3.b<? extends o0<? extends T>> bVar) {
        return r(bVar, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> r(l3.b<? extends o0<? extends T>> bVar, int i2) {
        io.reactivex.internal.functions.a.g(bVar, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.n(bVar, SingleInternalHelper.c(), i2, ErrorMode.IMMEDIATE));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> r0(o0<? extends T> o0Var, o0<? extends T> o0Var2) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        return v0(j.O2(o0Var, o0Var2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> s(e0<? extends o0<? extends T>> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "sources is null");
        return io.reactivex.plugins.a.R(new ObservableConcatMap(e0Var, SingleInternalHelper.d(), 2, ErrorMode.IMMEDIATE));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> s0(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        return v0(j.O2(o0Var, o0Var2, o0Var3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> t(o0<? extends T>... o0VarArr) {
        return io.reactivex.plugins.a.P(new FlowableConcatMap(j.O2(o0VarArr), SingleInternalHelper.c(), 2, ErrorMode.BOUNDARY));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> t0(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3, o0<? extends T> o0Var4) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(o0Var4, "source4 is null");
        return v0(j.O2(o0Var, o0Var2, o0Var3, o0Var4));
    }

    private static <T> i0<T> t1(j<T> jVar) {
        return io.reactivex.plugins.a.S(new a1(jVar, null));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> u(o0<? extends T>... o0VarArr) {
        return j.O2(o0VarArr).Y0(SingleInternalHelper.c());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> u0(Iterable<? extends o0<? extends T>> iterable) {
        return v0(j.U2(iterable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> u1(o0<T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "onSubscribe is null");
        if (!(o0Var instanceof i0)) {
            return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.o(o0Var));
        }
        throw new IllegalArgumentException("unsafeCreate(Single) should be upgraded");
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> v(Iterable<? extends o0<? extends T>> iterable) {
        return j.U2(iterable).Y0(SingleInternalHelper.c());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> v0(l3.b<? extends o0<? extends T>> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "sources is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.e0(bVar, SingleInternalHelper.c(), false, Integer.MAX_VALUE, j.V()));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> w(l3.b<? extends o0<? extends T>> bVar) {
        return j.V2(bVar).Y0(SingleInternalHelper.c());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> w0(o0<? extends o0<? extends T>> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "source is null");
        return io.reactivex.plugins.a.S(new SingleFlatMap(o0Var, Functions.k()));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, U> i0<T> w1(Callable<U> callable, w2.o<? super U, ? extends o0<? extends T>> oVar, w2.g<? super U> gVar) {
        return x1(callable, oVar, gVar, true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> x0(o0<? extends T> o0Var, o0<? extends T> o0Var2) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        return B0(j.O2(o0Var, o0Var2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, U> i0<T> x1(Callable<U> callable, w2.o<? super U, ? extends o0<? extends T>> oVar, w2.g<? super U> gVar, boolean z3) {
        io.reactivex.internal.functions.a.g(callable, "resourceSupplier is null");
        io.reactivex.internal.functions.a.g(oVar, "singleFunction is null");
        io.reactivex.internal.functions.a.g(gVar, "disposer is null");
        return io.reactivex.plugins.a.S(new SingleUsing(callable, oVar, gVar, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> y0(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        return B0(j.O2(o0Var, o0Var2, o0Var3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<T> y1(o0<T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "source is null");
        if (o0Var instanceof i0) {
            return io.reactivex.plugins.a.S((i0) o0Var);
        }
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.o(o0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> z0(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3, o0<? extends T> o0Var4) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(o0Var4, "source4 is null");
        return B0(j.O2(o0Var, o0Var2, o0Var3, o0Var4));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> i0<R> z1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, o0<? extends T5> o0Var5, o0<? extends T6> o0Var6, o0<? extends T7> o0Var7, o0<? extends T8> o0Var8, o0<? extends T9> o0Var9, w2.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.a.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(o0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(o0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(o0Var6, "source6 is null");
        io.reactivex.internal.functions.a.g(o0Var7, "source7 is null");
        io.reactivex.internal.functions.a.g(o0Var8, "source8 is null");
        io.reactivex.internal.functions.a.g(o0Var9, "source9 is null");
        return I1(Functions.E(nVar), o0Var, o0Var2, o0Var3, o0Var4, o0Var5, o0Var6, o0Var7, o0Var8, o0Var9);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final i0<T> C(long j4, TimeUnit timeUnit) {
        return E(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> C0(o0<? extends T> o0Var) {
        return r0(this, o0Var);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final i0<T> D(long j4, TimeUnit timeUnit, h0 h0Var) {
        return E(j4, timeUnit, h0Var, false);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final i0<T> E(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.c(this, j4, timeUnit, h0Var, z3));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final i0<T> E0(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new SingleObserveOn(this, h0Var));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final i0<T> F(long j4, TimeUnit timeUnit, boolean z3) {
        return E(j4, timeUnit, io.reactivex.schedulers.b.a(), z3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> F0(i0<? extends T> i0Var) {
        io.reactivex.internal.functions.a.g(i0Var, "resumeSingleInCaseOfError is null");
        return G0(Functions.n(i0Var));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final i0<T> G(long j4, TimeUnit timeUnit) {
        return H(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> G0(w2.o<? super Throwable, ? extends o0<? extends T>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "resumeFunctionInCaseOfError is null");
        return io.reactivex.plugins.a.S(new SingleResumeNext(this, oVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final i0<T> H(long j4, TimeUnit timeUnit, h0 h0Var) {
        return J(z.N6(j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> H0(w2.o<Throwable, ? extends T> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "resumeFunction is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.u(this, oVar, null));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> I(g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return io.reactivex.plugins.a.S(new SingleDelayWithCompletable(this, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> I0(T t3) {
        io.reactivex.internal.functions.a.g(t3, "value is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.u(this, null, t3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> i0<T> J(e0<U> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return io.reactivex.plugins.a.S(new SingleDelayWithObservable(this, e0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> J0() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.d(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> i0<R> J1(o0<U> o0Var, w2.c<? super T, ? super U, ? extends R> cVar) {
        return G1(this, o0Var, cVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> i0<T> K(o0<U> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "other is null");
        return io.reactivex.plugins.a.S(new SingleDelayWithSingle(this, o0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> K0() {
        return p1().Q4();
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U> i0<T> L(l3.b<U> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return io.reactivex.plugins.a.S(new SingleDelayWithPublisher(this, bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> L0(long j4) {
        return p1().R4(j4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> M(w2.g<? super T> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "doAfterSuccess is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.e(this, gVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> M0(w2.e eVar) {
        return p1().S4(eVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> N(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onAfterTerminate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.f(this, aVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> N0(w2.o<? super j<Object>, ? extends l3.b<?>> oVar) {
        return p1().T4(oVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> O(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onFinally is null");
        return io.reactivex.plugins.a.S(new SingleDoFinally(this, aVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> O0() {
        return t1(p1().k5());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> P(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onDispose is null");
        return io.reactivex.plugins.a.S(new SingleDoOnDispose(this, aVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> P0(long j4) {
        return t1(p1().l5(j4));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> Q(w2.g<? super Throwable> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onError is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.g(this, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> Q0(long j4, w2.r<? super Throwable> rVar) {
        return t1(p1().m5(j4, rVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> R(w2.b<? super T, ? super Throwable> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "onEvent is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.h(this, bVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> R0(w2.d<? super Integer, ? super Throwable> dVar) {
        return t1(p1().n5(dVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> S(w2.g<? super io.reactivex.disposables.b> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onSubscribe is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.i(this, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> S0(w2.r<? super Throwable> rVar) {
        return t1(p1().o5(rVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> T(w2.g<? super T> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onSuccess is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.j(this, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> T0(w2.o<? super j<Throwable>, ? extends l3.b<?>> oVar) {
        return t1(p1().q5(oVar));
    }

    @SchedulerSupport("none")
    public final io.reactivex.disposables.b U0() {
        return X0(Functions.h(), Functions.f65827f);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b V0(w2.b<? super T, ? super Throwable> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "onCallback is null");
        BiConsumerSingleObserver biConsumerSingleObserver = new BiConsumerSingleObserver(bVar);
        a(biConsumerSingleObserver);
        return biConsumerSingleObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b W0(w2.g<? super T> gVar) {
        return X0(gVar, Functions.f65827f);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> X(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.l(this, rVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b X0(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2) {
        io.reactivex.internal.functions.a.g(gVar, "onSuccess is null");
        io.reactivex.internal.functions.a.g(gVar2, "onError is null");
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(gVar, gVar2);
        a(consumerSingleObserver);
        return consumerSingleObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> i0<R> Y(w2.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.S(new SingleFlatMap(this, oVar));
    }

    protected abstract void Y0(@NonNull l0<? super T> l0Var);

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a Z(w2.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new SingleFlatMapCompletable(this, oVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final i0<T> Z0(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new SingleSubscribeOn(this, h0Var));
    }

    @Override // io.reactivex.o0
    @SchedulerSupport("none")
    public final void a(l0<? super T> l0Var) {
        io.reactivex.internal.functions.a.g(l0Var, "subscriber is null");
        l0<? super T> g02 = io.reactivex.plugins.a.g0(this, l0Var);
        io.reactivex.internal.functions.a.g(g02, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            Y0(g02);
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
    public final <R> q<R> a0(w2.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.Q(new SingleFlatMapMaybe(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <E extends l0<? super T>> E a1(E e4) {
        a(e4);
        return e4;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> b0(w2.o<? super T, ? extends e0<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new SingleFlatMapObservable(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> b1(g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return d1(new io.reactivex.internal.operators.completable.x(gVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> c0(w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new SingleFlatMapPublisher(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <E> i0<T> c1(o0<? extends E> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "other is null");
        return d1(new SingleToFlowable(o0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U> j<U> d0(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new SingleFlatMapIterableFlowable(this, oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <E> i0<T> d1(l3.b<E> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return io.reactivex.plugins.a.S(new SingleTakeUntil(this, bVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<U> e0(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new SingleFlatMapIterableObservable(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final TestObserver<T> e1() {
        TestObserver<T> testObserver = new TestObserver<>();
        a(testObserver);
        return testObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final TestObserver<T> f1(boolean z3) {
        TestObserver<T> testObserver = new TestObserver<>();
        if (z3) {
            testObserver.cancel();
        }
        a(testObserver);
        return testObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> g(o0<? extends T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "other is null");
        return f(this, o0Var);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final i0<T> g1(long j4, TimeUnit timeUnit) {
        return k1(j4, timeUnit, io.reactivex.schedulers.b.a(), null);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> R h(@NonNull j0<T, ? extends R> j0Var) {
        return (R) ((j0) io.reactivex.internal.functions.a.g(j0Var, "converter is null")).a(this);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final i0<T> h1(long j4, TimeUnit timeUnit, h0 h0Var) {
        return k1(j4, timeUnit, h0Var, null);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final T i() {
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        a(fVar);
        return (T) fVar.b();
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final i0<T> i1(long j4, TimeUnit timeUnit, h0 h0Var, o0<? extends T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "other is null");
        return k1(j4, timeUnit, h0Var, o0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> j() {
        return io.reactivex.plugins.a.S(new SingleCache(this));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final i0<T> j1(long j4, TimeUnit timeUnit, o0<? extends T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "other is null");
        return k1(j4, timeUnit, io.reactivex.schedulers.b.a(), o0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> i0<U> k(Class<? extends U> cls) {
        io.reactivex.internal.functions.a.g(cls, "clazz is null");
        return (i0<U>) q0(Functions.e(cls));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> i0<R> l(p0<? super T, ? extends R> p0Var) {
        return y1(((p0) io.reactivex.internal.functions.a.g(p0Var, "transformer is null")).a(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> m0() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.p(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final a n0() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.n(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> R n1(w2.o<? super i0<T>, R> oVar) {
        try {
            return (R) ((w2.o) io.reactivex.internal.functions.a.g(oVar, "convert is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.e(th);
        }
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    @Deprecated
    public final a o1() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.n(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> i0<R> p0(n0<? extends R, ? super T> n0Var) {
        io.reactivex.internal.functions.a.g(n0Var, "onLift is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.r(this, n0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> p1() {
        if (this instanceof x2.b) {
            return ((x2.b) this).d();
        }
        return io.reactivex.plugins.a.P(new SingleToFlowable(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> i0<R> q0(w2.o<? super T, ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.s(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final Future<T> q1() {
        return (Future) a1(new io.reactivex.internal.observers.i());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> r1() {
        if (this instanceof x2.c) {
            return ((x2.c) this).c();
        }
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.s(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> s1() {
        if (this instanceof x2.d) {
            return ((x2.d) this).b();
        }
        return io.reactivex.plugins.a.R(new SingleToObservable(this));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final i0<T> v1(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new SingleUnsubscribeOn(this, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> x(o0<? extends T> o0Var) {
        return m(this, o0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<Boolean> y(Object obj) {
        return z(obj, io.reactivex.internal.functions.a.d());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<Boolean> z(Object obj, w2.d<Object, Object> dVar) {
        io.reactivex.internal.functions.a.g(obj, "value is null");
        io.reactivex.internal.functions.a.g(dVar, "comparer is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.a(this, obj, dVar));
    }
}
