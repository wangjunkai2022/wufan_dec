package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChannelFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", i = {}, l = {123}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class ChannelFlow$collect$2 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71947a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71948b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.g<T> f71949c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ChannelFlow<T> f71950d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlow$collect$2(kotlinx.coroutines.flow.g<? super T> gVar, ChannelFlow<T> channelFlow, Continuation<? super ChannelFlow$collect$2> continuation) {
        super(2, continuation);
        this.f71949c = gVar;
        this.f71950d = channelFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelFlow$collect$2 channelFlow$collect$2 = new ChannelFlow$collect$2(this.f71949c, this.f71950d, continuation);
        channelFlow$collect$2.f71948b = obj;
        return channelFlow$collect$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelFlow$collect$2) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71947a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            kotlinx.coroutines.flow.g<T> gVar = this.f71949c;
            ReceiveChannel n4 = this.f71950d.n((t0) this.f71948b);
            this.f71947a = 1;
            if (kotlinx.coroutines.flow.h.n0(gVar, n4, this) == coroutine_suspended) {
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
