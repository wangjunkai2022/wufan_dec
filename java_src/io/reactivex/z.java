package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.observers.ForEachWhileObserver;
import io.reactivex.internal.observers.LambdaObserver;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureError;
import io.reactivex.internal.operators.mixed.ObservableConcatMapCompletable;
import io.reactivex.internal.operators.mixed.ObservableConcatMapMaybe;
import io.reactivex.internal.operators.mixed.ObservableConcatMapSingle;
import io.reactivex.internal.operators.mixed.ObservableSwitchMapCompletable;
import io.reactivex.internal.operators.mixed.ObservableSwitchMapMaybe;
import io.reactivex.internal.operators.mixed.ObservableSwitchMapSingle;
import io.reactivex.internal.operators.observable.BlockingObservableIterable;
import io.reactivex.internal.operators.observable.ObservableAmb;
import io.reactivex.internal.operators.observable.ObservableBuffer;
import io.reactivex.internal.operators.observable.ObservableBufferBoundary;
import io.reactivex.internal.operators.observable.ObservableCache;
import io.reactivex.internal.operators.observable.ObservableCombineLatest;
import io.reactivex.internal.operators.observable.ObservableConcatMap;
import io.reactivex.internal.operators.observable.ObservableConcatMapEager;
import io.reactivex.internal.operators.observable.ObservableConcatWithCompletable;
import io.reactivex.internal.operators.observable.ObservableConcatWithMaybe;
import io.reactivex.internal.operators.observable.ObservableConcatWithSingle;
import io.reactivex.internal.operators.observable.ObservableCreate;
import io.reactivex.internal.operators.observable.ObservableDebounceTimed;
import io.reactivex.internal.operators.observable.ObservableDoFinally;
import io.reactivex.internal.operators.observable.ObservableFlatMap;
import io.reactivex.internal.operators.observable.ObservableFlatMapCompletableCompletable;
import io.reactivex.internal.operators.observable.ObservableFlatMapMaybe;
import io.reactivex.internal.operators.observable.ObservableFlatMapSingle;
import io.reactivex.internal.operators.observable.ObservableGroupBy;
import io.reactivex.internal.operators.observable.ObservableGroupJoin;
import io.reactivex.internal.operators.observable.ObservableInternalHelper;
import io.reactivex.internal.operators.observable.ObservableInterval;
import io.reactivex.internal.operators.observable.ObservableIntervalRange;
import io.reactivex.internal.operators.observable.ObservableJoin;
import io.reactivex.internal.operators.observable.ObservableMergeWithCompletable;
import io.reactivex.internal.operators.observable.ObservableMergeWithMaybe;
import io.reactivex.internal.operators.observable.ObservableMergeWithSingle;
import io.reactivex.internal.operators.observable.ObservableObserveOn;
import io.reactivex.internal.operators.observable.ObservablePublish;
import io.reactivex.internal.operators.observable.ObservablePublishSelector;
import io.reactivex.internal.operators.observable.ObservableRange;
import io.reactivex.internal.operators.observable.ObservableRangeLong;
import io.reactivex.internal.operators.observable.ObservableRepeat;
import io.reactivex.internal.operators.observable.ObservableRepeatUntil;
import io.reactivex.internal.operators.observable.ObservableRepeatWhen;
import io.reactivex.internal.operators.observable.ObservableReplay;
import io.reactivex.internal.operators.observable.ObservableRetryBiPredicate;
import io.reactivex.internal.operators.observable.ObservableRetryPredicate;
import io.reactivex.internal.operators.observable.ObservableRetryWhen;
import io.reactivex.internal.operators.observable.ObservableSampleTimed;
import io.reactivex.internal.operators.observable.ObservableSampleWithObservable;
import io.reactivex.internal.operators.observable.ObservableScalarXMap;
import io.reactivex.internal.operators.observable.ObservableSequenceEqualSingle;
import io.reactivex.internal.operators.observable.ObservableSkipLast;
import io.reactivex.internal.operators.observable.ObservableSkipLastTimed;
import io.reactivex.internal.operators.observable.ObservableSubscribeOn;
import io.reactivex.internal.operators.observable.ObservableSwitchMap;
import io.reactivex.internal.operators.observable.ObservableTakeLast;
import io.reactivex.internal.operators.observable.ObservableTakeLastTimed;
import io.reactivex.internal.operators.observable.ObservableTakeUntil;
import io.reactivex.internal.operators.observable.ObservableThrottleFirstTimed;
import io.reactivex.internal.operators.observable.ObservableThrottleLatest;
import io.reactivex.internal.operators.observable.ObservableTimeout;
import io.reactivex.internal.operators.observable.ObservableTimeoutTimed;
import io.reactivex.internal.operators.observable.ObservableTimer;
import io.reactivex.internal.operators.observable.ObservableUnsubscribeOn;
import io.reactivex.internal.operators.observable.ObservableUsing;
import io.reactivex.internal.operators.observable.ObservableWindow;
import io.reactivex.internal.operators.observable.ObservableWindowBoundary;
import io.reactivex.internal.operators.observable.ObservableWindowBoundarySupplier;
import io.reactivex.internal.operators.observable.ObservableWithLatestFrom;
import io.reactivex.internal.operators.observable.ObservableWithLatestFromMany;
import io.reactivex.internal.operators.observable.ObservableZip;
import io.reactivex.internal.operators.observable.a1;
import io.reactivex.internal.operators.observable.b1;
import io.reactivex.internal.operators.observable.c1;
import io.reactivex.internal.operators.observable.d1;
import io.reactivex.internal.operators.observable.e1;
import io.reactivex.internal.operators.observable.f1;
import io.reactivex.internal.operators.observable.g1;
import io.reactivex.internal.operators.observable.h1;
import io.reactivex.internal.operators.observable.i1;
import io.reactivex.internal.operators.observable.j1;
import io.reactivex.internal.operators.observable.k1;
import io.reactivex.internal.operators.observable.l1;
import io.reactivex.internal.operators.observable.m1;
import io.reactivex.internal.operators.observable.n1;
import io.reactivex.internal.operators.observable.o1;
import io.reactivex.internal.operators.observable.p1;
import io.reactivex.internal.operators.observable.q0;
import io.reactivex.internal.operators.observable.q1;
import io.reactivex.internal.operators.observable.r0;
import io.reactivex.internal.operators.observable.r1;
import io.reactivex.internal.operators.observable.s0;
import io.reactivex.internal.operators.observable.s1;
import io.reactivex.internal.operators.observable.t0;
import io.reactivex.internal.operators.observable.t1;
import io.reactivex.internal.operators.observable.u0;
import io.reactivex.internal.operators.observable.u1;
import io.reactivex.internal.operators.observable.v0;
import io.reactivex.internal.operators.observable.v1;
import io.reactivex.internal.operators.observable.w0;
import io.reactivex.internal.operators.observable.w1;
import io.reactivex.internal.operators.observable.x0;
import io.reactivex.internal.operators.observable.x1;
import io.reactivex.internal.operators.observable.y0;
import io.reactivex.internal.operators.observable.y1;
import io.reactivex.internal.operators.observable.z0;
import io.reactivex.internal.util.ArrayListSupplier;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.HashMapSupplier;
import io.reactivex.observers.TestObserver;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* compiled from: Observable.java */
/* loaded from: classes.dex */
public abstract class z<T> implements e0<T> {

