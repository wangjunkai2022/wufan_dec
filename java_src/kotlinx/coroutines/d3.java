package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Supervisor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0012\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000\u001a\u001b\u0010\u0004\u001a\u00020\u00002\n\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001aO\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00062'\u0010\f\u001a#\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007¢\u0006\u0002\b\u000bH\u0086@ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/c2;", "parent", "Lkotlinx/coroutines/f0;", "a", "b", "(Lkotlinx/coroutines/c2;)Lkotlinx/coroutines/c2;", "R", "Lkotlin/Function2;", "Lkotlinx/coroutines/t0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "e", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class d3 {
    @NotNull
    public static final f0 a(@Nullable c2 c2Var) {
        return new c3(c2Var);
    }

    public static /* synthetic */ f0 c(c2 c2Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            c2Var = null;
        }
        return a(c2Var);
    }

    public static /* synthetic */ c2 d(c2 c2Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            c2Var = null;
        }
        return a(c2Var);
    }

    @Nullable
    public static final <R> Object e(@NotNull Function2<? super t0, ? super Continuation<? super R>, ? extends Object> function2, @NotNull Continuation<? super R> continuation) {
        Object coroutine_suspended;
        b3 b3Var = new b3(continuation.getContext(), continuation);
        Object f4 = b3.b.f(b3Var, b3Var, function2);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (f4 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return f4;
    }
}
