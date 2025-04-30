package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Builders.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/channels/w;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$flowViaChannel$1", f = "Builders.kt", i = {}, l = {216}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__BuildersKt$flowViaChannel$1<T> extends SuspendLambda implements Function2<kotlinx.coroutines.channels.w<? super T>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71292a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71293b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function2<t0, b0<? super T>, Unit> f71294c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__BuildersKt$flowViaChannel$1(Function2<? super t0, ? super b0<? super T>, Unit> function2, Continuation<? super FlowKt__BuildersKt$flowViaChannel$1> continuation) {
        super(2, continuation);
        this.f71294c = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__BuildersKt$flowViaChannel$1 flowKt__BuildersKt$flowViaChannel$1 = new FlowKt__BuildersKt$flowViaChannel$1(this.f71294c, continuation);
        flowKt__BuildersKt$flowViaChannel$1.f71293b = obj;
        return flowKt__BuildersKt$flowViaChannel$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull kotlinx.coroutines.channels.w<? super T> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__BuildersKt$flowViaChannel$1) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71292a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            kotlinx.coroutines.channels.w wVar = (kotlinx.coroutines.channels.w) this.f71293b;
            this.f71294c.invoke(wVar, wVar.getChannel());
            this.f71292a = 1;
            if (ProduceKt.b(wVar, null, this, 1, null) == coroutine_suspended) {
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