    /* compiled from: Observable.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f70410a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f70410a = iArr;
            try {
                iArr[BackpressureStrategy.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f70410a[BackpressureStrategy.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f70410a[BackpressureStrategy.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f70410a[BackpressureStrategy.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> A0(e0<? extends T>... e0VarArr) {
        return z0(S(), S(), e0VarArr);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> A3(e0<? extends e0<? extends T>> e0Var, int i2) {
        io.reactivex.internal.functions.a.g(e0Var, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        return io.reactivex.plugins.a.R(new ObservableFlatMap(e0Var, Functions.k(), false, i2, S()));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> B0(int i2, int i4, e0<? extends T>... e0VarArr) {
        return G2(e0VarArr).V0(Functions.k(), i2, i4, true);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> B3(e0<? extends T> e0Var, e0<? extends T> e0Var2) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        return G2(e0Var, e0Var2).s2(Functions.k(), false, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> C0(e0<? extends T>... e0VarArr) {
        return B0(S(), S(), e0VarArr);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> C3(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        return G2(e0Var, e0Var2, e0Var3).s2(Functions.k(), false, 3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> D0(e0<? extends e0<? extends T>> e0Var) {
        return E0(e0Var, S(), true);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> D3(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3, e0<? extends T> e0Var4) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        return G2(e0Var, e0Var2, e0Var3, e0Var4).s2(Functions.k(), false, 4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> E0(e0<? extends e0<? extends T>> e0Var, int i2, boolean z3) {
        io.reactivex.internal.functions.a.g(e0Var, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch is null");
        return io.reactivex.plugins.a.R(new ObservableConcatMap(e0Var, Functions.k(), i2, z3 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> E3(Iterable<? extends e0<? extends T>> iterable) {
        return M2(iterable).i2(Functions.k());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> F0(Iterable<? extends e0<? extends T>> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return D0(M2(iterable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> F3(Iterable<? extends e0<? extends T>> iterable, int i2) {
        return M2(iterable).j2(Functions.k(), i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> G0(e0<? extends e0<? extends T>> e0Var) {
        return H0(e0Var, S(), S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> G2(T... tArr) {
        io.reactivex.internal.functions.a.g(tArr, "items is null");
        if (tArr.length == 0) {
            return b2();
        }
        if (tArr.length == 1) {
            return j3(tArr[0]);
        }
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.j0(tArr));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> G3(Iterable<? extends e0<? extends T>> iterable, int i2, int i4) {
        return M2(iterable).t2(Functions.k(), false, i2, i4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> H0(e0<? extends e0<? extends T>> e0Var, int i2, int i4) {
        return M7(e0Var).U0(Functions.k(), i2, i4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> H2(Callable<? extends T> callable) {
        io.reactivex.internal.functions.a.g(callable, "supplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.k0(callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> H3(int i2, int i4, e0<? extends T>... e0VarArr) {
        return G2(e0VarArr).t2(Functions.k(), false, i2, i4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> I0(Iterable<? extends e0<? extends T>> iterable) {
        return J0(iterable, S(), S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> I2(Future<? extends T> future) {
        io.reactivex.internal.functions.a.g(future, "future is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.l0(future, 0L, null));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> I3(e0<? extends T>... e0VarArr) {
        return G2(e0VarArr).j2(Functions.k(), e0VarArr.length);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> J0(Iterable<? extends e0<? extends T>> iterable, int i2, int i4) {
        return M2(iterable).V0(Functions.k(), i2, i4, false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> J2(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        io.reactivex.internal.functions.a.g(future, "future is null");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.l0(future, j4, timeUnit));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> J3(int i2, int i4, e0<? extends T>... e0VarArr) {
        return G2(e0VarArr).t2(Functions.k(), true, i2, i4);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static <T> z<T> K2(Future<? extends T> future, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return J2(future, j4, timeUnit).G5(h0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> K3(e0<? extends T>... e0VarArr) {
        return G2(e0VarArr).s2(Functions.k(), true, e0VarArr.length);
    }

    private z<T> K6(long j4, TimeUnit timeUnit, e0<? extends T> e0Var, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "timeUnit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableTimeoutTimed(this, j4, timeUnit, h0Var, e0Var));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static <T> z<T> L2(Future<? extends T> future, h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return I2(future).G5(h0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> L3(e0<? extends e0<? extends T>> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "sources is null");
        return io.reactivex.plugins.a.R(new ObservableFlatMap(e0Var, Functions.k(), true, Integer.MAX_VALUE, S()));
    }

    private <U, V> z<T> L6(e0<U> e0Var, w2.o<? super T, ? extends e0<V>> oVar, e0<? extends T> e0Var2) {
        io.reactivex.internal.functions.a.g(oVar, "itemTimeoutIndicator is null");
        return io.reactivex.plugins.a.R(new ObservableTimeout(this, e0Var, oVar, e0Var2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> M2(Iterable<? extends T> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "source is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.m0(iterable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> M3(e0<? extends e0<? extends T>> e0Var, int i2) {
        io.reactivex.internal.functions.a.g(e0Var, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        return io.reactivex.plugins.a.R(new ObservableFlatMap(e0Var, Functions.k(), true, i2, S()));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public static z<Long> M6(long j4, TimeUnit timeUnit) {
        return N6(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> M7(e0<T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "source is null");
        if (e0Var instanceof z) {
            return io.reactivex.plugins.a.R((z) e0Var);
        }
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.o0(e0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public static <T> z<T> N2(l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "publisher is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.n0(bVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> N3(e0<? extends T> e0Var, e0<? extends T> e0Var2) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        return G2(e0Var, e0Var2).s2(Functions.k(), true, 2);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static z<Long> N6(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableTimer(Math.max(j4, 0L), timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> z<R> N7(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, e0<? extends T8> e0Var8, e0<? extends T9> e0Var9, w2.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.a.g(e0Var7, "source7 is null");
        io.reactivex.internal.functions.a.g(e0Var8, "source8 is null");
        io.reactivex.internal.functions.a.g(e0Var9, "source9 is null");
        return Z7(Functions.E(nVar), false, S(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7, e0Var8, e0Var9);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, S> z<T> O2(Callable<S> callable, w2.b<S, i<T>> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "generator  is null");
        return R2(callable, ObservableInternalHelper.l(bVar), Functions.h());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> O3(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        return G2(e0Var, e0Var2, e0Var3).s2(Functions.k(), true, 3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> z<R> O7(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, e0<? extends T8> e0Var8, w2.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.a.g(e0Var7, "source7 is null");
        io.reactivex.internal.functions.a.g(e0Var8, "source8 is null");
        return Z7(Functions.D(mVar), false, S(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7, e0Var8);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, S> z<T> P2(Callable<S> callable, w2.b<S, i<T>> bVar, w2.g<? super S> gVar) {
        io.reactivex.internal.functions.a.g(bVar, "generator  is null");
        return R2(callable, ObservableInternalHelper.l(bVar), gVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> P3(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3, e0<? extends T> e0Var4) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        return G2(e0Var, e0Var2, e0Var3, e0Var4).s2(Functions.k(), true, 4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, R> z<R> P7(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, w2.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.a.g(e0Var7, "source7 is null");
        return Z7(Functions.C(lVar), false, S(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, S> z<T> Q2(Callable<S> callable, w2.c<S, i<T>, S> cVar) {
        return R2(callable, cVar, Functions.h());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> Q3(Iterable<? extends e0<? extends T>> iterable) {
        return M2(iterable).r2(Functions.k(), true);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, R> z<R> Q7(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, w2.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(e0Var6, "source6 is null");
        return Z7(Functions.B(kVar), false, S(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, S> z<T> R2(Callable<S> callable, w2.c<S, i<T>, S> cVar, w2.g<? super S> gVar) {
        io.reactivex.internal.functions.a.g(callable, "initialState is null");
        io.reactivex.internal.functions.a.g(cVar, "generator  is null");
        io.reactivex.internal.functions.a.g(gVar, "disposeState is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.p0(callable, cVar, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> R3(Iterable<? extends e0<? extends T>> iterable, int i2) {
        return M2(iterable).s2(Functions.k(), true, i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, R> z<R> R7(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, w2.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(e0Var5, "source5 is null");
        return Z7(Functions.A(jVar), false, S(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5);
    }

    public static int S() {
        return j.V();
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    private z<T> S1(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.a aVar2) {
        io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        io.reactivex.internal.functions.a.g(gVar2, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.a.g(aVar2, "onAfterTerminate is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.a0(this, gVar, gVar2, aVar, aVar2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> S2(w2.g<i<T>> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "generator  is null");
        return R2(Functions.u(), ObservableInternalHelper.m(gVar), Functions.h());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> S3(Iterable<? extends e0<? extends T>> iterable, int i2, int i4) {
        return M2(iterable).t2(Functions.k(), true, i2, i4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, R> z<R> S7(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, w2.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        return Z7(Functions.z(iVar), false, S(), e0Var, e0Var2, e0Var3, e0Var4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> T5(e0<? extends e0<? extends T>> e0Var) {
        return U5(e0Var, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, R> z<R> T7(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, w2.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        return Z7(Functions.y(hVar), false, S(), e0Var, e0Var2, e0Var3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> U5(e0<? extends e0<? extends T>> e0Var, int i2) {
        io.reactivex.internal.functions.a.g(e0Var, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableSwitchMap(e0Var, Functions.k(), i2, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, R> z<R> U7(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, w2.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        return Z7(Functions.x(cVar), false, S(), e0Var, e0Var2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> V5(e0<? extends e0<? extends T>> e0Var) {
        return W5(e0Var, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, R> z<R> V7(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, w2.c<? super T1, ? super T2, ? extends R> cVar, boolean z3) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        return Z7(Functions.x(cVar), z3, S(), e0Var, e0Var2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> W5(e0<? extends e0<? extends T>> e0Var, int i2) {
        io.reactivex.internal.functions.a.g(e0Var, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.R(new ObservableSwitchMap(e0Var, Functions.k(), i2, true));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, R> z<R> W7(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, w2.c<? super T1, ? super T2, ? extends R> cVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        return Z7(Functions.x(cVar), z3, i2, e0Var, e0Var2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> X3() {
        return io.reactivex.plugins.a.R(a1.f68973a);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> X7(e0<? extends e0<? extends T>> e0Var, w2.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        io.reactivex.internal.functions.a.g(e0Var, "sources is null");
        return io.reactivex.plugins.a.R(new u1(e0Var, 16).i2(ObservableInternalHelper.n(oVar)));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> z<R> Y(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, e0<? extends T8> e0Var8, e0<? extends T9> e0Var9, w2.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.a.g(e0Var7, "source7 is null");
        io.reactivex.internal.functions.a.g(e0Var8, "source8 is null");
        io.reactivex.internal.functions.a.g(e0Var9, "source9 is null");
        return i0(Functions.E(nVar), S(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7, e0Var8, e0Var9);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> Y7(Iterable<? extends e0<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.R(new ObservableZip(null, iterable, oVar, S(), false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> z<R> Z(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, e0<? extends T8> e0Var8, w2.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.a.g(e0Var7, "source7 is null");
        io.reactivex.internal.functions.a.g(e0Var8, "source8 is null");
        return i0(Functions.D(mVar), S(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7, e0Var8);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> Z7(w2.o<? super Object[], ? extends R> oVar, boolean z3, int i2, e0<? extends T>... e0VarArr) {
        if (e0VarArr.length == 0) {
            return b2();
        }
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableZip(e0VarArr, null, oVar, i2, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, R> z<R> a0(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, w2.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.a.g(e0Var7, "source7 is null");
        return i0(Functions.C(lVar), S(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<Boolean> a5(e0<? extends T> e0Var, e0<? extends T> e0Var2) {
        return d5(e0Var, e0Var2, io.reactivex.internal.functions.a.d(), S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> a8(Iterable<? extends e0<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableZip(null, iterable, oVar, i2, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, R> z<R> b0(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, w2.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.a.g(e0Var6, "source6 is null");
        return i0(Functions.B(kVar), S(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> b2() {
        return io.reactivex.plugins.a.R(io.reactivex.internal.operators.observable.f0.f69058a);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public static z<Long> b3(long j4, long j5, TimeUnit timeUnit) {
        return c3(j4, j5, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<Boolean> b5(e0<? extends T> e0Var, e0<? extends T> e0Var2, int i2) {
        return d5(e0Var, e0Var2, io.reactivex.internal.functions.a.d(), i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, R> z<R> c0(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, w2.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.a.g(e0Var5, "source5 is null");
        return i0(Functions.A(jVar), S(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> c2(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "e is null");
        return d2(Functions.m(th));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static z<Long> c3(long j4, long j5, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableInterval(Math.max(0L, j4), Math.max(0L, j5), timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<Boolean> c5(e0<? extends T> e0Var, e0<? extends T> e0Var2, w2.d<? super T, ? super T> dVar) {
        return d5(e0Var, e0Var2, dVar, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> d(Iterable<? extends e0<? extends T>> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.R(new ObservableAmb(null, iterable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, T4, R> z<R> d0(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, w2.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        return i0(Functions.z(iVar), S(), e0Var, e0Var2, e0Var3, e0Var4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> d2(Callable<? extends Throwable> callable) {
        io.reactivex.internal.functions.a.g(callable, "errorSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.g0(callable));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public static z<Long> d3(long j4, TimeUnit timeUnit) {
        return c3(j4, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> i0<Boolean> d5(e0<? extends T> e0Var, e0<? extends T> e0Var2, w2.d<? super T, ? super T> dVar, int i2) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(dVar, "isEqual is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.S(new ObservableSequenceEqualSingle(e0Var, e0Var2, dVar, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> e(e0<? extends T>... e0VarArr) {
        io.reactivex.internal.functions.a.g(e0VarArr, "sources is null");
        int length = e0VarArr.length;
        if (length == 0) {
            return b2();
        }
        if (length == 1) {
            return M7(e0VarArr[0]);
        }
        return io.reactivex.plugins.a.R(new ObservableAmb(e0VarArr, null));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, T3, R> z<R> e0(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, w2.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        return i0(Functions.y(hVar), S(), e0Var, e0Var2, e0Var3);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static z<Long> e3(long j4, TimeUnit timeUnit, h0 h0Var) {
        return c3(j4, j4, timeUnit, h0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T1, T2, R> z<R> f0(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, w2.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        return i0(Functions.x(cVar), S(), e0Var, e0Var2);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public static z<Long> f3(long j4, long j5, long j6, long j7, TimeUnit timeUnit) {
        return g3(j4, j5, j6, j7, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> g0(Iterable<? extends e0<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar) {
        return h0(iterable, oVar, S());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public static z<Long> g3(long j4, long j5, long j6, long j7, TimeUnit timeUnit, h0 h0Var) {
        if (j5 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j5);
        } else if (j5 == 0) {
            return b2().w1(j6, timeUnit, h0Var);
        } else {
            long j8 = j4 + (j5 - 1);
            if (j4 > 0 && j8 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
            io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
            return io.reactivex.plugins.a.R(new ObservableIntervalRange(j4, j8, Math.max(0L, j6), Math.max(0L, j7), timeUnit, h0Var));
        }
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> h0(Iterable<? extends e0<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar, int i2) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableCombineLatest(null, iterable, oVar, i2 << 1, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> i0(w2.o<? super Object[], ? extends R> oVar, int i2, e0<? extends T>... e0VarArr) {
        return k0(e0VarArr, oVar, i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> j0(e0<? extends T>[] e0VarArr, w2.o<? super Object[], ? extends R> oVar) {
        return k0(e0VarArr, oVar, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> j3(T t3) {
        io.reactivex.internal.functions.a.g(t3, "The item is null");
        return io.reactivex.plugins.a.R(new t0(t3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> j7(e0<T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "source is null");
        io.reactivex.internal.functions.a.g(e0Var, "onSubscribe is null");
        if (!(e0Var instanceof z)) {
            return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.o0(e0Var));
        }
        throw new IllegalArgumentException("unsafeCreate(Observable) should be upgraded");
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> k0(e0<? extends T>[] e0VarArr, w2.o<? super Object[], ? extends R> oVar, int i2) {
        io.reactivex.internal.functions.a.g(e0VarArr, "sources is null");
        if (e0VarArr.length == 0) {
            return b2();
        }
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableCombineLatest(e0VarArr, null, oVar, i2 << 1, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> k3(T t3, T t4) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        return G2(t3, t4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static z<Integer> k4(int i2, int i4) {
        if (i4 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + i4);
        } else if (i4 == 0) {
            return b2();
        } else {
            if (i4 == 1) {
                return j3(Integer.valueOf(i2));
            }
            if (i2 + (i4 - 1) <= 2147483647L) {
                return io.reactivex.plugins.a.R(new ObservableRange(i2, i4));
            }
            throw new IllegalArgumentException("Integer overflow");
        }
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> l0(Iterable<? extends e0<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar) {
        return m0(iterable, oVar, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> l3(T t3, T t4, T t5) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        return G2(t3, t4, t5);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static z<Long> l4(long j4, long j5) {
        if (j5 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j5);
        } else if (j5 == 0) {
            return b2();
        } else {
            if (j5 == 1) {
                return j3(Long.valueOf(j4));
            }
            long j6 = (j5 - 1) + j4;
            if (j4 > 0 && j6 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            return io.reactivex.plugins.a.R(new ObservableRangeLong(j4, j5));
        }
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, D> z<T> l7(Callable<? extends D> callable, w2.o<? super D, ? extends e0<? extends T>> oVar, w2.g<? super D> gVar) {
        return m7(callable, oVar, gVar, true);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> m0(Iterable<? extends e0<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar, int i2) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableCombineLatest(null, iterable, oVar, i2 << 1, true));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> m3(T t3, T t4, T t5, T t6) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        return G2(t3, t4, t5, t6);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, D> z<T> m7(Callable<? extends D> callable, w2.o<? super D, ? extends e0<? extends T>> oVar, w2.g<? super D> gVar, boolean z3) {
        io.reactivex.internal.functions.a.g(callable, "resourceSupplier is null");
        io.reactivex.internal.functions.a.g(oVar, "sourceSupplier is null");
        io.reactivex.internal.functions.a.g(gVar, "disposer is null");
        return io.reactivex.plugins.a.R(new ObservableUsing(callable, oVar, gVar, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> n0(w2.o<? super Object[], ? extends R> oVar, int i2, e0<? extends T>... e0VarArr) {
        return p0(e0VarArr, oVar, i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> n3(T t3, T t4, T t5, T t6, T t7) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        return G2(t3, t4, t5, t6, t7);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> o0(e0<? extends T>[] e0VarArr, w2.o<? super Object[], ? extends R> oVar) {
        return p0(e0VarArr, oVar, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> o3(T t3, T t4, T t5, T t6, T t7, T t8) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        io.reactivex.internal.functions.a.g(t8, "The sixth item is null");
        return G2(t3, t4, t5, t6, t7, t8);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T, R> z<R> p0(e0<? extends T>[] e0VarArr, w2.o<? super Object[], ? extends R> oVar, int i2) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        if (e0VarArr.length == 0) {
            return b2();
        }
        return io.reactivex.plugins.a.R(new ObservableCombineLatest(e0VarArr, null, oVar, i2 << 1, true));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> p1(c0<T> c0Var) {
        io.reactivex.internal.functions.a.g(c0Var, "source is null");
        return io.reactivex.plugins.a.R(new ObservableCreate(c0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> p3(T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        io.reactivex.internal.functions.a.g(t8, "The sixth item is null");
        io.reactivex.internal.functions.a.g(t9, "The seventh item is null");
        return G2(t3, t4, t5, t6, t7, t8, t9);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> q3(T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        io.reactivex.internal.functions.a.g(t8, "The sixth item is null");
        io.reactivex.internal.functions.a.g(t9, "The seventh item is null");
        io.reactivex.internal.functions.a.g(t10, "The eighth item is null");
        return G2(t3, t4, t5, t6, t7, t8, t9, t10);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> r0(e0<? extends e0<? extends T>> e0Var) {
        return s0(e0Var, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> r3(T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10, T t11) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        io.reactivex.internal.functions.a.g(t8, "The sixth item is null");
        io.reactivex.internal.functions.a.g(t9, "The seventh item is null");
        io.reactivex.internal.functions.a.g(t10, "The eighth item is null");
        io.reactivex.internal.functions.a.g(t11, "The ninth item is null");
        return G2(t3, t4, t5, t6, t7, t8, t9, t10, t11);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> s0(e0<? extends e0<? extends T>> e0Var, int i2) {
        io.reactivex.internal.functions.a.g(e0Var, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.R(new ObservableConcatMap(e0Var, Functions.k(), i2, ErrorMode.IMMEDIATE));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> s3(T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10, T t11, T t12) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        io.reactivex.internal.functions.a.g(t8, "The sixth item is null");
        io.reactivex.internal.functions.a.g(t9, "The seventh item is null");
        io.reactivex.internal.functions.a.g(t10, "The eighth item is null");
        io.reactivex.internal.functions.a.g(t11, "The ninth item is null");
        io.reactivex.internal.functions.a.g(t12, "The tenth item is null");
        return G2(t3, t4, t5, t6, t7, t8, t9, t10, t11, t12);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> t0(e0<? extends T> e0Var, e0<? extends T> e0Var2) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        return x0(e0Var, e0Var2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> u0(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        return x0(e0Var, e0Var2, e0Var3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> u1(Callable<? extends e0<? extends T>> callable) {
        io.reactivex.internal.functions.a.g(callable, "supplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.s(callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> v0(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3, e0<? extends T> e0Var4) {
        io.reactivex.internal.functions.a.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "source4 is null");
        return x0(e0Var, e0Var2, e0Var3, e0Var4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> w0(Iterable<? extends e0<? extends T>> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return M2(iterable).S0(Functions.k(), S(), false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> x0(e0<? extends T>... e0VarArr) {
        if (e0VarArr.length == 0) {
            return b2();
        }
        if (e0VarArr.length == 1) {
            return M7(e0VarArr[0]);
        }
        return io.reactivex.plugins.a.R(new ObservableConcatMap(G2(e0VarArr), Functions.k(), S(), ErrorMode.BOUNDARY));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> y0(e0<? extends T>... e0VarArr) {
        if (e0VarArr.length == 0) {
            return b2();
        }
        if (e0VarArr.length == 1) {
            return M7(e0VarArr[0]);
        }
        return D0(G2(e0VarArr));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> z0(int i2, int i4, e0<? extends T>... e0VarArr) {
        return G2(e0VarArr).V0(Functions.k(), i2, i4, false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public static <T> z<T> z3(e0<? extends e0<? extends T>> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "sources is null");
        return io.reactivex.plugins.a.R(new ObservableFlatMap(e0Var, Functions.k(), false, Integer.MAX_VALUE, S()));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<List<T>> A(int i2, int i4) {
        return (z<List<T>>) B(i2, i4, ArrayListSupplier.asCallable());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<T> A1(w2.o<? super T, ? extends e0<U>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "itemDelay is null");
        return (z<T>) i2(ObservableInternalHelper.c(oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> A2(w2.o<? super T, ? extends o0<? extends R>> oVar) {
        return B2(oVar, false);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final <R> z<R> A4(w2.o<? super z<T>, ? extends e0<R>> oVar, h0 h0Var) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return ObservableReplay.v8(ObservableInternalHelper.g(this), ObservableInternalHelper.k(oVar, h0Var));
    }

    @SchedulerSupport("none")
    public final io.reactivex.disposables.b A5() {
        return E5(Functions.h(), Functions.f65827f, Functions.f65824c, Functions.h());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<io.reactivex.schedulers.d<T>> A6(TimeUnit timeUnit) {
        return B6(timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <B> z<z<T>> A7(e0<B> e0Var) {
        return B7(e0Var, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U extends Collection<? super T>> z<U> B(int i2, int i4, Callable<U> callable) {
        io.reactivex.internal.functions.a.h(i2, "count");
        io.reactivex.internal.functions.a.h(i4, "skip");
        io.reactivex.internal.functions.a.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.R(new ObservableBuffer(this, i2, i4, callable));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> B1(long j4, TimeUnit timeUnit) {
        return C1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> B2(w2.o<? super T, ? extends o0<? extends R>> oVar, boolean z3) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new ObservableFlatMapSingle(this, oVar, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.observables.a<T> B4() {
        return ObservableReplay.u8(this);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b B5(w2.g<? super T> gVar) {
        return E5(gVar, Functions.f65827f, Functions.f65824c, Functions.h());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<io.reactivex.schedulers.d<T>> B6(TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new t1(this, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <B> z<z<T>> B7(e0<B> e0Var, int i2) {
        io.reactivex.internal.functions.a.g(e0Var, "boundary is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableWindowBoundary(this, e0Var, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U extends Collection<? super T>> z<U> C(int i2, Callable<U> callable) {
        return B(i2, i2, callable);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> C1(long j4, TimeUnit timeUnit, h0 h0Var) {
        return D1(N6(j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b C2(w2.g<? super T> gVar) {
        return B5(gVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.observables.a<T> C4(int i2) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return ObservableReplay.q8(this, i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b C5(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2) {
        return E5(gVar, gVar2, Functions.f65824c, Functions.h());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> C6(long j4, TimeUnit timeUnit) {
        return K6(j4, timeUnit, null, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, V> z<z<T>> C7(e0<U> e0Var, w2.o<? super U, ? extends e0<V>> oVar) {
        return D7(e0Var, oVar, S());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<List<T>> D(long j4, long j5, TimeUnit timeUnit) {
        return (z<List<T>>) F(j4, j5, timeUnit, io.reactivex.schedulers.b.a(), ArrayListSupplier.asCallable());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<T> D1(e0<U> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.u(this, e0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b D2(w2.r<? super T> rVar) {
        return F2(rVar, Functions.f65827f, Functions.f65824c);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final io.reactivex.observables.a<T> D4(int i2, long j4, TimeUnit timeUnit) {
        return E4(i2, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b D5(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar) {
        return E5(gVar, gVar2, aVar, Functions.h());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> D6(long j4, TimeUnit timeUnit, e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return K6(j4, timeUnit, e0Var, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, V> z<z<T>> D7(e0<U> e0Var, w2.o<? super U, ? extends e0<V>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(e0Var, "openingIndicator is null");
        io.reactivex.internal.functions.a.g(oVar, "closingIndicator is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new w1(this, e0Var, oVar, i2));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<List<T>> E(long j4, long j5, TimeUnit timeUnit, h0 h0Var) {
        return (z<List<T>>) F(j4, j5, timeUnit, h0Var, ArrayListSupplier.asCallable());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T2> z<T2> E1() {
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.v(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b E2(w2.r<? super T> rVar, w2.g<? super Throwable> gVar) {
        return F2(rVar, gVar, Functions.f65824c);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final io.reactivex.observables.a<T> E4(int i2, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return ObservableReplay.s8(this, j4, timeUnit, h0Var, i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b E5(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.g<? super io.reactivex.disposables.b> gVar3) {
        io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        io.reactivex.internal.functions.a.g(gVar2, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.a.g(gVar3, "onSubscribe is null");
        LambdaObserver lambdaObserver = new LambdaObserver(gVar, gVar2, aVar, gVar3);
        a(lambdaObserver);
        return lambdaObserver;
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> E6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return K6(j4, timeUnit, null, h0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <B> z<z<T>> E7(Callable<? extends e0<B>> callable) {
        return F7(callable, S());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final <U extends Collection<? super T>> z<U> F(long j4, long j5, TimeUnit timeUnit, h0 h0Var, Callable<U> callable) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.m(this, j4, j5, timeUnit, h0Var, callable, Integer.MAX_VALUE, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> F1() {
        return H1(Functions.k(), Functions.g());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.disposables.b F2(w2.r<? super T> rVar, w2.g<? super Throwable> gVar, w2.a aVar) {
        io.reactivex.internal.functions.a.g(rVar, "onNext is null");
        io.reactivex.internal.functions.a.g(gVar, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        ForEachWhileObserver forEachWhileObserver = new ForEachWhileObserver(rVar, gVar, aVar);
        a(forEachWhileObserver);
        return forEachWhileObserver;
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final io.reactivex.observables.a<T> F4(int i2, h0 h0Var) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return ObservableReplay.w8(C4(i2), h0Var);
    }

    protected abstract void F5(g0<? super T> g0Var);

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> F6(long j4, TimeUnit timeUnit, h0 h0Var, e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return K6(j4, timeUnit, e0Var, h0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <B> z<z<T>> F7(Callable<? extends e0<B>> callable, int i2) {
        io.reactivex.internal.functions.a.g(callable, "boundary is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableWindowBoundarySupplier(this, callable, i2));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<List<T>> G(long j4, TimeUnit timeUnit) {
        return J(j4, timeUnit, io.reactivex.schedulers.b.a(), Integer.MAX_VALUE);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K> z<T> G1(w2.o<? super T, K> oVar) {
        return H1(oVar, Functions.g());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final io.reactivex.observables.a<T> G4(long j4, TimeUnit timeUnit) {
        return H4(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> G5(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableSubscribeOn(this, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, V> z<T> G6(e0<U> e0Var, w2.o<? super T, ? extends e0<V>> oVar) {
        io.reactivex.internal.functions.a.g(e0Var, "firstTimeoutIndicator is null");
        return L6(e0Var, oVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T1, T2, T3, T4, R> z<R> G7(e0<T1> e0Var, e0<T2> e0Var2, e0<T3> e0Var3, e0<T4> e0Var4, w2.j<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> jVar) {
        io.reactivex.internal.functions.a.g(e0Var, "o1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "o2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "o3 is null");
        io.reactivex.internal.functions.a.g(e0Var4, "o4 is null");
        io.reactivex.internal.functions.a.g(jVar, "combiner is null");
        return L7(new e0[]{e0Var, e0Var2, e0Var3, e0Var4}, Functions.A(jVar));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<List<T>> H(long j4, TimeUnit timeUnit, int i2) {
        return J(j4, timeUnit, io.reactivex.schedulers.b.a(), i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K> z<T> H1(w2.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(callable, "collectionSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.x(this, oVar, callable));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final io.reactivex.observables.a<T> H4(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return ObservableReplay.r8(this, j4, timeUnit, h0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <E extends g0<? super T>> E H5(E e4) {
        a(e4);
        return e4;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, V> z<T> H6(e0<U> e0Var, w2.o<? super T, ? extends e0<V>> oVar, e0<? extends T> e0Var2) {
        io.reactivex.internal.functions.a.g(e0Var, "firstTimeoutIndicator is null");
        io.reactivex.internal.functions.a.g(e0Var2, "other is null");
        return L6(e0Var, oVar, e0Var2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T1, T2, T3, R> z<R> H7(e0<T1> e0Var, e0<T2> e0Var2, e0<T3> e0Var3, w2.i<? super T, ? super T1, ? super T2, ? super T3, R> iVar) {
        io.reactivex.internal.functions.a.g(e0Var, "o1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "o2 is null");
        io.reactivex.internal.functions.a.g(e0Var3, "o3 is null");
        io.reactivex.internal.functions.a.g(iVar, "combiner is null");
        return L7(new e0[]{e0Var, e0Var2, e0Var3}, Functions.z(iVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<List<T>> I(long j4, TimeUnit timeUnit, h0 h0Var) {
        return (z<List<T>>) K(j4, timeUnit, h0Var, Integer.MAX_VALUE, ArrayListSupplier.asCallable(), false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> I1() {
        return K1(Functions.k());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final io.reactivex.observables.a<T> I4(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return ObservableReplay.w8(B4(), h0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> I5(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return io.reactivex.plugins.a.R(new o1(this, e0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <V> z<T> I6(w2.o<? super T, ? extends e0<V>> oVar) {
        return L6(null, oVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @CheckReturnValue
    public final <T1, T2, R> z<R> I7(e0<T1> e0Var, e0<T2> e0Var2, w2.h<? super T, ? super T1, ? super T2, R> hVar) {
        io.reactivex.internal.functions.a.g(e0Var, "o1 is null");
        io.reactivex.internal.functions.a.g(e0Var2, "o2 is null");
        io.reactivex.internal.functions.a.g(hVar, "combiner is null");
        return L7(new e0[]{e0Var, e0Var2}, Functions.y(hVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<List<T>> J(long j4, TimeUnit timeUnit, h0 h0Var, int i2) {
        return (z<List<T>>) K(j4, timeUnit, h0Var, i2, ArrayListSupplier.asCallable(), false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> J1(w2.d<? super T, ? super T> dVar) {
        io.reactivex.internal.functions.a.g(dVar, "comparer is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.y(this, Functions.k(), dVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> J4() {
        return L4(Long.MAX_VALUE, Functions.c());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> J5(w2.o<? super T, ? extends e0<? extends R>> oVar) {
        return K5(oVar, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <V> z<T> J6(w2.o<? super T, ? extends e0<V>> oVar, e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return L6(null, oVar, e0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> z<R> J7(e0<? extends U> e0Var, w2.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        io.reactivex.internal.functions.a.g(cVar, "combiner is null");
        return io.reactivex.plugins.a.R(new ObservableWithLatestFrom(this, cVar, e0Var));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final <U extends Collection<? super T>> z<U> K(long j4, TimeUnit timeUnit, h0 h0Var, int i2, Callable<U> callable, boolean z3) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.g(callable, "bufferSupplier is null");
        io.reactivex.internal.functions.a.h(i2, "count");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.m(this, j4, j4, timeUnit, h0Var, callable, i2, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> K0(w2.o<? super T, ? extends e0<? extends R>> oVar) {
        return L0(oVar, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K> z<T> K1(w2.o<? super T, K> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.y(this, oVar, io.reactivex.internal.functions.a.d()));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> K4(long j4) {
        return L4(j4, Functions.c());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> K5(w2.o<? super T, ? extends e0<? extends R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        if (this instanceof x2.m) {
            Object call = ((x2.m) this).call();
            if (call == null) {
                return b2();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return io.reactivex.plugins.a.R(new ObservableSwitchMap(this, oVar, i2, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> K7(Iterable<? extends e0<?>> iterable, w2.o<? super Object[], R> oVar) {
        io.reactivex.internal.functions.a.g(iterable, "others is null");
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        return io.reactivex.plugins.a.R(new ObservableWithLatestFromMany(this, iterable, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <B> z<List<T>> L(e0<B> e0Var) {
        return (z<List<T>>) N(e0Var, ArrayListSupplier.asCallable());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> L0(w2.o<? super T, ? extends e0<? extends R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        if (this instanceof x2.m) {
            Object call = ((x2.m) this).call();
            if (call == null) {
                return b2();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return io.reactivex.plugins.a.R(new ObservableConcatMap(this, oVar, i2, ErrorMode.IMMEDIATE));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> L1(w2.g<? super T> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onAfterNext is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.z(this, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> L4(long j4, w2.r<? super Throwable> rVar) {
        if (j4 >= 0) {
            io.reactivex.internal.functions.a.g(rVar, "predicate is null");
            return io.reactivex.plugins.a.R(new ObservableRetryPredicate(this, j4, rVar));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.a L5(@NonNull w2.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new ObservableSwitchMapCompletable(this, oVar, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> L7(e0<?>[] e0VarArr, w2.o<? super Object[], R> oVar) {
        io.reactivex.internal.functions.a.g(e0VarArr, "others is null");
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        return io.reactivex.plugins.a.R(new ObservableWithLatestFromMany(this, e0VarArr, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <B> z<List<T>> M(e0<B> e0Var, int i2) {
        io.reactivex.internal.functions.a.h(i2, "initialCapacity");
        return (z<List<T>>) N(e0Var, Functions.f(i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.a M0(w2.o<? super T, ? extends g> oVar) {
        return N0(oVar, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> M1(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onFinally is null");
        return S1(Functions.h(), Functions.h(), Functions.f65824c, aVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> M4(w2.d<? super Integer, ? super Throwable> dVar) {
        io.reactivex.internal.functions.a.g(dVar, "predicate is null");
        return io.reactivex.plugins.a.R(new ObservableRetryBiPredicate(this, dVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.a M5(@NonNull w2.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new ObservableSwitchMapCompletable(this, oVar, true));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <B, U extends Collection<? super T>> z<U> N(e0<B> e0Var, Callable<U> callable) {
        io.reactivex.internal.functions.a.g(e0Var, "boundary is null");
        io.reactivex.internal.functions.a.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.l(this, e0Var, callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.a N0(w2.o<? super T, ? extends g> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "capacityHint");
        return io.reactivex.plugins.a.O(new ObservableConcatMapCompletable(this, oVar, ErrorMode.IMMEDIATE, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> N1(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onFinally is null");
        return io.reactivex.plugins.a.R(new ObservableDoFinally(this, aVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> N4(w2.r<? super Throwable> rVar) {
        return L4(Long.MAX_VALUE, rVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> N5(w2.o<? super T, ? extends e0<? extends R>> oVar) {
        return O5(oVar, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <TOpening, TClosing> z<List<T>> O(e0<? extends TOpening> e0Var, w2.o<? super TOpening, ? extends e0<? extends TClosing>> oVar) {
        return (z<List<T>>) P(e0Var, oVar, ArrayListSupplier.asCallable());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.a O0(w2.o<? super T, ? extends g> oVar) {
        return Q0(oVar, true, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> O1(w2.a aVar) {
        return S1(Functions.h(), Functions.h(), aVar, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> O4(w2.e eVar) {
        io.reactivex.internal.functions.a.g(eVar, "stop is null");
        return L4(Long.MAX_VALUE, Functions.v(eVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> O5(w2.o<? super T, ? extends e0<? extends R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        if (this instanceof x2.m) {
            Object call = ((x2.m) this).call();
            if (call == null) {
                return b2();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return io.reactivex.plugins.a.R(new ObservableSwitchMap(this, oVar, i2, true));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<io.reactivex.schedulers.d<T>> O6() {
        return R6(TimeUnit.MILLISECONDS, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <TOpening, TClosing, U extends Collection<? super T>> z<U> P(e0<? extends TOpening> e0Var, w2.o<? super TOpening, ? extends e0<? extends TClosing>> oVar, Callable<U> callable) {
        io.reactivex.internal.functions.a.g(e0Var, "openingIndicator is null");
        io.reactivex.internal.functions.a.g(oVar, "closingIndicator is null");
        io.reactivex.internal.functions.a.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.R(new ObservableBufferBoundary(this, e0Var, oVar, callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.a P0(w2.o<? super T, ? extends g> oVar, boolean z3) {
        return Q0(oVar, z3, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> P1(w2.a aVar) {
        return U1(Functions.h(), aVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> P4(w2.o<? super z<Throwable>, ? extends e0<?>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "handler is null");
        return io.reactivex.plugins.a.R(new ObservableRetryWhen(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> P5(@NonNull w2.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new ObservableSwitchMapMaybe(this, oVar, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<io.reactivex.schedulers.d<T>> P6(h0 h0Var) {
        return R6(TimeUnit.MILLISECONDS, h0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <B> z<List<T>> Q(Callable<? extends e0<B>> callable) {
        return (z<List<T>>) R(callable, ArrayListSupplier.asCallable());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.a Q0(w2.o<? super T, ? extends g> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.O(new ObservableConcatMapCompletable(this, oVar, z3 ? ErrorMode.END : ErrorMode.BOUNDARY, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> Q1(g0<? super T> g0Var) {
        io.reactivex.internal.functions.a.g(g0Var, "observer is null");
        return S1(ObservableInternalHelper.f(g0Var), ObservableInternalHelper.e(g0Var), ObservableInternalHelper.d(g0Var), Functions.f65824c);
    }

    @SchedulerSupport("none")
    public final void Q4(g0<? super T> g0Var) {
        io.reactivex.internal.functions.a.g(g0Var, "s is null");
        if (g0Var instanceof io.reactivex.observers.k) {
            a(g0Var);
        } else {
            a(new io.reactivex.observers.k(g0Var));
        }
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> Q5(@NonNull w2.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new ObservableSwitchMapMaybe(this, oVar, true));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<io.reactivex.schedulers.d<T>> Q6(TimeUnit timeUnit) {
        return R6(timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <B, U extends Collection<? super T>> z<U> R(Callable<? extends e0<B>> callable, Callable<U> callable2) {
        io.reactivex.internal.functions.a.g(callable, "boundarySupplier is null");
        io.reactivex.internal.functions.a.g(callable2, "bufferSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.k(this, callable, callable2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> R0(w2.o<? super T, ? extends e0<? extends R>> oVar) {
        return S0(oVar, S(), true);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> R1(w2.g<? super y<T>> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "consumer is null");
        return S1(Functions.t(gVar), Functions.s(gVar), Functions.r(gVar), Functions.f65824c);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> R4(long j4, TimeUnit timeUnit) {
        return S4(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    @NonNull
    public final <R> z<R> R5(@NonNull w2.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new ObservableSwitchMapSingle(this, oVar, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<io.reactivex.schedulers.d<T>> R6(TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return (z<io.reactivex.schedulers.d<T>>) x3(Functions.w(timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> S0(w2.o<? super T, ? extends e0<? extends R>> oVar, int i2, boolean z3) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        if (this instanceof x2.m) {
            Object call = ((x2.m) this).call();
            if (call == null) {
                return b2();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return io.reactivex.plugins.a.R(new ObservableConcatMap(this, oVar, i2, z3 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> S4(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableSampleTimed(this, j4, timeUnit, h0Var, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    @NonNull
    public final <R> z<R> S5(@NonNull w2.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new ObservableSwitchMapSingle(this, oVar, true));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> R S6(w2.o<? super z<T>, R> oVar) {
        try {
            return (R) ((w2.o) io.reactivex.internal.functions.a.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.e(th);
        }
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> T() {
        return ObservableCache.g8(this);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> T0(w2.o<? super T, ? extends e0<? extends R>> oVar) {
        return U0(oVar, Integer.MAX_VALUE, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> T1(w2.g<? super Throwable> gVar) {
        w2.g<? super T> h4 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return S1(h4, gVar, aVar, aVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K> z<io.reactivex.observables.b<K, T>> T2(w2.o<? super T, ? extends K> oVar) {
        return (z<io.reactivex.observables.b<K, T>>) W2(oVar, Functions.k(), false, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> T3(@NonNull g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return io.reactivex.plugins.a.R(new ObservableMergeWithCompletable(this, gVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> T4(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableSampleTimed(this, j4, timeUnit, h0Var, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final j<T> T6(BackpressureStrategy backpressureStrategy) {
        io.reactivex.internal.operators.flowable.h0 h0Var = new io.reactivex.internal.operators.flowable.h0(this);
        int i2 = a.f70410a[backpressureStrategy.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        return h0Var.m4();
                    }
                    return io.reactivex.plugins.a.P(new FlowableOnBackpressureError(h0Var));
                }
                return h0Var;
            }
            return h0Var.w4();
        }
        return h0Var.u4();
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> U(int i2) {
        return ObservableCache.h8(this, i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> U0(w2.o<? super T, ? extends e0<? extends R>> oVar, int i2, int i4) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "prefetch");
        return io.reactivex.plugins.a.R(new ObservableConcatMapEager(this, oVar, ErrorMode.IMMEDIATE, i2, i4));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> U1(w2.g<? super io.reactivex.disposables.b> gVar, w2.a aVar) {
        io.reactivex.internal.functions.a.g(gVar, "onSubscribe is null");
        io.reactivex.internal.functions.a.g(aVar, "onDispose is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.b0(this, gVar, aVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K, V> z<io.reactivex.observables.b<K, V>> U2(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2) {
        return W2(oVar, oVar2, false, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> U3(@NonNull w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return io.reactivex.plugins.a.R(new ObservableMergeWithMaybe(this, wVar));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> U4(long j4, TimeUnit timeUnit, boolean z3) {
        return T4(j4, timeUnit, io.reactivex.schedulers.b.a(), z3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final Future<T> U6() {
        return (Future) H5(new io.reactivex.internal.observers.h());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<U> V(Class<U> cls) {
        io.reactivex.internal.functions.a.g(cls, "clazz is null");
        return (z<U>) x3(Functions.e(cls));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> V0(w2.o<? super T, ? extends e0<? extends R>> oVar, int i2, int i4, boolean z3) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "prefetch");
        return io.reactivex.plugins.a.R(new ObservableConcatMapEager(this, oVar, z3 ? ErrorMode.END : ErrorMode.BOUNDARY, i2, i4));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> V1(w2.g<? super T> gVar) {
        w2.g<? super Throwable> h4 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return S1(gVar, h4, aVar, aVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K, V> z<io.reactivex.observables.b<K, V>> V2(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, boolean z3) {
        return W2(oVar, oVar2, z3, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> V3(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return B3(this, e0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<T> V4(e0<U> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "sampler is null");
        return io.reactivex.plugins.a.R(new ObservableSampleWithObservable(this, e0Var, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<List<T>> V6() {
        return W6(16);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> i0<U> W(Callable<? extends U> callable, w2.b<? super U, ? super T> bVar) {
        io.reactivex.internal.functions.a.g(callable, "initialValueSupplier is null");
        io.reactivex.internal.functions.a.g(bVar, "collector is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.observable.o(this, callable, bVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> W0(w2.o<? super T, ? extends e0<? extends R>> oVar, boolean z3) {
        return V0(oVar, Integer.MAX_VALUE, S(), z3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> W1(w2.g<? super io.reactivex.disposables.b> gVar) {
        return U1(gVar, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K, V> z<io.reactivex.observables.b<K, V>> W2(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableGroupBy(this, oVar, oVar2, i2, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> W3(@NonNull o0<? extends T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "other is null");
        return io.reactivex.plugins.a.R(new ObservableMergeWithSingle(this, o0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<T> W4(e0<U> e0Var, boolean z3) {
        io.reactivex.internal.functions.a.g(e0Var, "sampler is null");
        return io.reactivex.plugins.a.R(new ObservableSampleWithObservable(this, e0Var, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<List<T>> W6(int i2) {
        io.reactivex.internal.functions.a.h(i2, "capacityHint");
        return io.reactivex.plugins.a.S(new v1(this, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> i0<U> X(U u3, w2.b<? super U, ? super T> bVar) {
        io.reactivex.internal.functions.a.g(u3, "initialValue is null");
        return W(Functions.m(u3), bVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<U> X0(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.i0(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> X1(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onTerminate is null");
        return S1(Functions.h(), Functions.a(aVar), aVar, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K> z<io.reactivex.observables.b<K, T>> X2(w2.o<? super T, ? extends K> oVar, boolean z3) {
        return (z<io.reactivex.observables.b<K, T>>) W2(oVar, Functions.k(), z3, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> X4(R r3, w2.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.a.g(r3, "seed is null");
        return Z4(Functions.m(r3), cVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> X5(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.R(new p1(this, j4));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U extends Collection<? super T>> i0<U> X6(Callable<U> callable) {
        io.reactivex.internal.functions.a.g(callable, "collectionSupplier is null");
        return io.reactivex.plugins.a.S(new v1(this, callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<U> Y0(w2.o<? super T, ? extends Iterable<? extends U>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return (z<U>) L0(ObservableInternalHelper.a(oVar), i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> Y1(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.observable.d0(this, j4));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <TRight, TLeftEnd, TRightEnd, R> z<R> Y2(e0<? extends TRight> e0Var, w2.o<? super T, ? extends e0<TLeftEnd>> oVar, w2.o<? super TRight, ? extends e0<TRightEnd>> oVar2, w2.c<? super T, ? super z<TRight>, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        io.reactivex.internal.functions.a.g(oVar, "leftEnd is null");
        io.reactivex.internal.functions.a.g(oVar2, "rightEnd is null");
        io.reactivex.internal.functions.a.g(cVar, "resultSelector is null");
        return io.reactivex.plugins.a.R(new ObservableGroupJoin(this, e0Var, oVar, oVar2, cVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> Y3(h0 h0Var) {
        return a4(h0Var, false, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> Y4(w2.c<T, T, T> cVar) {
        io.reactivex.internal.functions.a.g(cVar, "accumulator is null");
        return io.reactivex.plugins.a.R(new g1(this, cVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> Y5(long j4, TimeUnit timeUnit) {
        return j6(M6(j4, timeUnit));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K> i0<Map<K, T>> Y6(w2.o<? super T, ? extends K> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        return (i0<Map<K, T>>) W(HashMapSupplier.asCallable(), Functions.F(oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> Z0(w2.o<? super T, ? extends w<? extends R>> oVar) {
        return a1(oVar, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> Z1(long j4, T t3) {
        if (j4 >= 0) {
            io.reactivex.internal.functions.a.g(t3, "defaultItem is null");
            return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.observable.e0(this, j4, t3));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> Z2() {
        return io.reactivex.plugins.a.R(new q0(this));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> Z3(h0 h0Var, boolean z3) {
        return a4(h0Var, z3, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> Z4(Callable<R> callable, w2.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.a.g(callable, "seedSupplier is null");
        io.reactivex.internal.functions.a.g(cVar, "accumulator is null");
        return io.reactivex.plugins.a.R(new h1(this, callable, cVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> Z5(long j4, TimeUnit timeUnit, h0 h0Var) {
        return j6(N6(j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K, V> i0<Map<K, V>> Z6(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(oVar2, "valueSelector is null");
        return (i0<Map<K, V>>) W(HashMapSupplier.asCallable(), Functions.G(oVar, oVar2));
    }

    @Override // io.reactivex.e0
    @SchedulerSupport("none")
    public final void a(g0<? super T> g0Var) {
        io.reactivex.internal.functions.a.g(g0Var, "observer is null");
        try {
            g0<? super T> f02 = io.reactivex.plugins.a.f0(this, g0Var);
            io.reactivex.internal.functions.a.g(f02, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            F5(f02);
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> a1(w2.o<? super T, ? extends w<? extends R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.R(new ObservableConcatMapMaybe(this, oVar, ErrorMode.IMMEDIATE, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> a2(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.observable.e0(this, j4, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.a a3() {
        return io.reactivex.plugins.a.O(new s0(this));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> a4(h0 h0Var, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableObserveOn(this, h0Var, z3, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> a6(int i2) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("count >= 0 required but it was " + i2);
        } else if (i2 == 0) {
            return io.reactivex.plugins.a.R(new r0(this));
        } else {
            if (i2 == 1) {
                return io.reactivex.plugins.a.R(new q1(this));
            }
            return io.reactivex.plugins.a.R(new ObservableTakeLast(this, i2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K, V> i0<Map<K, V>> a7(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, V>> callable) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.a.g(callable, "mapSupplier is null");
        return (i0<Map<K, V>>) W(callable, Functions.G(oVar, oVar2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> b1(w2.o<? super T, ? extends w<? extends R>> oVar) {
        return d1(oVar, true, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<U> b4(Class<U> cls) {
        io.reactivex.internal.functions.a.g(cls, "clazz is null");
        return e2(Functions.l(cls)).V(cls);
    }

    @SchedulerSupport(SchedulerSupport.TRAMPOLINE)
    @CheckReturnValue
    public final z<T> b6(long j4, long j5, TimeUnit timeUnit) {
        return d6(j4, j5, timeUnit, io.reactivex.schedulers.b.h(), false, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K> i0<Map<K, Collection<T>>> b7(w2.o<? super T, ? extends K> oVar) {
        return (i0<Map<K, Collection<T>>>) e7(oVar, Functions.k(), HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> z<R> b8(e0<? extends U> e0Var, w2.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return U7(this, e0Var, cVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<Boolean> c(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.observable.f(this, rVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> c1(w2.o<? super T, ? extends w<? extends R>> oVar, boolean z3) {
        return d1(oVar, z3, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> c4(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "next is null");
        return d4(Functions.n(e0Var));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> c6(long j4, long j5, TimeUnit timeUnit, h0 h0Var) {
        return d6(j4, j5, timeUnit, h0Var, false, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K, V> i0<Map<K, Collection<V>>> c7(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2) {
        return e7(oVar, oVar2, HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> z<R> c8(e0<? extends U> e0Var, w2.c<? super T, ? super U, ? extends R> cVar, boolean z3) {
        return V7(this, e0Var, cVar, z3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> d1(w2.o<? super T, ? extends w<? extends R>> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.R(new ObservableConcatMapMaybe(this, oVar, z3 ? ErrorMode.END : ErrorMode.BOUNDARY, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> d4(w2.o<? super Throwable, ? extends e0<? extends T>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "resumeFunction is null");
        return io.reactivex.plugins.a.R(new b1(this, oVar, false));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> d6(long j4, long j5, TimeUnit timeUnit, h0 h0Var, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        if (j4 >= 0) {
            return io.reactivex.plugins.a.R(new ObservableTakeLastTimed(this, j4, j5, timeUnit, h0Var, i2, z3));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K, V> i0<Map<K, Collection<V>>> d7(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, Callable<Map<K, Collection<V>>> callable) {
        return e7(oVar, oVar2, callable, ArrayListSupplier.asFunction());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> z<R> d8(e0<? extends U> e0Var, w2.c<? super T, ? super U, ? extends R> cVar, boolean z3, int i2) {
        return W7(this, e0Var, cVar, z3, i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> e1(w2.o<? super T, ? extends o0<? extends R>> oVar) {
        return f1(oVar, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> e2(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.h0(this, rVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> e4(w2.o<? super Throwable, ? extends T> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "valueSupplier is null");
        return io.reactivex.plugins.a.R(new c1(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> e5() {
        return io.reactivex.plugins.a.R(new i1(this));
    }

    @SchedulerSupport(SchedulerSupport.TRAMPOLINE)
    @CheckReturnValue
    public final z<T> e6(long j4, TimeUnit timeUnit) {
        return h6(j4, timeUnit, io.reactivex.schedulers.b.h(), false, S());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @CheckReturnValue
    public final <K, V> i0<Map<K, Collection<V>>> e7(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, Collection<V>>> callable, w2.o<? super K, ? extends Collection<? super V>> oVar3) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.a.g(callable, "mapSupplier is null");
        io.reactivex.internal.functions.a.g(oVar3, "collectionFactory is null");
        return (i0<Map<K, Collection<V>>>) W(callable, Functions.H(oVar, oVar2, oVar3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> z<R> e8(Iterable<U> iterable, w2.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(iterable, "other is null");
        io.reactivex.internal.functions.a.g(cVar, "zipper is null");
        return io.reactivex.plugins.a.R(new y1(this, iterable, cVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> f(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return e(this, e0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> f1(w2.o<? super T, ? extends o0<? extends R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.R(new ObservableConcatMapSingle(this, oVar, ErrorMode.IMMEDIATE, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> f2(T t3) {
        return Z1(0L, t3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> f4(T t3) {
        io.reactivex.internal.functions.a.g(t3, "item is null");
        return e4(Functions.n(t3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> f5() {
        return j4().k8();
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> f6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return h6(j4, timeUnit, h0Var, false, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<List<T>> f7() {
        return h7(Functions.q());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<Boolean> g(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.observable.h(this, rVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> g1(w2.o<? super T, ? extends o0<? extends R>> oVar) {
        return i1(oVar, true, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> g2() {
        return Y1(0L);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> g4(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "next is null");
        return io.reactivex.plugins.a.R(new b1(this, Functions.n(e0Var), true));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> g5(T t3) {
        io.reactivex.internal.functions.a.g(t3, "defaultItem is null");
        return io.reactivex.plugins.a.S(new k1(this, t3));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> g6(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        return h6(j4, timeUnit, h0Var, z3, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<List<T>> g7(int i2) {
        return i7(Functions.q(), i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> R h(@NonNull a0<T, ? extends R> a0Var) {
        return (R) ((a0) io.reactivex.internal.functions.a.g(a0Var, "converter is null")).a(this);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> h1(w2.o<? super T, ? extends o0<? extends R>> oVar, boolean z3) {
        return i1(oVar, z3, 2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> h2() {
        return a2(0L);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<Boolean> h3() {
        return c(Functions.b());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> h4() {
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.w(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> h5() {
        return io.reactivex.plugins.a.Q(new j1(this));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> h6(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3, int i2) {
        return d6(Long.MAX_VALUE, j4, timeUnit, h0Var, z3, i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<List<T>> h7(Comparator<? super T> comparator) {
        io.reactivex.internal.functions.a.g(comparator, "comparator is null");
        return (i0<List<T>>) V6().q0(Functions.o(comparator));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final T i() {
        io.reactivex.internal.observers.d dVar = new io.reactivex.internal.observers.d();
        a(dVar);
        T a4 = dVar.a();
        if (a4 != null) {
            return a4;
        }
        throw new NoSuchElementException();
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> i1(w2.o<? super T, ? extends o0<? extends R>> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.R(new ObservableConcatMapSingle(this, oVar, z3 ? ErrorMode.END : ErrorMode.BOUNDARY, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> i2(w2.o<? super T, ? extends e0<? extends R>> oVar) {
        return r2(oVar, false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <TRight, TLeftEnd, TRightEnd, R> z<R> i3(e0<? extends TRight> e0Var, w2.o<? super T, ? extends e0<TLeftEnd>> oVar, w2.o<? super TRight, ? extends e0<TRightEnd>> oVar2, w2.c<? super T, ? super TRight, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        io.reactivex.internal.functions.a.g(oVar, "leftEnd is null");
        io.reactivex.internal.functions.a.g(oVar2, "rightEnd is null");
        io.reactivex.internal.functions.a.g(cVar, "resultSelector is null");
        return io.reactivex.plugins.a.R(new ObservableJoin(this, e0Var, oVar, oVar2, cVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> i4(w2.o<? super z<T>, ? extends e0<R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        return io.reactivex.plugins.a.R(new ObservablePublishSelector(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> i5() {
        return io.reactivex.plugins.a.S(new k1(this, null));
    }

    @SchedulerSupport(SchedulerSupport.TRAMPOLINE)
    @CheckReturnValue
    public final z<T> i6(long j4, TimeUnit timeUnit, boolean z3) {
        return h6(j4, timeUnit, io.reactivex.schedulers.b.h(), z3, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<List<T>> i7(Comparator<? super T> comparator, int i2) {
        io.reactivex.internal.functions.a.g(comparator, "comparator is null");
        return (i0<List<T>>) W6(i2).q0(Functions.o(comparator));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final T j(T t3) {
        io.reactivex.internal.observers.d dVar = new io.reactivex.internal.observers.d();
        a(dVar);
        T a4 = dVar.a();
        return a4 != null ? a4 : t3;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> j1(@NonNull g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return io.reactivex.plugins.a.R(new ObservableConcatWithCompletable(this, gVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> j2(w2.o<? super T, ? extends e0<? extends R>> oVar, int i2) {
        return t2(oVar, false, i2, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.observables.a<T> j4() {
        return ObservablePublish.q8(this);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> j5(long j4) {
        if (j4 <= 0) {
            return io.reactivex.plugins.a.R(this);
        }
        return io.reactivex.plugins.a.R(new l1(this, j4));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<T> j6(e0<U> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return io.reactivex.plugins.a.R(new ObservableTakeUntil(this, e0Var));
    }

    @SchedulerSupport("none")
    public final void k(w2.g<? super T> gVar) {
        Iterator<T> it2 = l().iterator();
        while (it2.hasNext()) {
            try {
                gVar.accept(it2.next());
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                ((io.reactivex.disposables.b) it2).dispose();
                throw ExceptionHelper.e(th);
            }
        }
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> k1(@NonNull w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return io.reactivex.plugins.a.R(new ObservableConcatWithMaybe(this, wVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> z<R> k2(w2.o<? super T, ? extends e0<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar) {
        return o2(oVar, cVar, false, S(), S());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> k5(long j4, TimeUnit timeUnit) {
        return s5(M6(j4, timeUnit));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> k6(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.R(new r1(this, rVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> k7(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableUnsubscribeOn(this, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final Iterable<T> l() {
        return m(S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> l1(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return t0(this, e0Var);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> z<R> l2(w2.o<? super T, ? extends e0<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar, int i2) {
        return o2(oVar, cVar, false, i2, S());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> l5(long j4, TimeUnit timeUnit, h0 h0Var) {
        return s5(N6(j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> l6(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.R(new s1(this, rVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final Iterable<T> m(int i2) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return new BlockingObservableIterable(this, i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> m1(@NonNull o0<? extends T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "other is null");
        return io.reactivex.plugins.a.R(new ObservableConcatWithSingle(this, o0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> z<R> m2(w2.o<? super T, ? extends e0<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar, boolean z3) {
        return o2(oVar, cVar, z3, S(), S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> m4(w2.c<T, T, T> cVar) {
        io.reactivex.internal.functions.a.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.Q(new d1(this, cVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> m5(int i2) {
        if (i2 >= 0) {
            if (i2 == 0) {
                return io.reactivex.plugins.a.R(this);
            }
            return io.reactivex.plugins.a.R(new ObservableSkipLast(this, i2));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final TestObserver<T> m6() {
        TestObserver<T> testObserver = new TestObserver<>();
        a(testObserver);
        return testObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final T n() {
        io.reactivex.internal.observers.e eVar = new io.reactivex.internal.observers.e();
        a(eVar);
        T a4 = eVar.a();
        if (a4 != null) {
            return a4;
        }
        throw new NoSuchElementException();
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<Boolean> n1(Object obj) {
        io.reactivex.internal.functions.a.g(obj, "element is null");
        return g(Functions.i(obj));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> z<R> n2(w2.o<? super T, ? extends e0<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar, boolean z3, int i2) {
        return o2(oVar, cVar, z3, i2, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> i0<R> n4(R r3, w2.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.a.g(r3, "seed is null");
        io.reactivex.internal.functions.a.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.S(new e1(this, r3, cVar));
    }

    @SchedulerSupport(SchedulerSupport.TRAMPOLINE)
    @CheckReturnValue
    public final z<T> n5(long j4, TimeUnit timeUnit) {
        return q5(j4, timeUnit, io.reactivex.schedulers.b.h(), false, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final TestObserver<T> n6(boolean z3) {
        TestObserver<T> testObserver = new TestObserver<>();
        if (z3) {
            testObserver.dispose();
        }
        a(testObserver);
        return testObserver;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<z<T>> n7(long j4) {
        return p7(j4, j4, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final T o(T t3) {
        io.reactivex.internal.observers.e eVar = new io.reactivex.internal.observers.e();
        a(eVar);
        T a4 = eVar.a();
        return a4 != null ? a4 : t3;
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<Long> o1() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.observable.q(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, R> z<R> o2(w2.o<? super T, ? extends e0<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar, boolean z3, int i2, int i4) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.g(cVar, "combiner is null");
        return t2(ObservableInternalHelper.b(oVar, cVar), z3, i2, i4);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> i0<R> o4(Callable<R> callable, w2.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.a.g(callable, "seedSupplier is null");
        io.reactivex.internal.functions.a.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.S(new f1(this, callable, cVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> o5(long j4, TimeUnit timeUnit, h0 h0Var) {
        return q5(j4, timeUnit, h0Var, false, S());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> o6(long j4, TimeUnit timeUnit) {
        return p6(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<z<T>> o7(long j4, long j5) {
        return p7(j4, j5, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final Iterable<T> p() {
        return new io.reactivex.internal.operators.observable.b(this);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> p2(w2.o<? super T, ? extends e0<? extends R>> oVar, w2.o<? super Throwable, ? extends e0<? extends R>> oVar2, Callable<? extends e0<? extends R>> callable) {
        io.reactivex.internal.functions.a.g(oVar, "onNextMapper is null");
        io.reactivex.internal.functions.a.g(oVar2, "onErrorMapper is null");
        io.reactivex.internal.functions.a.g(callable, "onCompleteSupplier is null");
        return z3(new y0(this, oVar, oVar2, callable));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> p4() {
        return q4(Long.MAX_VALUE);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> p5(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        return q5(j4, timeUnit, h0Var, z3, S());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> p6(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableThrottleFirstTimed(this, j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<z<T>> p7(long j4, long j5, int i2) {
        io.reactivex.internal.functions.a.i(j4, "count");
        io.reactivex.internal.functions.a.i(j5, "skip");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableWindow(this, j4, j5, i2));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final Iterable<T> q(T t3) {
        return new io.reactivex.internal.operators.observable.c(this, t3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> q0(f0<? super T, ? extends R> f0Var) {
        return M7(((f0) io.reactivex.internal.functions.a.g(f0Var, "composer is null")).a(this));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> q1(long j4, TimeUnit timeUnit) {
        return r1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> q2(w2.o<? super T, ? extends e0<? extends R>> oVar, w2.o<Throwable, ? extends e0<? extends R>> oVar2, Callable<? extends e0<? extends R>> callable, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "onNextMapper is null");
        io.reactivex.internal.functions.a.g(oVar2, "onErrorMapper is null");
        io.reactivex.internal.functions.a.g(callable, "onCompleteSupplier is null");
        return A3(new y0(this, oVar, oVar2, callable), i2);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> q4(long j4) {
        if (j4 >= 0) {
            if (j4 == 0) {
                return b2();
            }
            return io.reactivex.plugins.a.R(new ObservableRepeat(this, j4));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j4);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> q5(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableSkipLastTimed(this, j4, timeUnit, h0Var, i2 << 1, z3));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> q6(long j4, TimeUnit timeUnit) {
        return R4(j4, timeUnit);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<z<T>> q7(long j4, long j5, TimeUnit timeUnit) {
        return s7(j4, j5, timeUnit, io.reactivex.schedulers.b.a(), S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final Iterable<T> r() {
        return new io.reactivex.internal.operators.observable.d(this);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> r1(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableDebounceTimed(this, j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> r2(w2.o<? super T, ? extends e0<? extends R>> oVar, boolean z3) {
        return s2(oVar, z3, Integer.MAX_VALUE);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> r4(w2.e eVar) {
        io.reactivex.internal.functions.a.g(eVar, "stop is null");
        return io.reactivex.plugins.a.R(new ObservableRepeatUntil(this, eVar));
    }

    @SchedulerSupport(SchedulerSupport.TRAMPOLINE)
    @CheckReturnValue
    public final z<T> r5(long j4, TimeUnit timeUnit, boolean z3) {
        return q5(j4, timeUnit, io.reactivex.schedulers.b.h(), z3, S());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> r6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return S4(j4, timeUnit, h0Var);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<z<T>> r7(long j4, long j5, TimeUnit timeUnit, h0 h0Var) {
        return s7(j4, j5, timeUnit, h0Var, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final T s() {
        T h4 = h5().h();
        if (h4 != null) {
            return h4;
        }
        throw new NoSuchElementException();
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<T> s1(w2.o<? super T, ? extends e0<U>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "debounceSelector is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.r(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> s2(w2.o<? super T, ? extends e0<? extends R>> oVar, boolean z3, int i2) {
        return t2(oVar, z3, i2, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> s4(w2.o<? super z<Object>, ? extends e0<?>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "handler is null");
        return io.reactivex.plugins.a.R(new ObservableRepeatWhen(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<T> s5(e0<U> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return io.reactivex.plugins.a.R(new m1(this, e0Var));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> s6(long j4, TimeUnit timeUnit) {
        return u6(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<z<T>> s7(long j4, long j5, TimeUnit timeUnit, h0 h0Var, int i2) {
        io.reactivex.internal.functions.a.i(j4, "timespan");
        io.reactivex.internal.functions.a.i(j5, "timeskip");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        return io.reactivex.plugins.a.R(new x1(this, j4, j5, timeUnit, h0Var, Long.MAX_VALUE, i2, false));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final T t(T t3) {
        return g5(t3).i();
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> t1(T t3) {
        io.reactivex.internal.functions.a.g(t3, "defaultItem is null");
        return I5(j3(t3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> t2(w2.o<? super T, ? extends e0<? extends R>> oVar, boolean z3, int i2, int i4) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "bufferSize");
        if (this instanceof x2.m) {
            Object call = ((x2.m) this).call();
            if (call == null) {
                return b2();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return io.reactivex.plugins.a.R(new ObservableFlatMap(this, oVar, z3, i2, i4));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> t3(T t3) {
        io.reactivex.internal.functions.a.g(t3, "defaultItem is null");
        return io.reactivex.plugins.a.S(new v0(this, t3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> t4(w2.o<? super z<T>, ? extends e0<R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        return ObservableReplay.v8(ObservableInternalHelper.g(this), oVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> t5(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.R(new n1(this, rVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> t6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return u6(j4, timeUnit, h0Var, false);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<z<T>> t7(long j4, TimeUnit timeUnit) {
        return y7(j4, timeUnit, io.reactivex.schedulers.b.a(), Long.MAX_VALUE, false);
    }

    @SchedulerSupport("none")
    public final void u() {
        io.reactivex.internal.operators.observable.j.a(this);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.a u2(w2.o<? super T, ? extends g> oVar) {
        return v2(oVar, false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final q<T> u3() {
        return io.reactivex.plugins.a.Q(new u0(this));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> u4(w2.o<? super z<T>, ? extends e0<R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return ObservableReplay.v8(ObservableInternalHelper.h(this, i2), oVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> u5() {
        return V6().s1().x3(Functions.o(Functions.p())).w2(Functions.k());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> u6(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new ObservableThrottleLatest(this, j4, timeUnit, h0Var, z3));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<z<T>> u7(long j4, TimeUnit timeUnit, long j5) {
        return y7(j4, timeUnit, io.reactivex.schedulers.b.a(), j5, false);
    }

    @SchedulerSupport("none")
    public final void v(g0<? super T> g0Var) {
        io.reactivex.internal.operators.observable.j.b(this, g0Var);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> v1(long j4, TimeUnit timeUnit) {
        return x1(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final io.reactivex.a v2(w2.o<? super T, ? extends g> oVar, boolean z3) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new ObservableFlatMapCompletableCompletable(this, oVar, z3));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final i0<T> v3() {
        return io.reactivex.plugins.a.S(new v0(this, null));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final <R> z<R> v4(w2.o<? super z<T>, ? extends e0<R>> oVar, int i2, long j4, TimeUnit timeUnit) {
        return w4(oVar, i2, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> v5(Comparator<? super T> comparator) {
        io.reactivex.internal.functions.a.g(comparator, "sortFunction is null");
        return V6().s1().x3(Functions.o(comparator)).w2(Functions.k());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> v6(long j4, TimeUnit timeUnit, boolean z3) {
        return u6(j4, timeUnit, io.reactivex.schedulers.b.a(), z3);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<z<T>> v7(long j4, TimeUnit timeUnit, long j5, boolean z3) {
        return y7(j4, timeUnit, io.reactivex.schedulers.b.a(), j5, z3);
    }

    @SchedulerSupport("none")
    public final void w(w2.g<? super T> gVar) {
        io.reactivex.internal.operators.observable.j.c(this, gVar, Functions.f65827f, Functions.f65824c);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> w1(long j4, TimeUnit timeUnit, h0 h0Var) {
        return x1(j4, timeUnit, h0Var, false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U> z<U> w2(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.i0(this, oVar));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> w3(d0<? extends R, ? super T> d0Var) {
        io.reactivex.internal.functions.a.g(d0Var, "onLift is null");
        return io.reactivex.plugins.a.R(new w0(this, d0Var));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final <R> z<R> w4(w2.o<? super z<T>, ? extends e0<R>> oVar, int i2, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return ObservableReplay.v8(ObservableInternalHelper.i(this, i2, j4, timeUnit, h0Var), oVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> w5(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.a.g(e0Var, "other is null");
        return x0(e0Var, this);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> w6(long j4, TimeUnit timeUnit) {
        return q1(j4, timeUnit);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<z<T>> w7(long j4, TimeUnit timeUnit, h0 h0Var) {
        return y7(j4, timeUnit, h0Var, Long.MAX_VALUE, false);
    }

    @SchedulerSupport("none")
    public final void x(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2) {
        io.reactivex.internal.operators.observable.j.c(this, gVar, gVar2, Functions.f65824c);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> x1(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.t(this, j4, timeUnit, h0Var, z3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, V> z<V> x2(w2.o<? super T, ? extends Iterable<? extends U>> oVar, w2.c<? super T, ? super U, ? extends V> cVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.g(cVar, "resultSelector is null");
        return (z<V>) o2(ObservableInternalHelper.a(oVar), cVar, false, S(), S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> x3(w2.o<? super T, ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new x0(this, oVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final <R> z<R> x4(w2.o<? super z<T>, ? extends e0<R>> oVar, int i2, h0 h0Var) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return ObservableReplay.v8(ObservableInternalHelper.h(this, i2), ObservableInternalHelper.k(oVar, h0Var));
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> x5(Iterable<? extends T> iterable) {
        return x0(M2(iterable), this);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<T> x6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return r1(j4, timeUnit, h0Var);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<z<T>> x7(long j4, TimeUnit timeUnit, h0 h0Var, long j5) {
        return y7(j4, timeUnit, h0Var, j5, false);
    }

    @SchedulerSupport("none")
    public final void y(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar) {
        io.reactivex.internal.operators.observable.j.c(this, gVar, gVar2, aVar);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final z<T> y1(long j4, TimeUnit timeUnit, boolean z3) {
        return x1(j4, timeUnit, io.reactivex.schedulers.b.a(), z3);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> y2(w2.o<? super T, ? extends w<? extends R>> oVar) {
        return z2(oVar, false);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<y<T>> y3() {
        return io.reactivex.plugins.a.R(new z0(this));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @CheckReturnValue
    public final <R> z<R> y4(w2.o<? super z<T>, ? extends e0<R>> oVar, long j4, TimeUnit timeUnit) {
        return z4(oVar, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> y5(T t3) {
        io.reactivex.internal.functions.a.g(t3, "item is null");
        return x0(j3(t3), this);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<io.reactivex.schedulers.d<T>> y6() {
        return B6(TimeUnit.MILLISECONDS, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<z<T>> y7(long j4, TimeUnit timeUnit, h0 h0Var, long j5, boolean z3) {
        return z7(j4, timeUnit, h0Var, j5, z3, S());
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<List<T>> z(int i2) {
        return A(i2, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @CheckReturnValue
    public final <U, V> z<T> z1(e0<U> e0Var, w2.o<? super T, ? extends e0<V>> oVar) {
        return D1(e0Var).A1(oVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final <R> z<R> z2(w2.o<? super T, ? extends w<? extends R>> oVar, boolean z3) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new ObservableFlatMapMaybe(this, oVar, z3));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final <R> z<R> z4(w2.o<? super z<T>, ? extends e0<R>> oVar, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return ObservableReplay.v8(ObservableInternalHelper.j(this, j4, timeUnit, h0Var), oVar);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<T> z5(T... tArr) {
        z G2 = G2(tArr);
        if (G2 == b2()) {
            return io.reactivex.plugins.a.R(this);
        }
        return x0(G2, this);
    }

    @SchedulerSupport("none")
    @CheckReturnValue
    public final z<io.reactivex.schedulers.d<T>> z6(h0 h0Var) {
        return B6(TimeUnit.MILLISECONDS, h0Var);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @CheckReturnValue
    public final z<z<T>> z7(long j4, TimeUnit timeUnit, h0 h0Var, long j5, boolean z3, int i2) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.i(j5, "count");
        return io.reactivex.plugins.a.R(new x1(this, j4, j4, timeUnit, h0Var, j5, i2, z3));
    }
}
