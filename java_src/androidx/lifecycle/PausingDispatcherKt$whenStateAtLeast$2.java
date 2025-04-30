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
import kotlinx.coroutines.c2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: PausingDispatcher.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.kt", i = {0, 0, 0, 0}, l = {163}, m = "invokeSuspend", n = {"$this$withContext", "job", "dispatcher", "controller"}, s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes.dex */
final class PausingDispatcherKt$whenStateAtLeast$2<T> extends SuspendLambda implements Function2<t0, Continuation<? super T>, Object> {

    /* renamed from: a  reason: collision with root package name */
    private t0 f6270a;

    /* renamed from: b  reason: collision with root package name */
    Object f6271b;

    /* renamed from: c  reason: collision with root package name */
    Object f6272c;

    /* renamed from: d  reason: collision with root package name */
    Object f6273d;

    /* renamed from: e  reason: collision with root package name */
    Object f6274e;

    /* renamed from: f  reason: collision with root package name */
    int f6275f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Lifecycle f6276g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ Lifecycle.State f6277h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function2 f6278i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PausingDispatcherKt$whenStateAtLeast$2(Lifecycle lifecycle, Lifecycle.State state, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f6276g = lifecycle;
        this.f6277h = state;
        this.f6278i = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        PausingDispatcherKt$whenStateAtLeast$2 pausingDispatcherKt$whenStateAtLeast$2 = new PausingDispatcherKt$whenStateAtLeast$2(this.f6276g, this.f6277h, this.f6278i, continuation);
        pausingDispatcherKt$whenStateAtLeast$2.f6270a = (t0) obj;
        return pausingDispatcherKt$whenStateAtLeast$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(t0 t0Var, Object obj) {
        return ((PausingDispatcherKt$whenStateAtLeast$2) create(t0Var, (Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        LifecycleController lifecycleController;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f6275f;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            t0 t0Var = this.f6270a;
            c2 c2Var = (c2) t0Var.getCoroutineContext().get(c2.Q);
            if (c2Var != null) {
                PausingDispatcher pausingDispatcher = new PausingDispatcher();
                LifecycleController lifecycleController2 = new LifecycleController(this.f6276g, this.f6277h, pausingDispatcher.dispatchQueue, c2Var);
                try {
                    Function2 function2 = this.f6278i;
                    this.f6271b = t0Var;
                    this.f6272c = c2Var;
                    this.f6273d = pausingDispatcher;
                    this.f6274e = lifecycleController2;
                    this.f6275f = 1;
                    obj = i.h(pausingDispatcher, function2, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    lifecycleController = lifecycleController2;
                } catch (Throwable th) {
                    th = th;
                    lifecycleController = lifecycleController2;
                    lifecycleController.finish();
                    throw th;
                }
            } else {
                throw new IllegalStateException("when[State] methods should have a parent job".toString());
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            lifecycleController = (LifecycleController) this.f6274e;
            PausingDispatcher pausingDispatcher2 = (PausingDispatcher) this.f6273d;
            c2 c2Var2 = (c2) this.f6272c;
            t0 t0Var2 = (t0) this.f6271b;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable th2) {
                th = th2;
                lifecycleController.finish();
                throw th;
            }
        }
        lifecycleController.finish();
        return obj;
    }
}
