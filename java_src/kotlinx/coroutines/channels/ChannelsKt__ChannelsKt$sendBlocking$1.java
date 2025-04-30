package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channels.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"E", "Lkotlinx/coroutines/t0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$sendBlocking$1", f = "Channels.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class ChannelsKt__ChannelsKt$sendBlocking$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f70797a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b0<E> f70798b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ E f70799c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__ChannelsKt$sendBlocking$1(b0<? super E> b0Var, E e4, Continuation<? super ChannelsKt__ChannelsKt$sendBlocking$1> continuation) {
        super(2, continuation);
        this.f70798b = b0Var;
        this.f70799c = e4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ChannelsKt__ChannelsKt$sendBlocking$1(this.f70798b, this.f70799c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelsKt__ChannelsKt$sendBlocking$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f70797a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            b0<E> b0Var = this.f70798b;
            E e4 = this.f70799c;
            this.f70797a = 1;
            if (b0Var.R(e4, this) == coroutine_suspended) {
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
