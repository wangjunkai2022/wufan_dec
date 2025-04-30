package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Limit.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1", f = "Limit.kt", i = {0}, l = {154}, m = "invokeSuspend", n = {"collector$iv"}, s = {"L$0"})
/* loaded from: classes5.dex */
public final class FlowKt__LimitKt$transformWhile$1<R> extends SuspendLambda implements Function2<g<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71525a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71526b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f<T> f71527c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function3<g<? super R>, T, Continuation<? super Boolean>, Object> f71528d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__LimitKt$transformWhile$1(f<? extends T> fVar, Function3<? super g<? super R>, ? super T, ? super Continuation<? super Boolean>, ? extends Object> function3, Continuation<? super FlowKt__LimitKt$transformWhile$1> continuation) {
        super(2, continuation);
        this.f71527c = fVar;
        this.f71528d = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__LimitKt$transformWhile$1 flowKt__LimitKt$transformWhile$1 = new FlowKt__LimitKt$transformWhile$1(this.f71527c, this.f71528d, continuation);
        flowKt__LimitKt$transformWhile$1.f71526b = obj;
        return flowKt__LimitKt$transformWhile$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull g<? super R> gVar, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__LimitKt$transformWhile$1) create(gVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71525a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            f<T> fVar = this.f71527c;
            FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12 = new FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1(this.f71528d, (g) this.f71526b);
            try {
                this.f71526b = flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12;
                this.f71525a = 1;
                if (fVar.e(flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (AbortFlowException e4) {
                e = e4;
                flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 = flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12;
                kotlinx.coroutines.flow.internal.h.b(e, flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1);
                return Unit.INSTANCE;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 = (FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1) this.f71526b;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e5) {
                e = e5;
                kotlinx.coroutines.flow.internal.h.b(e, flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1);
                return Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }
}
