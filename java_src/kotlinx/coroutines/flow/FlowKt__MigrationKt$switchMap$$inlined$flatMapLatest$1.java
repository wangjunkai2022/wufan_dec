package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [R, T] */
/* compiled from: Merge.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@¨\u0006\u0005"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "it", "", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1", f = "Migration.kt", i = {}, l = {193, 193}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1<R, T> extends SuspendLambda implements Function3<g<? super R>, T, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71556a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71557b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71558c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function2 f71559d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1(Function2 function2, Continuation continuation) {
        super(3, continuation);
        this.f71559d = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull g<? super R> gVar, T t3, @Nullable Continuation<? super Unit> continuation) {
        FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 = new FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1(this.f71559d, continuation);
        flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.f71557b = gVar;
        flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.f71558c = t3;
        return flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        g gVar;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71556a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            gVar = (g) this.f71557b;
            Object obj2 = this.f71558c;
            Function2 function2 = this.f71559d;
            this.f71557b = gVar;
            this.f71556a = 1;
            obj = function2.invoke(obj2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            gVar = (g) this.f71557b;
            ResultKt.throwOnFailure(obj);
        }
        this.f71557b = null;
        this.f71556a = 2;
        if (h.o0(gVar, (f) obj, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
