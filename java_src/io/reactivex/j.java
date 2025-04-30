package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.flowable.BlockingFlowableIterable;
import io.reactivex.internal.operators.flowable.FlowableAmb;
import io.reactivex.internal.operators.flowable.FlowableBuffer;
import io.reactivex.internal.operators.flowable.FlowableBufferBoundary;
import io.reactivex.internal.operators.flowable.FlowableCache;
import io.reactivex.internal.operators.flowable.FlowableCombineLatest;
import io.reactivex.internal.operators.flowable.FlowableConcatArray;
import io.reactivex.internal.operators.flowable.FlowableConcatMap;
import io.reactivex.internal.operators.flowable.FlowableConcatMapEager;
import io.reactivex.internal.operators.flowable.FlowableConcatWithCompletable;
import io.reactivex.internal.operators.flowable.FlowableConcatWithMaybe;
import io.reactivex.internal.operators.flowable.FlowableConcatWithSingle;
import io.reactivex.internal.operators.flowable.FlowableCreate;
import io.reactivex.internal.operators.flowable.FlowableDebounce;
import io.reactivex.internal.operators.flowable.FlowableDebounceTimed;
import io.reactivex.internal.operators.flowable.FlowableDoFinally;
import io.reactivex.internal.operators.flowable.FlowableFlatMap;
import io.reactivex.internal.operators.flowable.FlowableFlatMapCompletableCompletable;
import io.reactivex.internal.operators.flowable.FlowableFlatMapMaybe;
import io.reactivex.internal.operators.flowable.FlowableFlatMapSingle;
import io.reactivex.internal.operators.flowable.FlowableFlattenIterable;
import io.reactivex.internal.operators.flowable.FlowableFromArray;
import io.reactivex.internal.operators.flowable.FlowableFromIterable;
import io.reactivex.internal.operators.flowable.FlowableGenerate;
import io.reactivex.internal.operators.flowable.FlowableGroupBy;
import io.reactivex.internal.operators.flowable.FlowableGroupJoin;
import io.reactivex.internal.operators.flowable.FlowableInternalHelper;
import io.reactivex.internal.operators.flowable.FlowableInterval;
import io.reactivex.internal.operators.flowable.FlowableIntervalRange;
import io.reactivex.internal.operators.flowable.FlowableJoin;
import io.reactivex.internal.operators.flowable.FlowableLimit;
import io.reactivex.internal.operators.flowable.FlowableMapNotification;
import io.reactivex.internal.operators.flowable.FlowableMaterialize;
import io.reactivex.internal.operators.flowable.FlowableMergeWithCompletable;
import io.reactivex.internal.operators.flowable.FlowableMergeWithMaybe;
import io.reactivex.internal.operators.flowable.FlowableMergeWithSingle;
import io.reactivex.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureBuffer;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureBufferStrategy;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureDrop;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureLatest;
import io.reactivex.internal.operators.flowable.FlowableOnErrorNext;
import io.reactivex.internal.operators.flowable.FlowableOnErrorReturn;
import io.reactivex.internal.operators.flowable.FlowablePublish;
import io.reactivex.internal.operators.flowable.FlowablePublishMulticast;
import io.reactivex.internal.operators.flowable.FlowableRange;
import io.reactivex.internal.operators.flowable.FlowableRangeLong;
import io.reactivex.internal.operators.flowable.FlowableRepeat;
import io.reactivex.internal.operators.flowable.FlowableRepeatUntil;
import io.reactivex.internal.operators.flowable.FlowableRepeatWhen;
import io.reactivex.internal.operators.flowable.FlowableReplay;
import io.reactivex.internal.operators.flowable.FlowableRetryBiPredicate;
import io.reactivex.internal.operators.flowable.FlowableRetryPredicate;
import io.reactivex.internal.operators.flowable.FlowableRetryWhen;
import io.reactivex.internal.operators.flowable.FlowableSamplePublisher;
import io.reactivex.internal.operators.flowable.FlowableSampleTimed;
import io.reactivex.internal.operators.flowable.FlowableScanSeed;
import io.reactivex.internal.operators.flowable.FlowableSequenceEqualSingle;
import io.reactivex.internal.operators.flowable.FlowableSkipLast;
import io.reactivex.internal.operators.flowable.FlowableSkipLastTimed;
import io.reactivex.internal.operators.flowable.FlowableSkipUntil;
import io.reactivex.internal.operators.flowable.FlowableSubscribeOn;
import io.reactivex.internal.operators.flowable.FlowableSwitchMap;
import io.reactivex.internal.operators.flowable.FlowableTake;
import io.reactivex.internal.operators.flowable.FlowableTakeLast;
import io.reactivex.internal.operators.flowable.FlowableTakeLastOne;
import io.reactivex.internal.operators.flowable.FlowableTakeLastTimed;
import io.reactivex.internal.operators.flowable.FlowableTakeUntil;
import io.reactivex.internal.operators.flowable.FlowableThrottleFirstTimed;
import io.reactivex.internal.operators.flowable.FlowableThrottleLatest;
import io.reactivex.internal.operators.flowable.FlowableTimeout;
import io.reactivex.internal.operators.flowable.FlowableTimeoutTimed;
import io.reactivex.internal.operators.flowable.FlowableTimer;
import io.reactivex.internal.operators.flowable.FlowableUnsubscribeOn;
import io.reactivex.internal.operators.flowable.FlowableUsing;
import io.reactivex.internal.operators.flowable.FlowableWindow;
import io.reactivex.internal.operators.flowable.FlowableWindowBoundary;
import io.reactivex.internal.operators.flowable.FlowableWindowBoundarySupplier;
import io.reactivex.internal.operators.flowable.FlowableWithLatestFrom;
import io.reactivex.internal.operators.flowable.FlowableWithLatestFromMany;
import io.reactivex.internal.operators.flowable.FlowableZip;
import io.reactivex.internal.operators.flowable.a1;
import io.reactivex.internal.operators.flowable.b1;
import io.reactivex.internal.operators.flowable.c1;
import io.reactivex.internal.operators.flowable.d1;
import io.reactivex.internal.operators.flowable.f1;
import io.reactivex.internal.operators.flowable.g1;
import io.reactivex.internal.operators.flowable.h1;
import io.reactivex.internal.operators.flowable.i1;
import io.reactivex.internal.operators.flowable.j1;
import io.reactivex.internal.operators.flowable.k1;
import io.reactivex.internal.operators.flowable.l1;
import io.reactivex.internal.operators.flowable.q0;
import io.reactivex.internal.operators.flowable.s0;
import io.reactivex.internal.operators.flowable.t0;
import io.reactivex.internal.operators.flowable.u0;
import io.reactivex.internal.operators.flowable.v0;
import io.reactivex.internal.operators.flowable.w0;
import io.reactivex.internal.operators.flowable.x0;
import io.reactivex.internal.operators.flowable.y0;
import io.reactivex.internal.operators.flowable.z0;
import io.reactivex.internal.operators.mixed.FlowableConcatMapCompletable;
import io.reactivex.internal.operators.mixed.FlowableConcatMapMaybe;
import io.reactivex.internal.operators.mixed.FlowableConcatMapSingle;
import io.reactivex.internal.operators.mixed.FlowableSwitchMapCompletable;
import io.reactivex.internal.operators.mixed.FlowableSwitchMapMaybe;
import io.reactivex.internal.operators.mixed.FlowableSwitchMapSingle;
import io.reactivex.internal.subscribers.ForEachWhileSubscriber;
import io.reactivex.internal.subscribers.LambdaSubscriber;
import io.reactivex.internal.subscribers.StrictSubscriber;
import io.reactivex.internal.util.ArrayListSupplier;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.HashMapSupplier;
import io.reactivex.subscribers.TestSubscriber;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Publisher;
/* compiled from: Flowable.java */
/* loaded from: classes.dex */
public abstract class j<T> implements l3.b<T> {

