package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.Duration;
import kotlin.time.ExperimentalTime;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Delay.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0013\u0010\u0001\u001a\u00020\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u001b\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a!\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0087@ø\u0001\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\n\u0010\u0007\u001a\u0019\u0010\u000b\u001a\u00020\u0003*\u00020\bH\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\f\"\u001a\u0010\u0011\u001a\u00020\u000e*\u00020\r8@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0012"}, d2 = {"", "a", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "timeMillis", "", "b", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/time/Duration;", "duration", ai.aD, "e", "(J)J", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/b1;", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/b1;", "delay", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class DelayKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<?> r4) {
        /*
            boolean r0 = r4 instanceof kotlinx.coroutines.DelayKt$awaitCancellation$1
            if (r0 == 0) goto L13
            r0 = r4
            kotlinx.coroutines.DelayKt$awaitCancellation$1 r0 = (kotlinx.coroutines.DelayKt$awaitCancellation$1) r0
            int r1 = r0.f70711b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f70711b = r1
            goto L18
        L13:
            kotlinx.coroutines.DelayKt$awaitCancellation$1 r0 = new kotlinx.coroutines.DelayKt$awaitCancellation$1
            r0.<init>(r4)
        L18:
            java.lang.Object r4 = r0.f70710a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f70711b
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r0)
            throw r4
        L2d:
            kotlin.ResultKt.throwOnFailure(r4)
            goto L52
        L31:
            kotlin.ResultKt.throwOnFailure(r4)
            r0.f70711b = r3
            kotlinx.coroutines.q r4 = new kotlinx.coroutines.q
            kotlin.coroutines.Continuation r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)
            r4.<init>(r2, r3)
            r4.N()
            java.lang.Object r4 = r4.x()
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r2) goto L4f
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L4f:
            if (r4 != r1) goto L52
            return r1
        L52:
            kotlin.KotlinNothingValueException r4 = new kotlin.KotlinNothingValueException
            r4.<init>()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DelayKt.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Nullable
    public static final Object b(long j4, @NotNull Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        if (j4 <= 0) {
            return Unit.INSTANCE;
        }
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        q qVar = new q(intercepted, 1);
        qVar.N();
        if (j4 < Long.MAX_VALUE) {
            d(qVar.getContext()).g(j4, qVar);
        }
        Object x3 = qVar.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return x3 == coroutine_suspended2 ? x3 : Unit.INSTANCE;
    }

    @ExperimentalTime
    @Nullable
    public static final Object c(long j4, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object b4 = b(e(j4), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return b4 == coroutine_suspended ? b4 : Unit.INSTANCE;
    }

    @NotNull
    public static final b1 d(@NotNull CoroutineContext coroutineContext) {
        CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor.Key);
        b1 b1Var = element instanceof b1 ? (b1) element : null;
        return b1Var == null ? y0.a() : b1Var;
    }

    @ExperimentalTime
    public static final long e(long j4) {
        long coerceAtLeast;
        if (Duration.m1319compareToLRDsOJo(j4, Duration.Companion.m1381getZEROUwyO8pc()) > 0) {
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(Duration.m1338getInWholeMillisecondsimpl(j4), 1L);
            return coerceAtLeast;
        }
        return 0L;
    }
}
