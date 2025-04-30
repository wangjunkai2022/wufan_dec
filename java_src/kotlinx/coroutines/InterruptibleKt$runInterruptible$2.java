package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Interruptible.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2", f = "Interruptible.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class InterruptibleKt$runInterruptible$2<T> extends SuspendLambda implements Function2<t0, Continuation<? super T>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f70718a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f70719b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0<T> f70720c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public InterruptibleKt$runInterruptible$2(Function0<? extends T> function0, Continuation<? super InterruptibleKt$runInterruptible$2> continuation) {
        super(2, continuation);
        this.f70720c = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$2 = new InterruptibleKt$runInterruptible$2(this.f70720c, continuation);
        interruptibleKt$runInterruptible$2.f70719b = obj;
        return interruptibleKt$runInterruptible$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super T> continuation) {
        return ((InterruptibleKt$runInterruptible$2) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d4;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.f70718a == 0) {
            ResultKt.throwOnFailure(obj);
            d4 = InterruptibleKt.d(((t0) this.f70719b).getCoroutineContext(), this.f70720c);
            return d4;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