    /* renamed from: a  reason: collision with root package name */
    static final int f70110a = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> A0(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, l3.b<? extends T> bVar3) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        return C0(bVar, bVar2, bVar3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> A3(T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10, T t11) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        io.reactivex.internal.functions.a.g(t8, "The sixth item is null");
        io.reactivex.internal.functions.a.g(t9, "The seventh item is null");
        io.reactivex.internal.functions.a.g(t10, "The eighth item is null");
        io.reactivex.internal.functions.a.g(t11, "The ninth is null");
        return O2(t3, t4, t5, t6, t7, t8, t9, t10, t11);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> A6(l3.b<? extends l3.b<? extends T>> bVar, int i2) {
        return V2(bVar).s6(Functions.k(), i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, R> j<R> A8(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, w2.c<? super T1, ? super T2, ? extends R> cVar, boolean z3) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        return D8(Functions.x(cVar), z3, V(), bVar, bVar2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> B0(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, l3.b<? extends T> bVar3, l3.b<? extends T> bVar4) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        return C0(bVar, bVar2, bVar3, bVar4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> B3(T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10, T t11, T t12) {
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
        return O2(t3, t4, t5, t6, t7, t8, t9, t10, t11, t12);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> i0<Boolean> B5(l3.b<? extends T> bVar, l3.b<? extends T> bVar2) {
        return E5(bVar, bVar2, io.reactivex.internal.functions.a.d(), V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, R> j<R> B8(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, w2.c<? super T1, ? super T2, ? extends R> cVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        return D8(Functions.x(cVar), z3, i2, bVar, bVar2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> C0(Publisher<? extends T>... publisherArr) {
        if (publisherArr.length == 0) {
            return h2();
        }
        if (publisherArr.length == 1) {
            return V2(publisherArr[0]);
        }
        return io.reactivex.plugins.a.P(new FlowableConcatArray(publisherArr, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> i0<Boolean> C5(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, int i2) {
        return E5(bVar, bVar2, io.reactivex.internal.functions.a.d(), i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> C8(l3.b<? extends l3.b<? extends T>> bVar, w2.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        return V2(bVar).z7().c0(FlowableInternalHelper.n(oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> D0(Publisher<? extends T>... publisherArr) {
        if (publisherArr.length == 0) {
            return h2();
        }
        if (publisherArr.length == 1) {
            return V2(publisherArr[0]);
        }
        return io.reactivex.plugins.a.P(new FlowableConcatArray(publisherArr, true));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> i0<Boolean> D5(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, w2.d<? super T, ? super T> dVar) {
        return E5(bVar, bVar2, dVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> D8(w2.o<? super Object[], ? extends R> oVar, boolean z3, int i2, Publisher<? extends T>... publisherArr) {
        if (publisherArr.length == 0) {
            return h2();
        }
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableZip(publisherArr, null, oVar, i2, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> E0(int i2, int i4, Publisher<? extends T>... publisherArr) {
        io.reactivex.internal.functions.a.g(publisherArr, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new FlowableConcatMapEager(new FlowableFromArray(publisherArr), Functions.k(), i2, i4, ErrorMode.IMMEDIATE));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> i0<Boolean> E5(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, w2.d<? super T, ? super T> dVar, int i2) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(dVar, "isEqual is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.S(new FlowableSequenceEqualSingle(bVar, bVar2, dVar, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> E8(Iterable<? extends l3.b<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableZip(null, iterable, oVar, i2, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> F0(Publisher<? extends T>... publisherArr) {
        return E0(V(), V(), publisherArr);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> G0(int i2, int i4, Publisher<? extends T>... publisherArr) {
        return O2(publisherArr).a1(Functions.k(), i2, i4, true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> H0(Publisher<? extends T>... publisherArr) {
        return G0(V(), V(), publisherArr);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> I0(Iterable<? extends l3.b<? extends T>> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return U2(iterable).W0(Functions.k());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> J0(l3.b<? extends l3.b<? extends T>> bVar) {
        return K0(bVar, V(), true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> J3(Iterable<? extends l3.b<? extends T>> iterable) {
        return U2(iterable).o2(Functions.k());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> K0(l3.b<? extends l3.b<? extends T>> bVar, int i2, boolean z3) {
        return V2(bVar).X0(Functions.k(), i2, z3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> K3(Iterable<? extends l3.b<? extends T>> iterable, int i2) {
        return U2(iterable).p2(Functions.k(), i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static j<Integer> K4(int i2, int i4) {
        if (i4 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + i4);
        } else if (i4 == 0) {
            return h2();
        } else {
            if (i4 == 1) {
                return s3(Integer.valueOf(i2));
            }
            if (i2 + (i4 - 1) <= 2147483647L) {
                return io.reactivex.plugins.a.P(new FlowableRange(i2, i4));
            }
            throw new IllegalArgumentException("Integer overflow");
        }
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> L0(Iterable<? extends l3.b<? extends T>> iterable) {
        return M0(iterable, V(), V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> L3(Iterable<? extends l3.b<? extends T>> iterable, int i2, int i4) {
        return U2(iterable).z2(Functions.k(), false, i2, i4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static j<Long> L4(long j4, long j5) {
        if (j5 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j5);
        } else if (j5 == 0) {
            return h2();
        } else {
            if (j5 == 1) {
                return s3(Long.valueOf(j4));
            }
            long j6 = (j5 - 1) + j4;
            if (j4 > 0 && j6 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            return io.reactivex.plugins.a.P(new FlowableRangeLong(j4, j5));
        }
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> M0(Iterable<? extends l3.b<? extends T>> iterable, int i2, int i4) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new FlowableConcatMapEager(new FlowableFromIterable(iterable), Functions.k(), i2, i4, ErrorMode.IMMEDIATE));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> M3(l3.b<? extends l3.b<? extends T>> bVar) {
        return N3(bVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> N0(l3.b<? extends l3.b<? extends T>> bVar) {
        return O0(bVar, V(), V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> N3(l3.b<? extends l3.b<? extends T>> bVar, int i2) {
        return V2(bVar).p2(Functions.k(), i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> O0(l3.b<? extends l3.b<? extends T>> bVar, int i2, int i4) {
        io.reactivex.internal.functions.a.g(bVar, "sources is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.m(bVar, Functions.k(), i2, i4, ErrorMode.IMMEDIATE));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> O2(T... tArr) {
        io.reactivex.internal.functions.a.g(tArr, "items is null");
        if (tArr.length == 0) {
            return h2();
        }
        if (tArr.length == 1) {
            return s3(tArr[0]);
        }
        return io.reactivex.plugins.a.P(new FlowableFromArray(tArr));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> O3(l3.b<? extends T> bVar, l3.b<? extends T> bVar2) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        return O2(bVar, bVar2).y2(Functions.k(), false, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.NONE)
    @CheckReturnValue
    public static <T> j<T> O7(l3.b<T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "onSubscribe is null");
        if (!(bVar instanceof j)) {
            return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.i0(bVar));
        }
        throw new IllegalArgumentException("unsafeCreate(Flowable) should be upgraded");
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> P2(Callable<? extends T> callable) {
        io.reactivex.internal.functions.a.g(callable, "supplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.f0(callable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> P3(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, l3.b<? extends T> bVar3) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        return O2(bVar, bVar2, bVar3).y2(Functions.k(), false, 3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> Q2(Future<? extends T> future) {
        io.reactivex.internal.functions.a.g(future, "future is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.g0(future, 0L, null));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> Q3(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, l3.b<? extends T> bVar3, l3.b<? extends T> bVar4) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        return O2(bVar, bVar2, bVar3, bVar4).y2(Functions.k(), false, 4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public static <T, D> j<T> Q7(Callable<? extends D> callable, w2.o<? super D, ? extends l3.b<? extends T>> oVar, w2.g<? super D> gVar) {
        return R7(callable, oVar, gVar, true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> R2(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        io.reactivex.internal.functions.a.g(future, "future is null");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.g0(future, j4, timeUnit));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> R3(int i2, int i4, Publisher<? extends T>... publisherArr) {
        return O2(publisherArr).z2(Functions.k(), false, i2, i4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public static <T, D> j<T> R7(Callable<? extends D> callable, w2.o<? super D, ? extends l3.b<? extends T>> oVar, w2.g<? super D> gVar, boolean z3) {
        io.reactivex.internal.functions.a.g(callable, "resourceSupplier is null");
        io.reactivex.internal.functions.a.g(oVar, "sourceSupplier is null");
        io.reactivex.internal.functions.a.g(gVar, "disposer is null");
        return io.reactivex.plugins.a.P(new FlowableUsing(callable, oVar, gVar, z3));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> S2(Future<? extends T> future, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return R2(future, j4, timeUnit).i6(h0Var);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> S3(Publisher<? extends T>... publisherArr) {
        return O2(publisherArr).p2(Functions.k(), publisherArr.length);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> T2(Future<? extends T> future, h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return Q2(future).i6(h0Var);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> T3(int i2, int i4, Publisher<? extends T>... publisherArr) {
        return O2(publisherArr).z2(Functions.k(), true, i2, i4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> U2(Iterable<? extends T> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "source is null");
        return io.reactivex.plugins.a.P(new FlowableFromIterable(iterable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> U3(Publisher<? extends T>... publisherArr) {
        return O2(publisherArr).y2(Functions.k(), true, publisherArr.length);
    }

    public static int V() {
        return f70110a;
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public static <T> j<T> V2(l3.b<? extends T> bVar) {
        if (bVar instanceof j) {
            return io.reactivex.plugins.a.P((j) bVar);
        }
        io.reactivex.internal.functions.a.g(bVar, "publisher is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.i0(bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> V3(Iterable<? extends l3.b<? extends T>> iterable) {
        return U2(iterable).x2(Functions.k(), true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, S> j<T> W2(Callable<S> callable, w2.b<S, i<T>> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "generator is null");
        return Z2(callable, FlowableInternalHelper.i(bVar), Functions.h());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> W3(Iterable<? extends l3.b<? extends T>> iterable, int i2) {
        return U2(iterable).y2(Functions.k(), true, i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    private j<T> X1(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.a aVar2) {
        io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        io.reactivex.internal.functions.a.g(gVar2, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.a.g(aVar2, "onAfterTerminate is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.x(this, gVar, gVar2, aVar, aVar2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, S> j<T> X2(Callable<S> callable, w2.b<S, i<T>> bVar, w2.g<? super S> gVar) {
        io.reactivex.internal.functions.a.g(bVar, "generator is null");
        return Z2(callable, FlowableInternalHelper.i(bVar), gVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> X3(Iterable<? extends l3.b<? extends T>> iterable, int i2, int i4) {
        return U2(iterable).z2(Functions.k(), true, i2, i4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, S> j<T> Y2(Callable<S> callable, w2.c<S, i<T>, S> cVar) {
        return Z2(callable, cVar, Functions.h());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> Y3(l3.b<? extends l3.b<? extends T>> bVar) {
        return Z3(bVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, S> j<T> Z2(Callable<S> callable, w2.c<S, i<T>, S> cVar, w2.g<? super S> gVar) {
        io.reactivex.internal.functions.a.g(callable, "initialState is null");
        io.reactivex.internal.functions.a.g(cVar, "generator is null");
        io.reactivex.internal.functions.a.g(gVar, "disposeState is null");
        return io.reactivex.plugins.a.P(new FlowableGenerate(callable, cVar, gVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> Z3(l3.b<? extends l3.b<? extends T>> bVar, int i2) {
        return V2(bVar).y2(Functions.k(), true, i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> a3(w2.g<i<T>> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "generator is null");
        return Z2(Functions.u(), FlowableInternalHelper.j(gVar), Functions.h());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> a4(l3.b<? extends T> bVar, l3.b<? extends T> bVar2) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        return O2(bVar, bVar2).y2(Functions.k(), true, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> b0(Iterable<? extends l3.b<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar) {
        return c0(iterable, oVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> b4(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, l3.b<? extends T> bVar3) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        return O2(bVar, bVar2, bVar3).y2(Functions.k(), true, 3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> c0(Iterable<? extends l3.b<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar, int i2) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableCombineLatest((Iterable) iterable, (w2.o) oVar, i2, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> c4(l3.b<? extends T> bVar, l3.b<? extends T> bVar2, l3.b<? extends T> bVar3, l3.b<? extends T> bVar4) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        return O2(bVar, bVar2, bVar3, bVar4).y2(Functions.k(), true, 4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public static <T> j<T> d(Iterable<? extends l3.b<? extends T>> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.P(new FlowableAmb(null, iterable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> j<R> d0(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, l3.b<? extends T5> bVar5, l3.b<? extends T6> bVar6, l3.b<? extends T7> bVar7, l3.b<? extends T8> bVar8, l3.b<? extends T9> bVar9, w2.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(bVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(bVar6, "source6 is null");
        io.reactivex.internal.functions.a.g(bVar7, "source7 is null");
        io.reactivex.internal.functions.a.g(bVar8, "source8 is null");
        io.reactivex.internal.functions.a.g(bVar9, "source9 is null");
        return l0(Functions.E(nVar), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, bVar9);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public static <T> j<T> e(Publisher<? extends T>... publisherArr) {
        io.reactivex.internal.functions.a.g(publisherArr, "sources is null");
        int length = publisherArr.length;
        if (length == 0) {
            return h2();
        }
        if (length == 1) {
            return V2(publisherArr[0]);
        }
        return io.reactivex.plugins.a.P(new FlowableAmb(publisherArr, null));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> j<R> e0(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, l3.b<? extends T5> bVar5, l3.b<? extends T6> bVar6, l3.b<? extends T7> bVar7, l3.b<? extends T8> bVar8, w2.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(bVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(bVar6, "source6 is null");
        io.reactivex.internal.functions.a.g(bVar7, "source7 is null");
        io.reactivex.internal.functions.a.g(bVar8, "source8 is null");
        return l0(Functions.D(mVar), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, R> j<R> f0(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, l3.b<? extends T5> bVar5, l3.b<? extends T6> bVar6, l3.b<? extends T7> bVar7, w2.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(bVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(bVar6, "source6 is null");
        io.reactivex.internal.functions.a.g(bVar7, "source7 is null");
        return l0(Functions.C(lVar), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, R> j<R> g0(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, l3.b<? extends T5> bVar5, l3.b<? extends T6> bVar6, w2.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(bVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(bVar6, "source6 is null");
        return l0(Functions.B(kVar), bVar, bVar2, bVar3, bVar4, bVar5, bVar6);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, R> j<R> h0(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, l3.b<? extends T5> bVar5, w2.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(bVar5, "source5 is null");
        return l0(Functions.A(jVar), bVar, bVar2, bVar3, bVar4, bVar5);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public static <T> j<T> h2() {
        return io.reactivex.plugins.a.P(io.reactivex.internal.operators.flowable.b0.f67309b);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public static <T> j<T> h4() {
        return io.reactivex.plugins.a.P(s0.f67514b);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, R> j<R> i0(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, w2.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        return l0(Functions.z(iVar), bVar, bVar2, bVar3, bVar4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public static <T> j<T> i2(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "throwable is null");
        return j2(Functions.m(th));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, R> j<R> j0(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, w2.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        return l0(Functions.y(hVar), bVar, bVar2, bVar3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public static <T> j<T> j2(Callable<? extends Throwable> callable) {
        io.reactivex.internal.functions.a.g(callable, "errorSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.c0(callable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, R> j<R> k0(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, w2.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        return l0(Functions.x(cVar), bVar, bVar2);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public static j<Long> k3(long j4, long j5, TimeUnit timeUnit) {
        return l3(j4, j5, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> l0(w2.o<? super Object[], ? extends R> oVar, Publisher<? extends T>... publisherArr) {
        return n0(publisherArr, oVar, V());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public static j<Long> l3(long j4, long j5, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableInterval(Math.max(0L, j4), Math.max(0L, j5), timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> m0(Publisher<? extends T>[] publisherArr, w2.o<? super Object[], ? extends R> oVar) {
        return n0(publisherArr, oVar, V());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public static j<Long> m3(long j4, TimeUnit timeUnit) {
        return l3(j4, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> n0(Publisher<? extends T>[] publisherArr, w2.o<? super Object[], ? extends R> oVar, int i2) {
        io.reactivex.internal.functions.a.g(publisherArr, "sources is null");
        if (publisherArr.length == 0) {
            return h2();
        }
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableCombineLatest((l3.b[]) publisherArr, (w2.o) oVar, i2, false));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public static j<Long> n3(long j4, TimeUnit timeUnit, h0 h0Var) {
        return l3(j4, j4, timeUnit, h0Var);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> o0(Iterable<? extends l3.b<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar) {
        return p0(iterable, oVar, V());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public static j<Long> o3(long j4, long j5, long j6, long j7, TimeUnit timeUnit) {
        return p3(j4, j5, j6, j7, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> p0(Iterable<? extends l3.b<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar, int i2) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableCombineLatest((Iterable) iterable, (w2.o) oVar, i2, true));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public static j<Long> p3(long j4, long j5, long j6, long j7, TimeUnit timeUnit, h0 h0Var) {
        if (j5 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j5);
        } else if (j5 == 0) {
            return h2().B1(j6, timeUnit, h0Var);
        } else {
            long j8 = j4 + (j5 - 1);
            if (j4 > 0 && j8 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
            io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
            return io.reactivex.plugins.a.P(new FlowableIntervalRange(j4, j8, Math.max(0L, j6), Math.max(0L, j7), timeUnit, h0Var));
        }
    }

    private j<T> p7(long j4, TimeUnit timeUnit, l3.b<? extends T> bVar, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "timeUnit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableTimeoutTimed(this, j4, timeUnit, h0Var, bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> q0(w2.o<? super Object[], ? extends R> oVar, int i2, Publisher<? extends T>... publisherArr) {
        return t0(publisherArr, oVar, i2);
    }

    private <U, V> j<T> q7(l3.b<U> bVar, w2.o<? super T, ? extends l3.b<V>> oVar, l3.b<? extends T> bVar2) {
        io.reactivex.internal.functions.a.g(oVar, "itemTimeoutIndicator is null");
        return io.reactivex.plugins.a.P(new FlowableTimeout(this, bVar, oVar, bVar2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> r0(w2.o<? super Object[], ? extends R> oVar, Publisher<? extends T>... publisherArr) {
        return t0(publisherArr, oVar, V());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public static j<Long> r7(long j4, TimeUnit timeUnit) {
        return s7(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> r8(Iterable<? extends l3.b<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "zipper is null");
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return io.reactivex.plugins.a.P(new FlowableZip(null, iterable, oVar, V(), false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> s0(Publisher<? extends T>[] publisherArr, w2.o<? super Object[], ? extends R> oVar) {
        return t0(publisherArr, oVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> s3(T t3) {
        io.reactivex.internal.functions.a.g(t3, "item is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.m0(t3));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public static j<Long> s7(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableTimer(Math.max(0L, j4), timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> j<R> s8(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, l3.b<? extends T5> bVar5, l3.b<? extends T6> bVar6, l3.b<? extends T7> bVar7, l3.b<? extends T8> bVar8, l3.b<? extends T9> bVar9, w2.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(bVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(bVar6, "source6 is null");
        io.reactivex.internal.functions.a.g(bVar7, "source7 is null");
        io.reactivex.internal.functions.a.g(bVar8, "source8 is null");
        io.reactivex.internal.functions.a.g(bVar9, "source9 is null");
        return D8(Functions.E(nVar), false, V(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, bVar9);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T, R> j<R> t0(Publisher<? extends T>[] publisherArr, w2.o<? super Object[], ? extends R> oVar, int i2) {
        io.reactivex.internal.functions.a.g(publisherArr, "sources is null");
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        if (publisherArr.length == 0) {
            return h2();
        }
        return io.reactivex.plugins.a.P(new FlowableCombineLatest((l3.b[]) publisherArr, (w2.o) oVar, i2, true));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> t3(T t3, T t4) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        return O2(t3, t4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> j<R> t8(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, l3.b<? extends T5> bVar5, l3.b<? extends T6> bVar6, l3.b<? extends T7> bVar7, l3.b<? extends T8> bVar8, w2.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(bVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(bVar6, "source6 is null");
        io.reactivex.internal.functions.a.g(bVar7, "source7 is null");
        io.reactivex.internal.functions.a.g(bVar8, "source8 is null");
        return D8(Functions.D(mVar), false, V(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public static <T> j<T> u1(m<T> mVar, BackpressureStrategy backpressureStrategy) {
        io.reactivex.internal.functions.a.g(mVar, "source is null");
        io.reactivex.internal.functions.a.g(backpressureStrategy, "mode is null");
        return io.reactivex.plugins.a.P(new FlowableCreate(mVar, backpressureStrategy));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> u3(T t3, T t4, T t5) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        return O2(t3, t4, t5);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, T7, R> j<R> u8(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, l3.b<? extends T5> bVar5, l3.b<? extends T6> bVar6, l3.b<? extends T7> bVar7, w2.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(bVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(bVar6, "source6 is null");
        io.reactivex.internal.functions.a.g(bVar7, "source7 is null");
        return D8(Functions.C(lVar), false, V(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> v3(T t3, T t4, T t5, T t6) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        return O2(t3, t4, t5, t6);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, T6, R> j<R> v8(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, l3.b<? extends T5> bVar5, l3.b<? extends T6> bVar6, w2.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(bVar5, "source5 is null");
        io.reactivex.internal.functions.a.g(bVar6, "source6 is null");
        return D8(Functions.B(kVar), false, V(), bVar, bVar2, bVar3, bVar4, bVar5, bVar6);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> w0(Iterable<? extends l3.b<? extends T>> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "sources is null");
        return U2(iterable).X0(Functions.k(), 2, false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> w3(T t3, T t4, T t5, T t6, T t7) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        return O2(t3, t4, t5, t6, t7);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, T5, R> j<R> w8(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, l3.b<? extends T5> bVar5, w2.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        io.reactivex.internal.functions.a.g(bVar5, "source5 is null");
        return D8(Functions.A(jVar), false, V(), bVar, bVar2, bVar3, bVar4, bVar5);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> x0(l3.b<? extends l3.b<? extends T>> bVar) {
        return y0(bVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> x3(T t3, T t4, T t5, T t6, T t7, T t8) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        io.reactivex.internal.functions.a.g(t8, "The sixth item is null");
        return O2(t3, t4, t5, t6, t7, t8);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> x6(l3.b<? extends l3.b<? extends T>> bVar) {
        return V2(bVar).m6(Functions.k());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, T4, R> j<R> x8(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, l3.b<? extends T4> bVar4, w2.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        return D8(Functions.z(iVar), false, V(), bVar, bVar2, bVar3, bVar4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> y0(l3.b<? extends l3.b<? extends T>> bVar, int i2) {
        return V2(bVar).Q0(Functions.k(), i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> y3(T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        io.reactivex.internal.functions.a.g(t8, "The sixth item is null");
        io.reactivex.internal.functions.a.g(t9, "The seventh item is null");
        return O2(t3, t4, t5, t6, t7, t8, t9);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> y6(l3.b<? extends l3.b<? extends T>> bVar, int i2) {
        return V2(bVar).n6(Functions.k(), i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, T3, R> j<R> y8(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, l3.b<? extends T3> bVar3, w2.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        return D8(Functions.y(hVar), false, V(), bVar, bVar2, bVar3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> z0(l3.b<? extends T> bVar, l3.b<? extends T> bVar2) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        return C0(bVar, bVar2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public static <T> j<T> z1(Callable<? extends l3.b<? extends T>> callable) {
        io.reactivex.internal.functions.a.g(callable, "supplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.p(callable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> z3(T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10) {
        io.reactivex.internal.functions.a.g(t3, "The first item is null");
        io.reactivex.internal.functions.a.g(t4, "The second item is null");
        io.reactivex.internal.functions.a.g(t5, "The third item is null");
        io.reactivex.internal.functions.a.g(t6, "The fourth item is null");
        io.reactivex.internal.functions.a.g(t7, "The fifth item is null");
        io.reactivex.internal.functions.a.g(t8, "The sixth item is null");
        io.reactivex.internal.functions.a.g(t9, "The seventh item is null");
        io.reactivex.internal.functions.a.g(t10, "The eighth item is null");
        return O2(t3, t4, t5, t6, t7, t8, t9, t10);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T> j<T> z6(l3.b<? extends l3.b<? extends T>> bVar) {
        return A6(bVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public static <T1, T2, R> j<R> z8(l3.b<? extends T1> bVar, l3.b<? extends T2> bVar2, w2.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        return D8(Functions.x(cVar), false, V(), bVar, bVar2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    public final void A(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar) {
        io.reactivex.internal.operators.flowable.h.c(this, gVar, gVar2, aVar);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> A1(long j4, TimeUnit timeUnit) {
        return C1(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final a A2(w2.o<? super T, ? extends g> oVar) {
        return B2(oVar, false, Integer.MAX_VALUE);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> A4(T t3) {
        io.reactivex.internal.functions.a.g(t3, "item is null");
        return z4(Functions.n(t3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> A5(Callable<R> callable, w2.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.a.g(callable, "seedSupplier is null");
        io.reactivex.internal.functions.a.g(cVar, "accumulator is null");
        return io.reactivex.plugins.a.P(new FlowableScanSeed(this, callable, cVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<List<T>> A7(int i2) {
        io.reactivex.internal.functions.a.h(i2, "capacityHint");
        return io.reactivex.plugins.a.S(new i1(this, Functions.f(i2)));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    public final void B(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, int i2) {
        io.reactivex.internal.operators.flowable.h.d(this, gVar, gVar2, aVar, i2);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> B1(long j4, TimeUnit timeUnit, h0 h0Var) {
        return C1(j4, timeUnit, h0Var, false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final a B2(w2.o<? super T, ? extends g> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        return io.reactivex.plugins.a.O(new FlowableFlatMapCompletableCompletable(this, oVar, z3, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> B4(l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "next is null");
        return io.reactivex.plugins.a.P(new FlowableOnErrorNext(this, Functions.n(bVar), true));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final j<T> B6(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.P(new FlowableTake(this, j4));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <U extends Collection<? super T>> i0<U> B7(Callable<U> callable) {
        io.reactivex.internal.functions.a.g(callable, "collectionSupplier is null");
        return io.reactivex.plugins.a.S(new i1(this, callable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<List<T>> C(int i2) {
        return D(i2, i2);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> C1(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.q(this, Math.max(0L, j4), timeUnit, h0Var, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U> j<U> C2(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return D2(oVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<T> C3(T t3) {
        io.reactivex.internal.functions.a.g(t3, "defaultItem");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.o0(this, t3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> C4() {
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.t(this));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> C6(long j4, TimeUnit timeUnit) {
        return N6(r7(j4, timeUnit));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <K> i0<Map<K, T>> C7(w2.o<? super T, ? extends K> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        return (i0<Map<K, T>>) Z(HashMapSupplier.asCallable(), Functions.F(oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<List<T>> D(int i2, int i4) {
        return (j<List<T>>) E(i2, i4, ArrayListSupplier.asCallable());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> D1(long j4, TimeUnit timeUnit, boolean z3) {
        return C1(j4, timeUnit, io.reactivex.schedulers.b.a(), z3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U> j<U> D2(w2.o<? super T, ? extends Iterable<? extends U>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableFlattenIterable(this, oVar, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final q<T> D3() {
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.flowable.n0(this));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.parallel.a<T> D4() {
        return io.reactivex.parallel.a.y(this);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> D6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return N6(s7(j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <K, V> i0<Map<K, V>> D7(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(oVar2, "valueSelector is null");
        return (i0<Map<K, V>>) Z(HashMapSupplier.asCallable(), Functions.G(oVar, oVar2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U extends Collection<? super T>> j<U> E(int i2, int i4, Callable<U> callable) {
        io.reactivex.internal.functions.a.h(i2, "count");
        io.reactivex.internal.functions.a.h(i4, "skip");
        io.reactivex.internal.functions.a.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.P(new FlowableBuffer(this, i2, i4, callable));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, V> j<T> E1(l3.b<U> bVar, w2.o<? super T, ? extends l3.b<V>> oVar) {
        return I1(bVar).F1(oVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, V> j<V> E2(w2.o<? super T, ? extends Iterable<? extends U>> oVar, w2.c<? super T, ? super U, ? extends V> cVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.g(cVar, "resultSelector is null");
        return (j<V>) u2(FlowableInternalHelper.a(oVar), cVar, false, V(), V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<T> E3() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.o0(this, null));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.parallel.a<T> E4(int i2) {
        io.reactivex.internal.functions.a.h(i2, "parallelism");
        return io.reactivex.parallel.a.z(this, i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> E6(int i2) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("count >= 0 required but it was " + i2);
        } else if (i2 == 0) {
            return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.k0(this));
        } else {
            if (i2 == 1) {
                return io.reactivex.plugins.a.P(new FlowableTakeLastOne(this));
            }
            return io.reactivex.plugins.a.P(new FlowableTakeLast(this, i2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <K, V> i0<Map<K, V>> E7(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, V>> callable) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(oVar2, "valueSelector is null");
        return (i0<Map<K, V>>) Z(callable, Functions.G(oVar, oVar2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U extends Collection<? super T>> j<U> F(int i2, Callable<U> callable) {
        return E(i2, i2, callable);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U> j<T> F1(w2.o<? super T, ? extends l3.b<U>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "itemDelayIndicator is null");
        return (j<T>) o2(FlowableInternalHelper.c(oVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, V> j<V> F2(w2.o<? super T, ? extends Iterable<? extends U>> oVar, w2.c<? super T, ? super U, ? extends V> cVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.g(cVar, "resultSelector is null");
        return (j<V>) u2(FlowableInternalHelper.a(oVar), cVar, false, V(), i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final <R> j<R> F3(n<? extends R, ? super T> nVar) {
        io.reactivex.internal.functions.a.g(nVar, "lifter is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.p0(this, nVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.parallel.a<T> F4(int i2, int i4) {
        io.reactivex.internal.functions.a.h(i2, "parallelism");
        io.reactivex.internal.functions.a.h(i4, "prefetch");
        return io.reactivex.parallel.a.A(this, i2, i4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> F5() {
        return io.reactivex.plugins.a.P(new y0(this));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> F6(long j4, long j5, TimeUnit timeUnit) {
        return H6(j4, j5, timeUnit, io.reactivex.schedulers.b.a(), false, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <K> i0<Map<K, Collection<T>>> F7(w2.o<? super T, ? extends K> oVar) {
        return (i0<Map<K, Collection<T>>>) I7(oVar, Functions.k(), HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, R> j<R> F8(Iterable<U> iterable, w2.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(iterable, "other is null");
        io.reactivex.internal.functions.a.g(cVar, "zipper is null");
        return io.reactivex.plugins.a.P(new l1(this, iterable, cVar));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<List<T>> G(long j4, long j5, TimeUnit timeUnit) {
        return (j<List<T>>) I(j4, j5, timeUnit, io.reactivex.schedulers.b.a(), ArrayListSupplier.asCallable());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> G1(long j4, TimeUnit timeUnit) {
        return H1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <R> j<R> G2(w2.o<? super T, ? extends w<? extends R>> oVar) {
        return H2(oVar, false, Integer.MAX_VALUE);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final j<T> G3(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.P(new FlowableLimit(this, j4));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> G4(w2.o<? super j<T>, ? extends l3.b<R>> oVar) {
        return H4(oVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> G5() {
        return I4().O8();
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> G6(long j4, long j5, TimeUnit timeUnit, h0 h0Var) {
        return H6(j4, j5, timeUnit, h0Var, false, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <K, V> i0<Map<K, Collection<V>>> G7(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2) {
        return I7(oVar, oVar2, HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, R> j<R> G8(l3.b<? extends U> bVar, w2.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return z8(this, bVar, cVar);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<List<T>> H(long j4, long j5, TimeUnit timeUnit, h0 h0Var) {
        return (j<List<T>>) I(j4, j5, timeUnit, h0Var, ArrayListSupplier.asCallable());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> H1(long j4, TimeUnit timeUnit, h0 h0Var) {
        return I1(s7(j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <R> j<R> H2(w2.o<? super T, ? extends w<? extends R>> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        return io.reactivex.plugins.a.P(new FlowableFlatMapMaybe(this, oVar, z3, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <R> j<R> H3(w2.o<? super T, ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new q0(this, oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> H4(w2.o<? super j<T>, ? extends l3.b<? extends R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.P(new FlowablePublishMulticast(this, oVar, i2, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<T> H5(T t3) {
        io.reactivex.internal.functions.a.g(t3, "defaultItem is null");
        return io.reactivex.plugins.a.S(new a1(this, t3));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> H6(long j4, long j5, TimeUnit timeUnit, h0 h0Var, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        if (j4 >= 0) {
            return io.reactivex.plugins.a.P(new FlowableTakeLastTimed(this, j4, j5, timeUnit, h0Var, i2, z3));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <K, V> i0<Map<K, Collection<V>>> H7(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, Callable<Map<K, Collection<V>>> callable) {
        return I7(oVar, oVar2, callable, ArrayListSupplier.asFunction());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, R> j<R> H8(l3.b<? extends U> bVar, w2.c<? super T, ? super U, ? extends R> cVar, boolean z3) {
        return A8(this, bVar, cVar, z3);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <U extends Collection<? super T>> j<U> I(long j4, long j5, TimeUnit timeUnit, h0 h0Var, Callable<U> callable) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.k(this, j4, j5, timeUnit, h0Var, callable, Integer.MAX_VALUE, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U> j<T> I1(l3.b<U> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "subscriptionIndicator is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.r(this, bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <R> j<R> I2(w2.o<? super T, ? extends o0<? extends R>> oVar) {
        return J2(oVar, false, Integer.MAX_VALUE);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<y<T>> I3() {
        return io.reactivex.plugins.a.P(new FlowableMaterialize(this));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.flowables.a<T> I4() {
        return J4(V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final q<T> I5() {
        return io.reactivex.plugins.a.Q(new z0(this));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> I6(long j4, TimeUnit timeUnit) {
        return L6(j4, timeUnit, io.reactivex.schedulers.b.a(), false, V());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <K, V> i0<Map<K, Collection<V>>> I7(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, Collection<V>>> callable, w2.o<? super K, ? extends Collection<? super V>> oVar3) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.a.g(callable, "mapSupplier is null");
        io.reactivex.internal.functions.a.g(oVar3, "collectionFactory is null");
        return (i0<Map<K, Collection<V>>>) Z(callable, Functions.H(oVar, oVar2, oVar3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, R> j<R> I8(l3.b<? extends U> bVar, w2.c<? super T, ? super U, ? extends R> cVar, boolean z3, int i2) {
        return B8(this, bVar, cVar, z3, i2);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<List<T>> J(long j4, TimeUnit timeUnit) {
        return M(j4, timeUnit, io.reactivex.schedulers.b.a(), Integer.MAX_VALUE);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <T2> j<T2> J1() {
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.s(this));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <R> j<R> J2(w2.o<? super T, ? extends o0<? extends R>> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        return io.reactivex.plugins.a.P(new FlowableFlatMapSingle(this, oVar, z3, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.flowables.a<T> J4(int i2) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return FlowablePublish.U8(this, i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<T> J5() {
        return io.reactivex.plugins.a.S(new a1(this, null));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> J6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return L6(j4, timeUnit, h0Var, false, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.NONE)
    @CheckReturnValue
    public final z<T> J7() {
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.n0(this));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<List<T>> K(long j4, TimeUnit timeUnit, int i2) {
        return M(j4, timeUnit, io.reactivex.schedulers.b.a(), i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> K1() {
        return M1(Functions.k(), Functions.g());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.NONE)
    @CheckReturnValue
    public final io.reactivex.disposables.b K2(w2.g<? super T> gVar) {
        return c6(gVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> K5(long j4) {
        if (j4 <= 0) {
            return io.reactivex.plugins.a.P(this);
        }
        return io.reactivex.plugins.a.P(new b1(this, j4));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> K6(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        return L6(j4, timeUnit, h0Var, z3, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<List<T>> K7() {
        return M7(Functions.p());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<List<T>> L(long j4, TimeUnit timeUnit, h0 h0Var) {
        return (j<List<T>>) N(j4, timeUnit, h0Var, Integer.MAX_VALUE, ArrayListSupplier.asCallable(), false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <K> j<T> L1(w2.o<? super T, K> oVar) {
        return M1(oVar, Functions.g());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.NONE)
    @CheckReturnValue
    public final io.reactivex.disposables.b L2(w2.r<? super T> rVar) {
        return N2(rVar, Functions.f65827f, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> L5(long j4, TimeUnit timeUnit) {
        return T5(r7(j4, timeUnit));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> L6(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3, int i2) {
        return H6(Long.MAX_VALUE, j4, timeUnit, h0Var, z3, i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<List<T>> L7(int i2) {
        return N7(Functions.p(), i2);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<List<T>> M(long j4, TimeUnit timeUnit, h0 h0Var, int i2) {
        return (j<List<T>>) N(j4, timeUnit, h0Var, i2, ArrayListSupplier.asCallable(), false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <K> j<T> M1(w2.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(callable, "collectionSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.u(this, oVar, callable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.NONE)
    @CheckReturnValue
    public final io.reactivex.disposables.b M2(w2.r<? super T> rVar, w2.g<? super Throwable> gVar) {
        return N2(rVar, gVar, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> M4(int i2) {
        return k4(io.reactivex.internal.schedulers.c.f69896b, true, i2);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> M5(long j4, TimeUnit timeUnit, h0 h0Var) {
        return T5(s7(j4, timeUnit, h0Var));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> M6(long j4, TimeUnit timeUnit, boolean z3) {
        return L6(j4, timeUnit, io.reactivex.schedulers.b.a(), z3, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<List<T>> M7(Comparator<? super T> comparator) {
        io.reactivex.internal.functions.a.g(comparator, "comparator is null");
        return (i0<List<T>>) z7().q0(Functions.o(comparator));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <U extends Collection<? super T>> j<U> N(long j4, TimeUnit timeUnit, h0 h0Var, int i2, Callable<U> callable, boolean z3) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.g(callable, "bufferSupplier is null");
        io.reactivex.internal.functions.a.h(i2, "count");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.k(this, j4, j4, timeUnit, h0Var, callable, i2, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> N1() {
        return P1(Functions.k());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.NONE)
    @CheckReturnValue
    public final io.reactivex.disposables.b N2(w2.r<? super T> rVar, w2.g<? super Throwable> gVar, w2.a aVar) {
        io.reactivex.internal.functions.a.g(rVar, "onNext is null");
        io.reactivex.internal.functions.a.g(gVar, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        ForEachWhileSubscriber forEachWhileSubscriber = new ForEachWhileSubscriber(rVar, gVar, aVar);
        g6(forEachWhileSubscriber);
        return forEachWhileSubscriber;
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final q<T> N4(w2.c<T, T, T> cVar) {
        io.reactivex.internal.functions.a.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.Q(new t0(this, cVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> N5(int i2) {
        if (i2 >= 0) {
            if (i2 == 0) {
                return io.reactivex.plugins.a.P(this);
            }
            return io.reactivex.plugins.a.P(new FlowableSkipLast(this, i2));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <U> j<T> N6(l3.b<U> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return io.reactivex.plugins.a.P(new FlowableTakeUntil(this, bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<List<T>> N7(Comparator<? super T> comparator, int i2) {
        io.reactivex.internal.functions.a.g(comparator, "comparator is null");
        return (i0<List<T>>) A7(i2).q0(Functions.o(comparator));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <TOpening, TClosing> j<List<T>> O(j<? extends TOpening> jVar, w2.o<? super TOpening, ? extends l3.b<? extends TClosing>> oVar) {
        return (j<List<T>>) P(jVar, oVar, ArrayListSupplier.asCallable());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> O1(w2.d<? super T, ? super T> dVar) {
        io.reactivex.internal.functions.a.g(dVar, "comparer is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.v(this, Functions.k(), dVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <R> i0<R> O4(R r3, w2.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.a.g(r3, "seed is null");
        io.reactivex.internal.functions.a.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.S(new u0(this, r3, cVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final j<T> O5(long j4, TimeUnit timeUnit) {
        return R5(j4, timeUnit, io.reactivex.schedulers.b.a(), false, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> O6(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "stopPredicate is null");
        return io.reactivex.plugins.a.P(new f1(this, rVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <TOpening, TClosing, U extends Collection<? super T>> j<U> P(j<? extends TOpening> jVar, w2.o<? super TOpening, ? extends l3.b<? extends TClosing>> oVar, Callable<U> callable) {
        io.reactivex.internal.functions.a.g(jVar, "openingIndicator is null");
        io.reactivex.internal.functions.a.g(oVar, "closingIndicator is null");
        io.reactivex.internal.functions.a.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.P(new FlowableBufferBoundary(this, jVar, oVar, callable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> P0(w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
        return Q0(oVar, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <K> j<T> P1(w2.o<? super T, K> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.v(this, oVar, io.reactivex.internal.functions.a.d()));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <R> i0<R> P4(Callable<R> callable, w2.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.a.g(callable, "seedSupplier is null");
        io.reactivex.internal.functions.a.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.S(new v0(this, callable, cVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final j<T> P5(long j4, TimeUnit timeUnit, h0 h0Var) {
        return R5(j4, timeUnit, h0Var, false, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> P6(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.P(new g1(this, rVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> P7(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableUnsubscribeOn(this, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <B> j<List<T>> Q(Callable<? extends l3.b<B>> callable) {
        return (j<List<T>>) R(callable, ArrayListSupplier.asCallable());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> Q0(w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        if (this instanceof x2.m) {
            Object call = ((x2.m) this).call();
            if (call == null) {
                return h2();
            }
            return w0.a(call, oVar);
        }
        return io.reactivex.plugins.a.P(new FlowableConcatMap(this, oVar, i2, ErrorMode.IMMEDIATE));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> Q1(w2.g<? super T> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onAfterNext is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.w(this, gVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> Q4() {
        return R4(Long.MAX_VALUE);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final j<T> Q5(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        return R5(j4, timeUnit, h0Var, z3, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final TestSubscriber<T> Q6() {
        TestSubscriber<T> testSubscriber = new TestSubscriber<>();
        g6(testSubscriber);
        return testSubscriber;
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <B, U extends Collection<? super T>> j<U> R(Callable<? extends l3.b<B>> callable, Callable<U> callable2) {
        io.reactivex.internal.functions.a.g(callable, "boundaryIndicatorSupplier is null");
        io.reactivex.internal.functions.a.g(callable2, "bufferSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.i(this, callable, callable2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final a R0(w2.o<? super T, ? extends g> oVar) {
        return S0(oVar, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> R1(w2.a aVar) {
        return X1(Functions.h(), Functions.h(), Functions.f65824c, aVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> R4(long j4) {
        if (j4 >= 0) {
            if (j4 == 0) {
                return h2();
            }
            return io.reactivex.plugins.a.P(new FlowableRepeat(this, j4));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j4);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final j<T> R5(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableSkipLastTimed(this, j4, timeUnit, h0Var, i2 << 1, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final TestSubscriber<T> R6(long j4) {
        TestSubscriber<T> testSubscriber = new TestSubscriber<>(j4);
        g6(testSubscriber);
        return testSubscriber;
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <B> j<List<T>> S(l3.b<B> bVar) {
        return (j<List<T>>) U(bVar, ArrayListSupplier.asCallable());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final a S0(w2.o<? super T, ? extends g> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.O(new FlowableConcatMapCompletable(this, oVar, ErrorMode.IMMEDIATE, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> S1(w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onFinally is null");
        return io.reactivex.plugins.a.P(new FlowableDoFinally(this, aVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> S4(w2.e eVar) {
        io.reactivex.internal.functions.a.g(eVar, "stop is null");
        return io.reactivex.plugins.a.P(new FlowableRepeatUntil(this, eVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final j<T> S5(long j4, TimeUnit timeUnit, boolean z3) {
        return R5(j4, timeUnit, io.reactivex.schedulers.b.a(), z3, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final TestSubscriber<T> S6(long j4, boolean z3) {
        TestSubscriber<T> testSubscriber = new TestSubscriber<>(j4);
        if (z3) {
            testSubscriber.cancel();
        }
        g6(testSubscriber);
        return testSubscriber;
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<j<T>> S7(long j4) {
        return U7(j4, j4, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <B> j<List<T>> T(l3.b<B> bVar, int i2) {
        io.reactivex.internal.functions.a.h(i2, "initialCapacity");
        return (j<List<T>>) U(bVar, Functions.f(i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final a T0(w2.o<? super T, ? extends g> oVar) {
        return V0(oVar, true, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> T1(w2.a aVar) {
        return Z1(Functions.h(), Functions.f65828g, aVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> T4(w2.o<? super j<Object>, ? extends l3.b<?>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "handler is null");
        return io.reactivex.plugins.a.P(new FlowableRepeatWhen(this, oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U> j<T> T5(l3.b<U> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return io.reactivex.plugins.a.P(new FlowableSkipUntil(this, bVar));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> T6(long j4, TimeUnit timeUnit) {
        return U6(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<j<T>> T7(long j4, long j5) {
        return U7(j4, j5, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <B, U extends Collection<? super T>> j<U> U(l3.b<B> bVar, Callable<U> callable) {
        io.reactivex.internal.functions.a.g(bVar, "boundaryIndicator is null");
        io.reactivex.internal.functions.a.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.j(this, bVar, callable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final a U0(w2.o<? super T, ? extends g> oVar, boolean z3) {
        return V0(oVar, z3, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> U1(w2.a aVar) {
        return X1(Functions.h(), Functions.h(), aVar, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> U4(w2.o<? super j<T>, ? extends l3.b<R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        return FlowableReplay.Z8(FlowableInternalHelper.d(this), oVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> U5(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.P(new c1(this, rVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> U6(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableThrottleFirstTimed(this, j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<j<T>> U7(long j4, long j5, int i2) {
        io.reactivex.internal.functions.a.i(j5, "skip");
        io.reactivex.internal.functions.a.i(j4, "count");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableWindow(this, j4, j5, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final a V0(w2.o<? super T, ? extends g> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.O(new FlowableConcatMapCompletable(this, oVar, z3 ? ErrorMode.END : ErrorMode.BOUNDARY, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> V1(l3.c<? super T> cVar) {
        io.reactivex.internal.functions.a.g(cVar, "subscriber is null");
        return X1(FlowableInternalHelper.m(cVar), FlowableInternalHelper.l(cVar), FlowableInternalHelper.k(cVar), Functions.f65824c);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> V4(w2.o<? super j<T>, ? extends l3.b<R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return FlowableReplay.Z8(FlowableInternalHelper.e(this, i2), oVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> V5() {
        return z7().p1().H3(Functions.o(Functions.p())).C2(Functions.k());
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> V6(long j4, TimeUnit timeUnit) {
        return s5(j4, timeUnit);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<j<T>> V7(long j4, long j5, TimeUnit timeUnit) {
        return X7(j4, j5, timeUnit, io.reactivex.schedulers.b.a(), V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> W() {
        return X(16);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> W0(w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
        return X0(oVar, 2, true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> W1(w2.g<? super y<T>> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "consumer is null");
        return X1(Functions.t(gVar), Functions.s(gVar), Functions.r(gVar), Functions.f65824c);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> W4(w2.o<? super j<T>, ? extends l3.b<R>> oVar, int i2, long j4, TimeUnit timeUnit) {
        return X4(oVar, i2, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> W5(Comparator<? super T> comparator) {
        io.reactivex.internal.functions.a.g(comparator, "sortFunction");
        return z7().p1().H3(Functions.o(comparator)).C2(Functions.k());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> W6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return t5(j4, timeUnit, h0Var);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<j<T>> W7(long j4, long j5, TimeUnit timeUnit, h0 h0Var) {
        return X7(j4, j5, timeUnit, h0Var, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> X(int i2) {
        io.reactivex.internal.functions.a.h(i2, "initialCapacity");
        return io.reactivex.plugins.a.P(new FlowableCache(this, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> X0(w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, boolean z3) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        if (this instanceof x2.m) {
            Object call = ((x2.m) this).call();
            if (call == null) {
                return h2();
            }
            return w0.a(call, oVar);
        }
        return io.reactivex.plugins.a.P(new FlowableConcatMap(this, oVar, i2, z3 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> X4(w2.o<? super j<T>, ? extends l3.b<R>> oVar, int i2, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return FlowableReplay.Z8(FlowableInternalHelper.f(this, i2, j4, timeUnit, h0Var), oVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> X5(Iterable<? extends T> iterable) {
        return C0(U2(iterable), this);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> X6(long j4, TimeUnit timeUnit) {
        return Z6(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<j<T>> X7(long j4, long j5, TimeUnit timeUnit, h0 h0Var, int i2) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        io.reactivex.internal.functions.a.i(j4, "timespan");
        io.reactivex.internal.functions.a.i(j5, "timeskip");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        return io.reactivex.plugins.a.P(new k1(this, j4, j5, timeUnit, h0Var, Long.MAX_VALUE, i2, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <U> j<U> Y(Class<U> cls) {
        io.reactivex.internal.functions.a.g(cls, "clazz is null");
        return (j<U>) H3(Functions.e(cls));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> Y0(w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
        return Z0(oVar, V(), V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> Y1(w2.g<? super Throwable> gVar) {
        w2.g<? super T> h4 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return X1(h4, gVar, aVar, aVar);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> Y4(w2.o<? super j<T>, ? extends l3.b<R>> oVar, int i2, h0 h0Var) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return FlowableReplay.Z8(FlowableInternalHelper.e(this, i2), FlowableInternalHelper.h(oVar, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> Y5(T t3) {
        io.reactivex.internal.functions.a.g(t3, "item is null");
        return C0(s3(t3), this);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> Y6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return Z6(j4, timeUnit, h0Var, false);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<j<T>> Y7(long j4, TimeUnit timeUnit) {
        return d8(j4, timeUnit, io.reactivex.schedulers.b.a(), Long.MAX_VALUE, false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <U> i0<U> Z(Callable<? extends U> callable, w2.b<? super U, ? super T> bVar) {
        io.reactivex.internal.functions.a.g(callable, "initialItemSupplier is null");
        io.reactivex.internal.functions.a.g(bVar, "collector is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.l(this, callable, bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> Z0(w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, int i4) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new FlowableConcatMapEager(this, oVar, i2, i4, ErrorMode.IMMEDIATE));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> Z1(w2.g<? super l3.d> gVar, w2.q qVar, w2.a aVar) {
        io.reactivex.internal.functions.a.g(gVar, "onSubscribe is null");
        io.reactivex.internal.functions.a.g(qVar, "onRequest is null");
        io.reactivex.internal.functions.a.g(aVar, "onCancel is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.y(this, gVar, qVar, aVar));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> Z4(w2.o<? super j<T>, ? extends l3.b<R>> oVar, long j4, TimeUnit timeUnit) {
        return a5(oVar, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> Z5(l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return C0(bVar, this);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> Z6(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableThrottleLatest(this, j4, timeUnit, h0Var, z3));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<j<T>> Z7(long j4, TimeUnit timeUnit, long j5) {
        return d8(j4, timeUnit, io.reactivex.schedulers.b.a(), j5, false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<Boolean> a(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.e(this, rVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <U> i0<U> a0(U u3, w2.b<? super U, ? super T> bVar) {
        io.reactivex.internal.functions.a.g(u3, "initialItem is null");
        return Z(Functions.m(u3), bVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> a1(w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, int i4, boolean z3) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new FlowableConcatMapEager(this, oVar, i2, i4, z3 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> a2(w2.g<? super T> gVar) {
        w2.g<? super Throwable> h4 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return X1(gVar, h4, aVar, aVar);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> a5(w2.o<? super j<T>, ? extends l3.b<R>> oVar, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return FlowableReplay.Z8(FlowableInternalHelper.g(this, j4, timeUnit, h0Var), oVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> a6(T... tArr) {
        j O2 = O2(tArr);
        if (O2 == h2()) {
            return io.reactivex.plugins.a.P(this);
        }
        return C0(O2, this);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> a7(long j4, TimeUnit timeUnit, boolean z3) {
        return Z6(j4, timeUnit, io.reactivex.schedulers.b.a(), z3);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<j<T>> a8(long j4, TimeUnit timeUnit, long j5, boolean z3) {
        return d8(j4, timeUnit, io.reactivex.schedulers.b.a(), j5, z3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> b1(w2.o<? super T, ? extends l3.b<? extends R>> oVar, boolean z3) {
        return a1(oVar, V(), V(), z3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> b2(w2.q qVar) {
        return Z1(Functions.h(), qVar, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <K> j<io.reactivex.flowables.b<K, T>> b3(w2.o<? super T, ? extends K> oVar) {
        return (j<io.reactivex.flowables.b<K, T>>) e3(oVar, Functions.k(), false, V());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> b5(w2.o<? super j<T>, ? extends l3.b<R>> oVar, h0 h0Var) {
        io.reactivex.internal.functions.a.g(oVar, "selector is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return FlowableReplay.Z8(FlowableInternalHelper.d(this), FlowableInternalHelper.h(oVar, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    public final io.reactivex.disposables.b b6() {
        return f6(Functions.h(), Functions.f65827f, Functions.f65824c, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> b7(long j4, TimeUnit timeUnit) {
        return v1(j4, timeUnit);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<j<T>> b8(long j4, TimeUnit timeUnit, h0 h0Var) {
        return d8(j4, timeUnit, h0Var, Long.MAX_VALUE, false);
    }

    @Override // l3.b
    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    public final void c(l3.c<? super T> cVar) {
        if (cVar instanceof o) {
            g6((o) cVar);
            return;
        }
        io.reactivex.internal.functions.a.g(cVar, "s is null");
        g6(new StrictSubscriber(cVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U> j<U> c1(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return d1(oVar, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> c2(w2.g<? super l3.d> gVar) {
        return Z1(gVar, Functions.f65828g, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <K, V> j<io.reactivex.flowables.b<K, V>> c3(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2) {
        return e3(oVar, oVar2, false, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.flowables.a<T> c5() {
        return FlowableReplay.Y8(this);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final io.reactivex.disposables.b c6(w2.g<? super T> gVar) {
        return f6(gVar, Functions.f65827f, Functions.f65824c, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> c7(long j4, TimeUnit timeUnit, h0 h0Var) {
        return w1(j4, timeUnit, h0Var);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<j<T>> c8(long j4, TimeUnit timeUnit, h0 h0Var, long j5) {
        return d8(j4, timeUnit, h0Var, j5, false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U> j<U> d1(w2.o<? super T, ? extends Iterable<? extends U>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.P(new FlowableFlattenIterable(this, oVar, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> d2(w2.a aVar) {
        return X1(Functions.h(), Functions.a(aVar), aVar, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <K, V> j<io.reactivex.flowables.b<K, V>> d3(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, boolean z3) {
        return e3(oVar, oVar2, z3, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> d4(@NonNull g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return io.reactivex.plugins.a.P(new FlowableMergeWithCompletable(this, gVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.flowables.a<T> d5(int i2) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return FlowableReplay.U8(this, i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final io.reactivex.disposables.b d6(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2) {
        return f6(gVar, gVar2, Functions.f65824c, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<io.reactivex.schedulers.d<T>> d7() {
        return g7(TimeUnit.MILLISECONDS, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<j<T>> d8(long j4, TimeUnit timeUnit, h0 h0Var, long j5, boolean z3) {
        return e8(j4, timeUnit, h0Var, j5, z3, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> e1(w2.o<? super T, ? extends w<? extends R>> oVar) {
        return f1(oVar, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final q<T> e2(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.flowable.z(this, j4));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <K, V> j<io.reactivex.flowables.b<K, V>> e3(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableGroupBy(this, oVar, oVar2, i2, z3, null));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> e4(@NonNull w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return io.reactivex.plugins.a.P(new FlowableMergeWithMaybe(this, wVar));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.flowables.a<T> e5(int i2, long j4, TimeUnit timeUnit) {
        return f5(i2, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final io.reactivex.disposables.b e6(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar) {
        return f6(gVar, gVar2, aVar, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<io.reactivex.schedulers.d<T>> e7(h0 h0Var) {
        return g7(TimeUnit.MILLISECONDS, h0Var);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<j<T>> e8(long j4, TimeUnit timeUnit, h0 h0Var, long j5, boolean z3, int i2) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.i(j5, "count");
        return io.reactivex.plugins.a.P(new k1(this, j4, j4, timeUnit, h0Var, j5, i2, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> f(l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return e(this, bVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> f1(w2.o<? super T, ? extends w<? extends R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.P(new FlowableConcatMapMaybe(this, oVar, ErrorMode.IMMEDIATE, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<T> f2(long j4, T t3) {
        if (j4 >= 0) {
            io.reactivex.internal.functions.a.g(t3, "defaultItem is null");
            return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.a0(this, j4, t3));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <K, V> j<io.reactivex.flowables.b<K, V>> f3(w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, boolean z3, int i2, w2.o<? super w2.g<Object>, ? extends Map<K, Object>> oVar3) {
        io.reactivex.internal.functions.a.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.a.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        io.reactivex.internal.functions.a.g(oVar3, "evictingMapFactory is null");
        return io.reactivex.plugins.a.P(new FlowableGroupBy(this, oVar, oVar2, i2, z3, oVar3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> f4(@NonNull o0<? extends T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "other is null");
        return io.reactivex.plugins.a.P(new FlowableMergeWithSingle(this, o0Var));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.flowables.a<T> f5(int i2, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return FlowableReplay.W8(this, j4, timeUnit, h0Var, i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final io.reactivex.disposables.b f6(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.g<? super l3.d> gVar3) {
        io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        io.reactivex.internal.functions.a.g(gVar2, "onError is null");
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.a.g(gVar3, "onSubscribe is null");
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(gVar, gVar2, aVar, gVar3);
        g6(lambdaSubscriber);
        return lambdaSubscriber;
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<io.reactivex.schedulers.d<T>> f7(TimeUnit timeUnit) {
        return g7(timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <B> j<j<T>> f8(Callable<? extends l3.b<B>> callable) {
        return g8(callable, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<Boolean> g(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.f(this, rVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> g1(w2.o<? super T, ? extends w<? extends R>> oVar) {
        return i1(oVar, true, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<T> g2(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.a0(this, j4, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <K> j<io.reactivex.flowables.b<K, T>> g3(w2.o<? super T, ? extends K> oVar, boolean z3) {
        return (j<io.reactivex.flowables.b<K, T>>) e3(oVar, Functions.k(), z3, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> g4(l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return O3(this, bVar);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.flowables.a<T> g5(int i2, h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return FlowableReplay.a9(d5(i2), h0Var);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    public final void g6(o<? super T> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "s is null");
        try {
            l3.c<? super T> h02 = io.reactivex.plugins.a.h0(this, oVar);
            io.reactivex.internal.functions.a.g(h02, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            h6(h02);
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
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<io.reactivex.schedulers.d<T>> g7(TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new h1(this, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <B> j<j<T>> g8(Callable<? extends l3.b<B>> callable, int i2) {
        io.reactivex.internal.functions.a.g(callable, "boundaryIndicatorSupplier is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableWindowBoundarySupplier(this, callable, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final <R> R h(@NonNull k<T, ? extends R> kVar) {
        return (R) ((k) io.reactivex.internal.functions.a.g(kVar, "converter is null")).a(this);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> h1(w2.o<? super T, ? extends w<? extends R>> oVar, boolean z3) {
        return i1(oVar, z3, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <TRight, TLeftEnd, TRightEnd, R> j<R> h3(l3.b<? extends TRight> bVar, w2.o<? super T, ? extends l3.b<TLeftEnd>> oVar, w2.o<? super TRight, ? extends l3.b<TRightEnd>> oVar2, w2.c<? super T, ? super j<TRight>, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        io.reactivex.internal.functions.a.g(oVar, "leftEnd is null");
        io.reactivex.internal.functions.a.g(oVar2, "rightEnd is null");
        io.reactivex.internal.functions.a.g(cVar, "resultSelector is null");
        return io.reactivex.plugins.a.P(new FlowableGroupJoin(this, bVar, oVar, oVar2, cVar));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.flowables.a<T> h5(long j4, TimeUnit timeUnit) {
        return i5(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    protected abstract void h6(l3.c<? super T> cVar);

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> h7(long j4, TimeUnit timeUnit) {
        return p7(j4, timeUnit, null, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <B> j<j<T>> h8(l3.b<B> bVar) {
        return i8(bVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final T i() {
        io.reactivex.internal.subscribers.d dVar = new io.reactivex.internal.subscribers.d();
        g6(dVar);
        T a4 = dVar.a();
        if (a4 != null) {
            return a4;
        }
        throw new NoSuchElementException();
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> i1(w2.o<? super T, ? extends w<? extends R>> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.P(new FlowableConcatMapMaybe(this, oVar, z3 ? ErrorMode.END : ErrorMode.BOUNDARY, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> i3() {
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.j0(this));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> i4(h0 h0Var) {
        return k4(h0Var, false, V());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.flowables.a<T> i5(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return FlowableReplay.V8(this, j4, timeUnit, h0Var);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> i6(@NonNull h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return j6(h0Var, !(this instanceof FlowableCreate));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> i7(long j4, TimeUnit timeUnit, h0 h0Var) {
        return p7(j4, timeUnit, null, h0Var);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <B> j<j<T>> i8(l3.b<B> bVar, int i2) {
        io.reactivex.internal.functions.a.g(bVar, "boundaryIndicator is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableWindowBoundary(this, bVar, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final T j(T t3) {
        io.reactivex.internal.subscribers.d dVar = new io.reactivex.internal.subscribers.d();
        g6(dVar);
        T a4 = dVar.a();
        return a4 != null ? a4 : t3;
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> j1(w2.o<? super T, ? extends o0<? extends R>> oVar) {
        return k1(oVar, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final a j3() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.flowable.l0(this));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> j4(h0 h0Var, boolean z3) {
        return k4(h0Var, z3, V());
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final io.reactivex.flowables.a<T> j5(h0 h0Var) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return FlowableReplay.a9(c5(), h0Var);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> j6(@NonNull h0 h0Var, boolean z3) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableSubscribeOn(this, h0Var, z3));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> j7(long j4, TimeUnit timeUnit, h0 h0Var, l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return p7(j4, timeUnit, bVar, h0Var);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <U, V> j<j<T>> j8(l3.b<U> bVar, w2.o<? super U, ? extends l3.b<V>> oVar) {
        return k8(bVar, oVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
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
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> k1(w2.o<? super T, ? extends o0<? extends R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.P(new FlowableConcatMapSingle(this, oVar, ErrorMode.IMMEDIATE, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> k2(w2.r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.d0(this, rVar));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> k4(h0 h0Var, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableObserveOn(this, h0Var, z3, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> k5() {
        return m5(Long.MAX_VALUE, Functions.c());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final <E extends l3.c<? super T>> E k6(E e4) {
        c(e4);
        return e4;
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> k7(long j4, TimeUnit timeUnit, l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return p7(j4, timeUnit, bVar, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <U, V> j<j<T>> k8(l3.b<U> bVar, w2.o<? super U, ? extends l3.b<V>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(bVar, "openingIndicator is null");
        io.reactivex.internal.functions.a.g(oVar, "closingIndicator is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new j1(this, bVar, oVar, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final Iterable<T> l() {
        return m(V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> l1(w2.o<? super T, ? extends o0<? extends R>> oVar) {
        return n1(oVar, true, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final i0<T> l2(T t3) {
        return f2(0L, t3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <U> j<U> l4(Class<U> cls) {
        io.reactivex.internal.functions.a.g(cls, "clazz is null");
        return k2(Functions.l(cls)).Y(cls);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> l5(long j4) {
        return m5(j4, Functions.c());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> l6(l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return io.reactivex.plugins.a.P(new d1(this, bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <U, V> j<T> l7(l3.b<U> bVar, w2.o<? super T, ? extends l3.b<V>> oVar) {
        io.reactivex.internal.functions.a.g(bVar, "firstTimeoutIndicator is null");
        return q7(bVar, oVar, null);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <R> j<R> l8(Iterable<? extends l3.b<?>> iterable, w2.o<? super Object[], R> oVar) {
        io.reactivex.internal.functions.a.g(iterable, "others is null");
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        return io.reactivex.plugins.a.P(new FlowableWithLatestFromMany(this, iterable, oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final Iterable<T> m(int i2) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return new BlockingFlowableIterable(this, i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> m1(w2.o<? super T, ? extends o0<? extends R>> oVar, boolean z3) {
        return n1(oVar, z3, 2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final q<T> m2() {
        return e2(0L);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final j<T> m4() {
        return q4(V(), false, true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> m5(long j4, w2.r<? super Throwable> rVar) {
        if (j4 >= 0) {
            io.reactivex.internal.functions.a.g(rVar, "predicate is null");
            return io.reactivex.plugins.a.P(new FlowableRetryPredicate(this, j4, rVar));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> m6(w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
        return n6(oVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, V> j<T> m7(l3.b<U> bVar, w2.o<? super T, ? extends l3.b<V>> oVar, l3.b<? extends T> bVar2) {
        io.reactivex.internal.functions.a.g(bVar, "firstTimeoutSelector is null");
        io.reactivex.internal.functions.a.g(bVar2, "other is null");
        return q7(bVar, oVar, bVar2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <T1, T2, T3, T4, R> j<R> m8(l3.b<T1> bVar, l3.b<T2> bVar2, l3.b<T3> bVar3, l3.b<T4> bVar4, w2.j<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> jVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        io.reactivex.internal.functions.a.g(bVar4, "source4 is null");
        return q8(new l3.b[]{bVar, bVar2, bVar3, bVar4}, Functions.A(jVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final T n() {
        io.reactivex.internal.subscribers.e eVar = new io.reactivex.internal.subscribers.e();
        g6(eVar);
        T a4 = eVar.a();
        if (a4 != null) {
            return a4;
        }
        throw new NoSuchElementException();
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> n1(w2.o<? super T, ? extends o0<? extends R>> oVar, boolean z3, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.P(new FlowableConcatMapSingle(this, oVar, z3 ? ErrorMode.END : ErrorMode.BOUNDARY, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final i0<T> n2() {
        return g2(0L);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> n4(int i2) {
        return q4(i2, false, false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> n5(w2.d<? super Integer, ? super Throwable> dVar) {
        io.reactivex.internal.functions.a.g(dVar, "predicate is null");
        return io.reactivex.plugins.a.P(new FlowableRetryBiPredicate(this, dVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> n6(w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2) {
        return o6(oVar, i2, false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <V> j<T> n7(w2.o<? super T, ? extends l3.b<V>> oVar) {
        return q7(null, oVar, null);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <T1, T2, T3, R> j<R> n8(l3.b<T1> bVar, l3.b<T2> bVar2, l3.b<T3> bVar3, w2.i<? super T, ? super T1, ? super T2, ? super T3, R> iVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        io.reactivex.internal.functions.a.g(bVar3, "source3 is null");
        return q8(new l3.b[]{bVar, bVar2, bVar3}, Functions.z(iVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final T o(T t3) {
        io.reactivex.internal.subscribers.e eVar = new io.reactivex.internal.subscribers.e();
        g6(eVar);
        T a4 = eVar.a();
        return a4 != null ? a4 : t3;
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<T> o1(@NonNull g gVar) {
        io.reactivex.internal.functions.a.g(gVar, "other is null");
        return io.reactivex.plugins.a.P(new FlowableConcatWithCompletable(this, gVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> o2(w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
        return z2(oVar, false, V(), V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> o4(int i2, w2.a aVar) {
        return r4(i2, false, false, aVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> o5(w2.r<? super Throwable> rVar) {
        return m5(Long.MAX_VALUE, rVar);
    }

    <R> j<R> o6(w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2, boolean z3) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        if (this instanceof x2.m) {
            Object call = ((x2.m) this).call();
            if (call == null) {
                return h2();
            }
            return w0.a(call, oVar);
        }
        return io.reactivex.plugins.a.P(new FlowableSwitchMap(this, oVar, i2, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <V> j<T> o7(w2.o<? super T, ? extends l3.b<V>> oVar, j<? extends T> jVar) {
        io.reactivex.internal.functions.a.g(jVar, "other is null");
        return q7(null, oVar, jVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <T1, T2, R> j<R> o8(l3.b<T1> bVar, l3.b<T2> bVar2, w2.h<? super T, ? super T1, ? super T2, R> hVar) {
        io.reactivex.internal.functions.a.g(bVar, "source1 is null");
        io.reactivex.internal.functions.a.g(bVar2, "source2 is null");
        return q8(new l3.b[]{bVar, bVar2}, Functions.y(hVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final Iterable<T> p() {
        return new io.reactivex.internal.operators.flowable.b(this);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> p1(@NonNull w<? extends T> wVar) {
        io.reactivex.internal.functions.a.g(wVar, "other is null");
        return io.reactivex.plugins.a.P(new FlowableConcatWithMaybe(this, wVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> p2(w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2) {
        return z2(oVar, false, i2, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> p4(int i2, boolean z3) {
        return q4(i2, z3, false);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> p5(w2.e eVar) {
        io.reactivex.internal.functions.a.g(eVar, "stop is null");
        return m5(Long.MAX_VALUE, Functions.v(eVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final a p6(@NonNull w2.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new FlowableSwitchMapCompletable(this, oVar, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <U, R> j<R> p8(l3.b<? extends U> bVar, w2.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        io.reactivex.internal.functions.a.g(cVar, "combiner is null");
        return io.reactivex.plugins.a.P(new FlowableWithLatestFrom(this, cVar, bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final Iterable<T> q(T t3) {
        return new io.reactivex.internal.operators.flowable.c(this, t3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> q1(@NonNull o0<? extends T> o0Var) {
        io.reactivex.internal.functions.a.g(o0Var, "other is null");
        return io.reactivex.plugins.a.P(new FlowableConcatWithSingle(this, o0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, R> j<R> q2(w2.o<? super T, ? extends l3.b<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar) {
        return u2(oVar, cVar, false, V(), V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<Boolean> q3() {
        return a(Functions.b());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final j<T> q4(int i2, boolean z3, boolean z4) {
        io.reactivex.internal.functions.a.h(i2, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableOnBackpressureBuffer(this, i2, z4, z3, Functions.f65824c));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> q5(w2.o<? super j<Throwable>, ? extends l3.b<?>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "handler is null");
        return io.reactivex.plugins.a.P(new FlowableRetryWhen(this, oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final a q6(@NonNull w2.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new FlowableSwitchMapCompletable(this, oVar, true));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <R> j<R> q8(Publisher<?>[] publisherArr, w2.o<? super Object[], R> oVar) {
        io.reactivex.internal.functions.a.g(publisherArr, "others is null");
        io.reactivex.internal.functions.a.g(oVar, "combiner is null");
        return io.reactivex.plugins.a.P(new FlowableWithLatestFromMany(this, publisherArr, oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final Iterable<T> r() {
        return new io.reactivex.internal.operators.flowable.d(this);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> r1(l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        return z0(this, bVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, R> j<R> r2(w2.o<? super T, ? extends l3.b<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar, int i2) {
        return u2(oVar, cVar, false, i2, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <TRight, TLeftEnd, TRightEnd, R> j<R> r3(l3.b<? extends TRight> bVar, w2.o<? super T, ? extends l3.b<TLeftEnd>> oVar, w2.o<? super TRight, ? extends l3.b<TRightEnd>> oVar2, w2.c<? super T, ? super TRight, ? extends R> cVar) {
        io.reactivex.internal.functions.a.g(bVar, "other is null");
        io.reactivex.internal.functions.a.g(oVar, "leftEnd is null");
        io.reactivex.internal.functions.a.g(oVar2, "rightEnd is null");
        io.reactivex.internal.functions.a.g(cVar, "resultSelector is null");
        return io.reactivex.plugins.a.P(new FlowableJoin(this, bVar, oVar, oVar2, cVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final j<T> r4(int i2, boolean z3, boolean z4, w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onOverflow is null");
        io.reactivex.internal.functions.a.h(i2, "capacity");
        return io.reactivex.plugins.a.P(new FlowableOnBackpressureBuffer(this, i2, z4, z3, aVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    public final void r5(l3.c<? super T> cVar) {
        io.reactivex.internal.functions.a.g(cVar, "s is null");
        if (cVar instanceof io.reactivex.subscribers.d) {
            g6((io.reactivex.subscribers.d) cVar);
        } else {
            g6(new io.reactivex.subscribers.d(cVar));
        }
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final <R> j<R> r6(w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
        return s6(oVar, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final T s() {
        return J5().i();
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<Boolean> s1(Object obj) {
        io.reactivex.internal.functions.a.g(obj, "item is null");
        return g(Functions.i(obj));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, R> j<R> s2(w2.o<? super T, ? extends l3.b<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar, boolean z3) {
        return u2(oVar, cVar, z3, V(), V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final j<T> s4(long j4, w2.a aVar, BackpressureOverflowStrategy backpressureOverflowStrategy) {
        io.reactivex.internal.functions.a.g(backpressureOverflowStrategy, "strategy is null");
        io.reactivex.internal.functions.a.i(j4, "capacity");
        return io.reactivex.plugins.a.P(new FlowableOnBackpressureBufferStrategy(this, j4, aVar, backpressureOverflowStrategy));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> s5(long j4, TimeUnit timeUnit) {
        return t5(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final <R> j<R> s6(w2.o<? super T, ? extends l3.b<? extends R>> oVar, int i2) {
        return o6(oVar, i2, true);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final T t(T t3) {
        return H5(t3).i();
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<Long> t1() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.o(this));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, R> j<R> t2(w2.o<? super T, ? extends l3.b<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar, boolean z3, int i2) {
        return u2(oVar, cVar, z3, i2, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final j<T> t4(boolean z3) {
        return q4(V(), z3, true);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> t5(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableSampleTimed(this, j4, timeUnit, h0Var, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <R> j<R> t6(@NonNull w2.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new FlowableSwitchMapMaybe(this, oVar, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<io.reactivex.schedulers.d<T>> t7() {
        return w7(TimeUnit.MILLISECONDS, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    public final void u() {
        io.reactivex.internal.operators.flowable.h.a(this);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final <R> j<R> u0(p<? super T, ? extends R> pVar) {
        return V2(((p) io.reactivex.internal.functions.a.g(pVar, "composer is null")).a(this));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <U, R> j<R> u2(w2.o<? super T, ? extends l3.b<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar, boolean z3, int i2, int i4) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.g(cVar, "combiner is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "bufferSize");
        return z2(FlowableInternalHelper.b(oVar, cVar), z3, i2, i4);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final j<T> u4() {
        return io.reactivex.plugins.a.P(new FlowableOnBackpressureDrop(this));
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> u5(long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableSampleTimed(this, j4, timeUnit, h0Var, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <R> j<R> u6(@NonNull w2.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new FlowableSwitchMapMaybe(this, oVar, true));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<io.reactivex.schedulers.d<T>> u7(h0 h0Var) {
        return w7(TimeUnit.MILLISECONDS, h0Var);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    public final void v(l3.c<? super T> cVar) {
        io.reactivex.internal.operators.flowable.h.b(this, cVar);
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> v1(long j4, TimeUnit timeUnit) {
        return w1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> v2(w2.o<? super T, ? extends l3.b<? extends R>> oVar, w2.o<? super Throwable, ? extends l3.b<? extends R>> oVar2, Callable<? extends l3.b<? extends R>> callable) {
        io.reactivex.internal.functions.a.g(oVar, "onNextMapper is null");
        io.reactivex.internal.functions.a.g(oVar2, "onErrorMapper is null");
        io.reactivex.internal.functions.a.g(callable, "onCompleteSupplier is null");
        return M3(new FlowableMapNotification(this, oVar, oVar2, callable));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final j<T> v4(w2.g<? super T> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onDrop is null");
        return io.reactivex.plugins.a.P(new FlowableOnBackpressureDrop(this, gVar));
    }

    @SchedulerSupport(SchedulerSupport.COMPUTATION)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> v5(long j4, TimeUnit timeUnit, boolean z3) {
        return u5(j4, timeUnit, io.reactivex.schedulers.b.a(), z3);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <R> j<R> v6(@NonNull w2.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new FlowableSwitchMapSingle(this, oVar, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<io.reactivex.schedulers.d<T>> v7(TimeUnit timeUnit) {
        return w7(timeUnit, io.reactivex.schedulers.b.a());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    public final void w(w2.g<? super T> gVar) {
        io.reactivex.internal.operators.flowable.h.c(this, gVar, Functions.f65827f, Functions.f65824c);
    }

    @SchedulerSupport(SchedulerSupport.CUSTOM)
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final j<T> w1(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new FlowableDebounceTimed(this, j4, timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> w2(w2.o<? super T, ? extends l3.b<? extends R>> oVar, w2.o<Throwable, ? extends l3.b<? extends R>> oVar2, Callable<? extends l3.b<? extends R>> callable, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "onNextMapper is null");
        io.reactivex.internal.functions.a.g(oVar2, "onErrorMapper is null");
        io.reactivex.internal.functions.a.g(callable, "onCompleteSupplier is null");
        return N3(new FlowableMapNotification(this, oVar, oVar2, callable), i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final j<T> w4() {
        return io.reactivex.plugins.a.P(new FlowableOnBackpressureLatest(this));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <U> j<T> w5(l3.b<U> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "sampler is null");
        return io.reactivex.plugins.a.P(new FlowableSamplePublisher(this, bVar, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final <R> j<R> w6(@NonNull w2.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new FlowableSwitchMapSingle(this, oVar, true));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.PASS_THROUGH)
    @CheckReturnValue
    public final j<io.reactivex.schedulers.d<T>> w7(TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
        return (j<io.reactivex.schedulers.d<T>>) H3(Functions.w(timeUnit, h0Var));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    public final void x(w2.g<? super T> gVar, int i2) {
        io.reactivex.internal.operators.flowable.h.d(this, gVar, Functions.f65827f, Functions.f65824c, i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <U> j<T> x1(w2.o<? super T, ? extends l3.b<U>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "debounceIndicator is null");
        return io.reactivex.plugins.a.P(new FlowableDebounce(this, oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> x2(w2.o<? super T, ? extends l3.b<? extends R>> oVar, boolean z3) {
        return z2(oVar, z3, V(), V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> x4(l3.b<? extends T> bVar) {
        io.reactivex.internal.functions.a.g(bVar, "next is null");
        return y4(Functions.n(bVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.ERROR)
    @CheckReturnValue
    public final <U> j<T> x5(l3.b<U> bVar, boolean z3) {
        io.reactivex.internal.functions.a.g(bVar, "sampler is null");
        return io.reactivex.plugins.a.P(new FlowableSamplePublisher(this, bVar, z3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @CheckReturnValue
    public final <R> R x7(w2.o<? super j<T>, R> oVar) {
        try {
            return (R) ((w2.o) io.reactivex.internal.functions.a.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.e(th);
        }
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    public final void y(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2) {
        io.reactivex.internal.operators.flowable.h.c(this, gVar, gVar2, Functions.f65824c);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> y1(T t3) {
        io.reactivex.internal.functions.a.g(t3, "item is null");
        return l6(s3(t3));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> y2(w2.o<? super T, ? extends l3.b<? extends R>> oVar, boolean z3, int i2) {
        return z2(oVar, z3, i2, V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> y4(w2.o<? super Throwable, ? extends l3.b<? extends T>> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "resumeFunction is null");
        return io.reactivex.plugins.a.P(new FlowableOnErrorNext(this, oVar, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> y5(R r3, w2.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.a.g(r3, "seed is null");
        return A5(Functions.m(r3), cVar);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final Future<T> y7() {
        return (Future) k6(new io.reactivex.internal.subscribers.f());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    public final void z(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, int i2) {
        io.reactivex.internal.operators.flowable.h.d(this, gVar, gVar2, Functions.f65824c, i2);
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final <R> j<R> z2(w2.o<? super T, ? extends l3.b<? extends R>> oVar, boolean z3, int i2, int i4) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "bufferSize");
        if (this instanceof x2.m) {
            Object call = ((x2.m) this).call();
            if (call == null) {
                return h2();
            }
            return w0.a(call, oVar);
        }
        return io.reactivex.plugins.a.P(new FlowableFlatMap(this, oVar, z3, i2, i4));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> z4(w2.o<? super Throwable, ? extends T> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "valueSupplier is null");
        return io.reactivex.plugins.a.P(new FlowableOnErrorReturn(this, oVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> z5(w2.c<T, T, T> cVar) {
        io.reactivex.internal.functions.a.g(cVar, "accumulator is null");
        return io.reactivex.plugins.a.P(new x0(this, cVar));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @CheckReturnValue
    public final i0<List<T>> z7() {
        return io.reactivex.plugins.a.S(new i1(this));
    }
}
