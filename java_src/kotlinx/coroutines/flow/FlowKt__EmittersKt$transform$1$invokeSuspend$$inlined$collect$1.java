package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Collect.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1<T> implements g<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function3 f71403a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ g f71404b;

    public FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1(Function3 function3, g gVar) {
        this.f71403a = function3;
        this.f71404b = gVar;
    }

    @Nullable
    public Object a(Object obj, @NotNull Continuation continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: kotlinx.coroutines.flow.FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1.1

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f71405a;

            /* renamed from: b  reason: collision with root package name */
            int f71406b;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj2) {
                this.f71405a = obj2;
                this.f71406b |= Integer.MIN_VALUE;
                return FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1.this.emit(null, this);
            }
        };
        InlineMarker.mark(5);
        this.f71403a.invoke(this.f71404b, obj, continuation);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.g
    @Nullable
    public Object emit(T t3, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object invoke = this.f71403a.invoke(this.f71404b, t3, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return invoke == coroutine_suspended ? invoke : Unit.INSTANCE;
    }
}
