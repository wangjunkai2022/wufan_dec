package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Merge.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/t0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", i = {}, l = {34}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class ChannelFlowTransformLatest$flowCollect$3$1$2 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71988a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ChannelFlowTransformLatest<T, R> f71989b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.g<R> f71990c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ T f71991d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowTransformLatest$flowCollect$3$1$2(ChannelFlowTransformLatest<T, R> channelFlowTransformLatest, kotlinx.coroutines.flow.g<? super R> gVar, T t3, Continuation<? super ChannelFlowTransformLatest$flowCollect$3$1$2> continuation) {
        super(2, continuation);
        this.f71989b = channelFlowTransformLatest;
        this.f71990c = gVar;
        this.f71991d = t3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ChannelFlowTransformLatest$flowCollect$3$1$2(this.f71989b, this.f71990c, this.f71991d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelFlowTransformLatest$flowCollect$3$1$2) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Function3 function3;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71988a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            function3 = ((ChannelFlowTransformLatest) this.f71989b).f71973e;
            Object obj2 = this.f71990c;
            T t3 = this.f71991d;
            this.f71988a = 1;
            if (function3.invoke(obj2, t3, this) == coroutine_suspended) {
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
