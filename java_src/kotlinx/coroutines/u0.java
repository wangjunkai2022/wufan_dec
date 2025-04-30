package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineScope.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\u001a\u0015\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\u0002\u001a\u0006\u0010\u0004\u001a\u00020\u0000\u001aO\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00052'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006¢\u0006\u0002\b\tH\u0086@ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u000b\u0010\f\u001a\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u001c\u0010\u0012\u001a\u00020\u0011*\u00020\u00002\u0010\b\u0002\u0010\u0010\u001a\n\u0018\u00010\u000ej\u0004\u0018\u0001`\u000f\u001a\u001e\u0010\u0016\u001a\u00020\u0011*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00132\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0015\u001a\n\u0010\u0017\u001a\u00020\u0011*\u00020\u0000\u001a\u0013\u0010\u0018\u001a\u00020\u0001H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\"\u001d\u0010\u001f\u001a\u00020\u001a*\u00020\u00008F@\u0006¢\u0006\f\u0012\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lkotlinx/coroutines/t0;", "Lkotlin/coroutines/CoroutineContext;", "context", "m", "b", "R", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", com.sdk.a.g.f56552a, "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "", "message", "", ai.aD, "j", "h", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "k", "(Lkotlinx/coroutines/t0;)Z", "isActive$annotations", "(Lkotlinx/coroutines/t0;)V", "isActive", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class u0 {
    @NotNull
    public static final t0 a(@NotNull CoroutineContext coroutineContext) {
        f0 d4;
        if (coroutineContext.get(c2.Q) == null) {
            d4 = h2.d(null, 1, null);
            coroutineContext = coroutineContext.plus(d4);
        }
        return new kotlinx.coroutines.internal.i(coroutineContext);
    }

    @NotNull
    public static final t0 b() {
        return new kotlinx.coroutines.internal.i(d3.c(null, 1, null).plus(g1.e()));
    }

    public static final void c(@NotNull t0 t0Var, @NotNull String str, @Nullable Throwable th) {
        d(t0Var, s1.a(str, th));
    }

    public static final void d(@NotNull t0 t0Var, @Nullable CancellationException cancellationException) {
        c2 c2Var = (c2) t0Var.getCoroutineContext().get(c2.Q);
        if (c2Var != null) {
            c2Var.b(cancellationException);
            return;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Scope cannot be cancelled because it does not have a job: ", t0Var).toString());
    }

    public static /* synthetic */ void e(t0 t0Var, String str, Throwable th, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            th = null;
        }
        c(t0Var, str, th);
    }

    public static /* synthetic */ void f(t0 t0Var, CancellationException cancellationException, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            cancellationException = null;
        }
        d(t0Var, cancellationException);
    }

    @Nullable
    public static final <R> Object g(@NotNull Function2<? super t0, ? super Continuation<? super R>, ? extends Object> function2, @NotNull Continuation<? super R> continuation) {
        Object coroutine_suspended;
        kotlinx.coroutines.internal.e0 e0Var = new kotlinx.coroutines.internal.e0(continuation.getContext(), continuation);
        Object f4 = b3.b.f(e0Var, e0Var, function2);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (f4 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return f4;
    }

    @Nullable
    public static final Object h(@NotNull Continuation<? super CoroutineContext> continuation) {
        return continuation.getContext();
    }

    private static final Object i(Continuation<? super CoroutineContext> continuation) {
        InlineMarker.mark(3);
        throw null;
    }

    public static final void j(@NotNull t0 t0Var) {
        f2.A(t0Var.getCoroutineContext());
    }

    public static final boolean k(@NotNull t0 t0Var) {
        c2 c2Var = (c2) t0Var.getCoroutineContext().get(c2.Q);
        if (c2Var == null) {
            return true;
        }
        return c2Var.isActive();
    }

    public static /* synthetic */ void l(t0 t0Var) {
    }

    @NotNull
    public static final t0 m(@NotNull t0 t0Var, @NotNull CoroutineContext coroutineContext) {
        return new kotlinx.coroutines.internal.i(t0Var.getCoroutineContext().plus(coroutineContext));
    }
}
