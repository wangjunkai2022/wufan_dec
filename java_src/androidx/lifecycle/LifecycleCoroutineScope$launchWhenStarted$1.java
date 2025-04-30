package androidx.lifecycle;

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
/* compiled from: Lifecycle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/t0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenStarted$1", f = "Lifecycle.kt", i = {0}, l = {87}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
/* loaded from: classes.dex */
final class LifecycleCoroutineScope$launchWhenStarted$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    private t0 f6230a;

    /* renamed from: b  reason: collision with root package name */
    Object f6231b;

    /* renamed from: c  reason: collision with root package name */
    int f6232c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ LifecycleCoroutineScope f6233d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Function2 f6234e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LifecycleCoroutineScope$launchWhenStarted$1(LifecycleCoroutineScope lifecycleCoroutineScope, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f6233d = lifecycleCoroutineScope;
        this.f6234e = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        LifecycleCoroutineScope$launchWhenStarted$1 lifecycleCoroutineScope$launchWhenStarted$1 = new LifecycleCoroutineScope$launchWhenStarted$1(this.f6233d, this.f6234e, continuation);
        lifecycleCoroutineScope$launchWhenStarted$1.f6230a = (t0) obj;
        return lifecycleCoroutineScope$launchWhenStarted$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Continuation<? super Unit> continuation) {
        return ((LifecycleCoroutineScope$launchWhenStarted$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f6232c;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            t0 t0Var = this.f6230a;
            Lifecycle lifecycle$lifecycle_runtime_ktx_release = this.f6233d.getLifecycle$lifecycle_runtime_ktx_release();
            Function2 function2 = this.f6234e;
            this.f6231b = t0Var;
            this.f6232c = 1;
            if (PausingDispatcherKt.whenStarted(lifecycle$lifecycle_runtime_ktx_release, function2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            t0 t0Var2 = (t0) this.f6231b;
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
