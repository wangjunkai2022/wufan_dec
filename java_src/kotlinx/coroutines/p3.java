package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Yield.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u0013\u0010\u0001\u001a\u00020\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0001\u0010\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0003"}, d2 = {"", "a", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class p3 {
    @Nullable
    public static final Object a(@NotNull Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        CoroutineContext context = continuation.getContext();
        f2.A(context);
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.internal.j jVar = intercepted instanceof kotlinx.coroutines.internal.j ? (kotlinx.coroutines.internal.j) intercepted : null;
        if (jVar == null) {
            coroutine_suspended = Unit.INSTANCE;
        } else {
            if (jVar.f72182d.isDispatchNeeded(context)) {
                jVar.m(context, Unit.INSTANCE);
            } else {
                o3 o3Var = new o3();
                CoroutineContext plus = context.plus(o3Var);
                Unit unit = Unit.INSTANCE;
                jVar.m(plus, unit);
                if (o3Var.f72303a) {
                    coroutine_suspended = kotlinx.coroutines.internal.k.h(jVar) ? IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() : unit;
                }
            }
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == coroutine_suspended2) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return coroutine_suspended == coroutine_suspended3 ? coroutine_suspended : Unit.INSTANCE;
    }
}
