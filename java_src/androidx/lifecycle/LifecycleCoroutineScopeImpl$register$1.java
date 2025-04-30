package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.h2;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Lifecycle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "androidx.lifecycle.LifecycleCoroutineScopeImpl$register$1", f = "Lifecycle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class LifecycleCoroutineScopeImpl$register$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    private t0 f6237a;

    /* renamed from: b  reason: collision with root package name */
    int f6238b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ LifecycleCoroutineScopeImpl f6239c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LifecycleCoroutineScopeImpl$register$1(LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl, Continuation continuation) {
        super(2, continuation);
        this.f6239c = lifecycleCoroutineScopeImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        LifecycleCoroutineScopeImpl$register$1 lifecycleCoroutineScopeImpl$register$1 = new LifecycleCoroutineScopeImpl$register$1(this.f6239c, continuation);
        lifecycleCoroutineScopeImpl$register$1.f6237a = (t0) obj;
        return lifecycleCoroutineScopeImpl$register$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((LifecycleCoroutineScopeImpl$register$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.f6238b == 0) {
            ResultKt.throwOnFailure(obj);
            t0 t0Var = this.f6237a;
            if (this.f6239c.getLifecycle$lifecycle_runtime_ktx_release().getCurrentState().compareTo(Lifecycle.State.INITIALIZED) < 0) {
                h2.j(t0Var.getCoroutineContext(), null, 1, null);
            } else {
                this.f6239c.getLifecycle$lifecycle_runtime_ktx_release().addObserver(this.f6239c);
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
