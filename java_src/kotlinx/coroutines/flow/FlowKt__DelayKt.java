package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.time.Duration;
import kotlin.time.ExperimentalTime;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.FlowCoroutineKt;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Delay.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a&\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u001a2\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00020\u0005H\u0007\u001a3\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\n\u001a<\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a9\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\f\u001a&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u000f\u001a\u00020\u0002H\u0007\u001a$\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u0002H\u0000\u001a3\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0017\u001a\u00020\u0007H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\n\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0019"}, d2 = {"T", "Lkotlinx/coroutines/flow/f;", "", "timeoutMillis", "a", "Lkotlin/Function1;", "b", "Lkotlin/time/Duration;", "timeout", ai.aD, "(Lkotlinx/coroutines/flow/f;J)Lkotlinx/coroutines/flow/f;", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/f;", "timeoutMillisSelector", "e", "periodMillis", "h", "Lkotlinx/coroutines/t0;", "delayMillis", "initialDelayMillis", "Lkotlinx/coroutines/channels/ReceiveChannel;", "", "f", "period", ai.aA, "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes5.dex */
public final /* synthetic */ class FlowKt__DelayKt {
    /* JADX WARN: Multi-variable type inference failed */
    @FlowPreview
    @NotNull
    public static final <T> f<T> a(@NotNull f<? extends T> fVar, final long j4) {
        if (j4 >= 0) {
            return j4 == 0 ? fVar : e(fVar, new Function1<T, Long>() { // from class: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                public final long a(T t3) {
                    return j4;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Long invoke(Object obj) {
                    return Long.valueOf(a(obj));
                }
            });
        }
        throw new IllegalArgumentException("Debounce timeout should not be negative".toString());
    }

    @FlowPreview
    @OverloadResolutionByLambdaReturnType
    @NotNull
    public static final <T> f<T> b(@NotNull f<? extends T> fVar, @NotNull Function1<? super T, Long> function1) {
        return e(fVar, function1);
    }

    @FlowPreview
    @ExperimentalTime
    @NotNull
    public static final <T> f<T> c(@NotNull f<? extends T> fVar, long j4) {
        return h.c0(fVar, DelayKt.e(j4));
    }

    @FlowPreview
    @JvmName(name = "debounceDuration")
    @NotNull
    @OverloadResolutionByLambdaReturnType
    @ExperimentalTime
    public static final <T> f<T> d(@NotNull f<? extends T> fVar, @NotNull final Function1<? super T, Duration> function1) {
        return e(fVar, new Function1<T, Long>() { // from class: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            public final long a(T t3) {
                return DelayKt.e(function1.invoke(t3).m1375unboximpl());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Long invoke(Object obj) {
                return Long.valueOf(a(obj));
            }
        });
    }

    private static final <T> f<T> e(f<? extends T> fVar, Function1<? super T, Long> function1) {
        return FlowCoroutineKt.d(new FlowKt__DelayKt$debounceInternal$1(function1, fVar, null));
    }

    @NotNull
    public static final ReceiveChannel<Unit> f(@NotNull t0 t0Var, long j4, long j5) {
        if (!(j4 >= 0)) {
            throw new IllegalArgumentException(("Expected non-negative delay, but has " + j4 + " ms").toString());
        }
        if (j5 >= 0) {
            return ProduceKt.f(t0Var, null, 0, new FlowKt__DelayKt$fixedPeriodTicker$3(j5, j4, null), 1, null);
        }
        throw new IllegalArgumentException(("Expected non-negative initial delay, but has " + j5 + " ms").toString());
    }

    public static /* synthetic */ ReceiveChannel g(t0 t0Var, long j4, long j5, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j5 = j4;
        }
        return h.z0(t0Var, j4, j5);
    }

    @FlowPreview
    @NotNull
    public static final <T> f<T> h(@NotNull f<? extends T> fVar, long j4) {
        if (j4 > 0) {
            return FlowCoroutineKt.d(new FlowKt__DelayKt$sample$2(j4, fVar, null));
        }
        throw new IllegalArgumentException("Sample period should be positive".toString());
    }

    @FlowPreview
    @ExperimentalTime
    @NotNull
    public static final <T> f<T> i(@NotNull f<? extends T> fVar, long j4) {
        return h.K1(fVar, DelayKt.e(j4));
    }
}
