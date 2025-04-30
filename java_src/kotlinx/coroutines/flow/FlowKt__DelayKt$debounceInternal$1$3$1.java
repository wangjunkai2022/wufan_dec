package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.internal.i0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Delay.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0000H\u008a@"}, d2 = {"T", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1", f = "Delay.kt", i = {}, l = {235}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class FlowKt__DelayKt$debounceInternal$1$3$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71342a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ g<T> f71343b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<Object> f71344c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$debounceInternal$1$3$1(g<? super T> gVar, Ref.ObjectRef<Object> objectRef, Continuation<? super FlowKt__DelayKt$debounceInternal$1$3$1> continuation) {
        super(1, continuation);
        this.f71343b = gVar;
        this.f71344c = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@NotNull Continuation<?> continuation) {
        return new FlowKt__DelayKt$debounceInternal$1$3$1(this.f71343b, this.f71344c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    @Nullable
    /* renamed from: e */
    public final Object invoke(@Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$debounceInternal$1$3$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71342a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            g<T> gVar = this.f71343b;
            i0 i0Var = kotlinx.coroutines.flow.internal.m.f72084a;
            Object obj2 = this.f71344c.element;
            if (obj2 == i0Var) {
                obj2 = null;
            }
            this.f71342a = 1;
            if (gVar.emit(obj2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        this.f71344c.element = null;
        return Unit.INSTANCE;
    }
}
