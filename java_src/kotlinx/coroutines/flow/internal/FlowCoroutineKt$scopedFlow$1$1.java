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
/* compiled from: FlowCoroutine.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"R", "Lkotlinx/coroutines/t0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$1$1", f = "FlowCoroutine.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class FlowCoroutineKt$scopedFlow$1$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f72050a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f72051b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function3<t0, kotlinx.coroutines.flow.g<? super R>, Continuation<? super Unit>, Object> f72052c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.g<R> f72053d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowCoroutineKt$scopedFlow$1$1(Function3<? super t0, ? super kotlinx.coroutines.flow.g<? super R>, ? super Continuation<? super Unit>, ? extends Object> function3, kotlinx.coroutines.flow.g<? super R> gVar, Continuation<? super FlowCoroutineKt$scopedFlow$1$1> continuation) {
        super(2, continuation);
        this.f72052c = function3;
        this.f72053d = gVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowCoroutineKt$scopedFlow$1$1 flowCoroutineKt$scopedFlow$1$1 = new FlowCoroutineKt$scopedFlow$1$1(this.f72052c, this.f72053d, continuation);
        flowCoroutineKt$scopedFlow$1$1.f72051b = obj;
        return flowCoroutineKt$scopedFlow$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowCoroutineKt$scopedFlow$1$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f72050a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Function3<t0, kotlinx.coroutines.flow.g<? super R>, Continuation<? super Unit>, Object> function3 = this.f72052c;
            Object obj2 = this.f72053d;
            this.f72050a = 1;
            if (function3.invoke((t0) this.f72051b, obj2, this) == coroutine_suspended) {
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
