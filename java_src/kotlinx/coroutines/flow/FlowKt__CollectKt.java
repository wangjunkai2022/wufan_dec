package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Collect.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001b\u0010\u0002\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001e\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0006\u001a\u00020\u0005\u001aX\u0010\u0010\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u000023\b\u0004\u0010\u000f\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\tH\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001am\u0010\u0015\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u00002H\b\u0004\u0010\u000f\u001aB\b\u0001\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0012H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001aV\u0010\u0017\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u000021\u0010\u000f\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\tH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0011\u001a1\u0010\u001a\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/flow/f;", "", "a", "(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "T", "Lkotlinx/coroutines/t0;", "scope", "Lkotlinx/coroutines/c2;", "h", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "value", "Lkotlin/coroutines/Continuation;", "", "action", "b", "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function3;", "", "index", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "f", "Lkotlinx/coroutines/flow/g;", "flow", com.sdk.a.g.f56552a, "(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes5.dex */
public final /* synthetic */ class FlowKt__CollectKt {
    @Nullable
    public static final Object a(@NotNull f<?> fVar, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object e4 = fVar.e(kotlinx.coroutines.flow.internal.l.f72083a, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    @Nullable
    public static final <T> Object b(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object e4 = fVar.e(new FlowKt__CollectKt$collect$3(function2), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    private static final <T> Object c(f<? extends T> fVar, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        FlowKt__CollectKt$collect$3 flowKt__CollectKt$collect$3 = new FlowKt__CollectKt$collect$3(function2);
        InlineMarker.mark(0);
        fVar.e(flowKt__CollectKt$collect$3, continuation);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }

    @Nullable
    public static final <T> Object d(@NotNull f<? extends T> fVar, @NotNull Function3<? super Integer, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object e4 = fVar.e(new FlowKt__CollectKt$collectIndexed$2(function3), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    private static final <T> Object e(f<? extends T> fVar, Function3<? super Integer, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super Unit> continuation) {
        FlowKt__CollectKt$collectIndexed$2 flowKt__CollectKt$collectIndexed$2 = new FlowKt__CollectKt$collectIndexed$2(function3);
        InlineMarker.mark(0);
        fVar.e(flowKt__CollectKt$collectIndexed$2, continuation);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }

    @Nullable
    public static final <T> Object f(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, @NotNull Continuation<? super Unit> continuation) {
        f d4;
        Object coroutine_suspended;
        d4 = i.d(h.c1(fVar, function2), 0, null, 2, null);
        Object z3 = h.z(d4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return z3 == coroutine_suspended ? z3 : Unit.INSTANCE;
    }

    @Nullable
    public static final <T> Object g(@NotNull g<? super T> gVar, @NotNull f<? extends T> fVar, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        h.q0(gVar);
        Object e4 = fVar.e(gVar, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    @NotNull
    public static final <T> c2 h(@NotNull f<? extends T> fVar, @NotNull t0 t0Var) {
        c2 f4;
        f4 = kotlinx.coroutines.k.f(t0Var, null, null, new FlowKt__CollectKt$launchIn$1(fVar, null), 3, null);
        return f4;
    }
}
