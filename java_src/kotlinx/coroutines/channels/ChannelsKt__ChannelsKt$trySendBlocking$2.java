package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Result;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"E", "Lkotlinx/coroutines/t0;", "Lkotlinx/coroutines/channels/n;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2", f = "Channels.kt", i = {}, l = {92}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class ChannelsKt__ChannelsKt$trySendBlocking$2 extends SuspendLambda implements Function2<t0, Continuation<? super n<? extends Unit>>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f70800a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f70801b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ b0<E> f70802c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ E f70803d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__ChannelsKt$trySendBlocking$2(b0<? super E> b0Var, E e4, Continuation<? super ChannelsKt__ChannelsKt$trySendBlocking$2> continuation) {
        super(2, continuation);
        this.f70802c = b0Var;
        this.f70803d = e4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__ChannelsKt$trySendBlocking$2 channelsKt__ChannelsKt$trySendBlocking$2 = new ChannelsKt__ChannelsKt$trySendBlocking$2(this.f70802c, this.f70803d, continuation);
        channelsKt__ChannelsKt$trySendBlocking$2.f70801b = obj;
        return channelsKt__ChannelsKt$trySendBlocking$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super n<Unit>> continuation) {
        return ((ChannelsKt__ChannelsKt$trySendBlocking$2) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Object m24constructorimpl;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f70800a;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                t0 t0Var = (t0) this.f70801b;
                b0<E> b0Var = this.f70802c;
                E e4 = this.f70803d;
                Result.Companion companion = Result.Companion;
                this.f70800a = 1;
                if (b0Var.R(e4, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            m24constructorimpl = Result.m24constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th));
        }
        return n.b(Result.m31isSuccessimpl(m24constructorimpl) ? n.f71081b.c(Unit.INSTANCE) : n.f71081b.a(Result.m27exceptionOrNullimpl(m24constructorimpl)));
    }
}
