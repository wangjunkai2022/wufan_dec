package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Collect.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collectIndexed$2", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "a", "I", "index", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FlowKt__CollectKt$collectIndexed$2<T> implements g<T> {

    /* renamed from: a  reason: collision with root package name */
    private int f71309a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Function3<Integer, T, Continuation<? super Unit>, Object> f71310b;

    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__CollectKt$collectIndexed$2(Function3<? super Integer, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        this.f71310b = function3;
    }

    @Nullable
    public Object a(T t3, @NotNull final Continuation<? super Unit> continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: kotlinx.coroutines.flow.FlowKt__CollectKt$collectIndexed$2$emit$1

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f71311a;

            /* renamed from: c  reason: collision with root package name */
            int f71313c;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f71311a = obj;
                this.f71313c |= Integer.MIN_VALUE;
                return FlowKt__CollectKt$collectIndexed$2.this.emit(null, this);
            }
        };
        InlineMarker.mark(5);
        Function3<Integer, T, Continuation<? super Unit>, Object> function3 = this.f71310b;
        int i2 = this.f71309a;
        this.f71309a = i2 + 1;
        if (i2 >= 0) {
            function3.invoke(Integer.valueOf(i2), t3, continuation);
            return Unit.INSTANCE;
        }
        throw new ArithmeticException("Index overflow has happened");
    }

    @Override // kotlinx.coroutines.flow.g
    @Nullable
    public Object emit(T t3, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Function3<Integer, T, Continuation<? super Unit>, Object> function3 = this.f71310b;
        int i2 = this.f71309a;
        this.f71309a = i2 + 1;
        if (i2 >= 0) {
            Object invoke = function3.invoke(Boxing.boxInt(i2), t3, continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return invoke == coroutine_suspended ? invoke : Unit.INSTANCE;
        }
        throw new ArithmeticException("Index overflow has happened");
    }
}
