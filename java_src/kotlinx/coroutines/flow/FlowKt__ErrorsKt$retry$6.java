package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Errors.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0007\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/flow/g;", "", "cause", "", "attempt", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$6", f = "Errors.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__ErrorsKt$retry$6<T> extends SuspendLambda implements Function4<g<? super T>, Throwable, Long, Continuation<? super Boolean>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71466a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f71467b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ long f71468c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function1<Throwable, Boolean> f71469d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ int f71470e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ErrorsKt$retry$6(Function1<? super Throwable, Boolean> function1, int i2, Continuation<? super FlowKt__ErrorsKt$retry$6> continuation) {
        super(4, continuation);
        this.f71469d = function1;
        this.f71470e = i2;
    }

    @Nullable
    public final Object e(@NotNull g<? super T> gVar, @NotNull Throwable th, long j4, @Nullable Continuation<? super Boolean> continuation) {
        FlowKt__ErrorsKt$retry$6 flowKt__ErrorsKt$retry$6 = new FlowKt__ErrorsKt$retry$6(this.f71469d, this.f71470e, continuation);
        flowKt__ErrorsKt$retry$6.f71467b = th;
        flowKt__ErrorsKt$retry$6.f71468c = j4;
        return flowKt__ErrorsKt$retry$6.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Throwable th, Long l4, Continuation<? super Boolean> continuation) {
        return e((g) obj, th, l4.longValue(), continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.f71466a == 0) {
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(this.f71469d.invoke((Throwable) this.f71467b).booleanValue() && this.f71468c < ((long) this.f71470e));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
