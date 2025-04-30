package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Builders.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\u001aQ\u0010\f\u001a\u00020\u000b*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00032'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a]\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\u0004\b\u0000\u0010\u000e*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00032'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001aW\u0010\u0012\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000e2\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tH\u0086@ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\u0012\u0010\u0013\u001aH\u0010\u0015\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000e*\u00020\u00142)\b\b\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tH\u0086Jø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\"\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0018\"\u0016\u0010\u001b\u001a\u00020\u00178\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018\"\u0016\u0010\u001c\u001a\u00020\u00178\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/t0;", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/CoroutineStart;", "start", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/c2;", "e", "(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/c2;", "T", "Lkotlinx/coroutines/z0;", "a", "(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/z0;", com.sdk.a.g.f56552a, "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/CoroutineDispatcher;", ai.aD, "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "I", "UNDECIDED", "b", kotlinx.coroutines.debug.internal.c.f71186c, "RESUMED", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/BuildersKt")
/* loaded from: classes5.dex */
public final /* synthetic */ class k {

    /* renamed from: a */
    private static final int f72270a = 0;

    /* renamed from: b */
    private static final int f72271b = 1;

    /* renamed from: c */
    private static final int f72272c = 2;

    @NotNull
    public static final <T> z0<T> a(@NotNull t0 t0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super t0, ? super Continuation<? super T>, ? extends Object> function2) {
        a1 a1Var;
        CoroutineContext d4 = o0.d(t0Var, coroutineContext);
        if (coroutineStart.isLazy()) {
            a1Var = new k2(d4, function2);
        } else {
            a1Var = new a1(d4, true);
        }
        ((a) a1Var).t1(coroutineStart, a1Var, function2);
        return a1Var;
    }

    public static /* synthetic */ z0 b(t0 t0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return i.a(t0Var, coroutineContext, coroutineStart, function2);
    }

    @Nullable
    public static final <T> Object c(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Function2<? super t0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return i.h(coroutineDispatcher, function2, continuation);
    }

    private static final <T> Object d(CoroutineDispatcher coroutineDispatcher, Function2<? super t0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        InlineMarker.mark(0);
        Object h4 = i.h(coroutineDispatcher, function2, continuation);
        InlineMarker.mark(1);
        return h4;
    }

    @NotNull
    public static final c2 e(@NotNull t0 t0Var, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super t0, ? super Continuation<? super Unit>, ? extends Object> function2) {
        a a3Var;
        CoroutineContext d4 = o0.d(t0Var, coroutineContext);
        if (coroutineStart.isLazy()) {
            a3Var = new l2(d4, function2);
        } else {
            a3Var = new a3(d4, true);
        }
        a3Var.t1(coroutineStart, a3Var, function2);
        return a3Var;
    }

    public static /* synthetic */ c2 f(t0 t0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return i.d(t0Var, coroutineContext, coroutineStart, function2);
    }

    @Nullable
    public static final <T> Object g(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super t0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        Object v12;
        Object coroutine_suspended;
        CoroutineContext context = continuation.getContext();
        CoroutineContext plus = context.plus(coroutineContext);
        f2.A(plus);
        if (plus == context) {
            kotlinx.coroutines.internal.e0 e0Var = new kotlinx.coroutines.internal.e0(plus, continuation);
            v12 = b3.b.f(e0Var, e0Var, function2);
        } else {
            ContinuationInterceptor.Key key = ContinuationInterceptor.Key;
            if (Intrinsics.areEqual(plus.get(key), context.get(key))) {
                m3 m3Var = new m3(plus, continuation);
                Object c4 = ThreadContextKt.c(plus, null);
                try {
                    Object f4 = b3.b.f(m3Var, m3Var, function2);
                    ThreadContextKt.a(plus, c4);
                    v12 = f4;
                } catch (Throwable th) {
                    ThreadContextKt.a(plus, c4);
                    throw th;
                }
            } else {
                c1 c1Var = new c1(plus, continuation);
                b3.a.g(function2, c1Var, c1Var, null, 4, null);
                v12 = c1Var.v1();
            }
        }
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (v12 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return v12;
    }
}
