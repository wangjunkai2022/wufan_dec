package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: ChannelFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {"S", "T", "Lkotlinx/coroutines/flow/g;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", f = "ChannelFlow.kt", i = {}, l = {152}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class ChannelFlowOperator$collectWithContextUndispatched$2<T> extends SuspendLambda implements Function2<kotlinx.coroutines.flow.g<? super T>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71970a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f71971b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ChannelFlowOperator<S, T> f71972c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowOperator$collectWithContextUndispatched$2(ChannelFlowOperator<S, T> channelFlowOperator, Continuation<? super ChannelFlowOperator$collectWithContextUndispatched$2> continuation) {
        super(2, continuation);
        this.f71972c = channelFlowOperator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelFlowOperator$collectWithContextUndispatched$2 channelFlowOperator$collectWithContextUndispatched$2 = new ChannelFlowOperator$collectWithContextUndispatched$2(this.f71972c, continuation);
        channelFlowOperator$collectWithContextUndispatched$2.f71971b = obj;
        return channelFlowOperator$collectWithContextUndispatched$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull kotlinx.coroutines.flow.g<? super T> gVar, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelFlowOperator$collectWithContextUndispatched$2) create(gVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71970a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            ChannelFlowOperator<S, T> channelFlowOperator = this.f71972c;
            this.f71970a = 1;
            if (channelFlowOperator.s((kotlinx.coroutines.flow.g) this.f71971b, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
