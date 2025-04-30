package androidx.databinding;

import androidx.databinding.ViewDataBindingKtx;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.f;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewDataBindingKtx.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "androidx.databinding.ViewDataBindingKtx$StateFlowListener$startCollection$1", f = "ViewDataBindingKtx.kt", i = {}, l = {116}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class ViewDataBindingKtx$StateFlowListener$startCollection$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f5289a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ViewDataBindingKtx.StateFlowListener f5290b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f f5291c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewDataBindingKtx$StateFlowListener$startCollection$1(ViewDataBindingKtx.StateFlowListener stateFlowListener, f fVar, Continuation continuation) {
        super(2, continuation);
        this.f5290b = stateFlowListener;
        this.f5291c = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new ViewDataBindingKtx$StateFlowListener$startCollection$1(this.f5290b, this.f5291c, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((ViewDataBindingKtx$StateFlowListener$startCollection$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f5289a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            f fVar = this.f5291c;
            g<Object> gVar = new g<Object>() { // from class: androidx.databinding.ViewDataBindingKtx$StateFlowListener$startCollection$1$invokeSuspend$$inlined$collect$1
                @Override // kotlinx.coroutines.flow.g
                @Nullable
                public Object emit(Object obj2, @NotNull Continuation continuation) {
                    WeakListener weakListener;
                    Unit unit;
                    Object coroutine_suspended2;
                    WeakListener weakListener2;
                    WeakListener weakListener3;
                    weakListener = ViewDataBindingKtx$StateFlowListener$startCollection$1.this.f5290b.f5288c;
                    ViewDataBinding a4 = weakListener.a();
                    if (a4 != null) {
                        weakListener2 = ViewDataBindingKtx$StateFlowListener$startCollection$1.this.f5290b.f5288c;
                        int i4 = weakListener2.f5300b;
                        weakListener3 = ViewDataBindingKtx$StateFlowListener$startCollection$1.this.f5290b.f5288c;
                        a4.P(i4, weakListener3.getTarget(), 0);
                        unit = Unit.INSTANCE;
                    } else {
                        unit = null;
                    }
                    coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    return unit == coroutine_suspended2 ? unit : Unit.INSTANCE;
                }
            };
            this.f5289a = 1;
            if (fVar.e(gVar, this) == coroutine_suspended) {
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
