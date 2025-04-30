package kotlinx.coroutines.flow.internal;

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
/* compiled from: Merge.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1", f = "Merge.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class ChannelFlowMerge$collectTo$2$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71965a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.f<T> f71966b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ n<T> f71967c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.sync.d f71968d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowMerge$collectTo$2$1(kotlinx.coroutines.flow.f<? extends T> fVar, n<T> nVar, kotlinx.coroutines.sync.d dVar, Continuation<? super ChannelFlowMerge$collectTo$2$1> continuation) {
        super(2, continuation);
        this.f71966b = fVar;
        this.f71967c = nVar;
        this.f71968d = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ChannelFlowMerge$collectTo$2$1(this.f71966b, this.f71967c, this.f71968d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((ChannelFlowMerge$collectTo$2$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71965a;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.f<T> fVar = this.f71966b;
                kotlinx.coroutines.flow.g gVar = this.f71967c;
                this.f71965a = 1;
                if (fVar.e(gVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            this.f71968d.release();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            this.f71968d.release();
            throw th;
        }
    }
}
