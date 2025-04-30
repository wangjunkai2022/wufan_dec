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
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R, T] */
/* compiled from: Merge.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1", f = "Merge.kt", i = {}, l = {217, 217}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__MergeKt$mapLatest$1<R, T> extends SuspendLambda implements Function3<g<? super R>, T, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71552a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71553b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71554c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function2<T, Continuation<? super R>, Object> f71555d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__MergeKt$mapLatest$1(Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super FlowKt__MergeKt$mapLatest$1> continuation) {
        super(3, continuation);
        this.f71555d = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull g<? super R> gVar, T t3, @Nullable Continuation<? super Unit> continuation) {
        FlowKt__MergeKt$mapLatest$1 flowKt__MergeKt$mapLatest$1 = new FlowKt__MergeKt$mapLatest$1(this.f71555d, continuation);
        flowKt__MergeKt$mapLatest$1.f71553b = gVar;
        flowKt__MergeKt$mapLatest$1.f71554c = t3;
        return flowKt__MergeKt$mapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        g gVar;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71552a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            g gVar2 = (g) this.f71553b;
            Object obj2 = this.f71554c;
            this.f71553b = gVar2;
            this.f71552a = 1;
            obj = this.f71555d.invoke(obj2, this);
            gVar = gVar2;
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
            ResultKt.throwOnFailure(obj);
            gVar = (g) this.f71553b;
        }
        this.f71553b = null;
        this.f71552a = 2;
        if (gVar.emit(obj, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
