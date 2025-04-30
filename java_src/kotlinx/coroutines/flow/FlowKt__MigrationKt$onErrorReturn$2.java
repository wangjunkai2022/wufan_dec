package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Migration.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/flow/g;", "", "e", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$onErrorReturn$2", f = "Migration.kt", i = {}, l = {306}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__MigrationKt$onErrorReturn$2<T> extends SuspendLambda implements Function3<g<? super T>, Throwable, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71565a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71566b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71567c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function1<Throwable, Boolean> f71568d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ T f71569e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__MigrationKt$onErrorReturn$2(Function1<? super Throwable, Boolean> function1, T t3, Continuation<? super FlowKt__MigrationKt$onErrorReturn$2> continuation) {
        super(3, continuation);
        this.f71568d = function1;
        this.f71569e = t3;
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull g<? super T> gVar, @NotNull Throwable th, @Nullable Continuation<? super Unit> continuation) {
        FlowKt__MigrationKt$onErrorReturn$2 flowKt__MigrationKt$onErrorReturn$2 = new FlowKt__MigrationKt$onErrorReturn$2(this.f71568d, this.f71569e, continuation);
        flowKt__MigrationKt$onErrorReturn$2.f71566b = gVar;
        flowKt__MigrationKt$onErrorReturn$2.f71567c = th;
        return flowKt__MigrationKt$onErrorReturn$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71565a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            g gVar = (g) this.f71566b;
            Throwable th = (Throwable) this.f71567c;
            if (this.f71568d.invoke(th).booleanValue()) {
                T t3 = this.f71569e;
                this.f71566b = null;
                this.f71565a = 1;
                if (gVar.emit(t3, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                throw th;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
