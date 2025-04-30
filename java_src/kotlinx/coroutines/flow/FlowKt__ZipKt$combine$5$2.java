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
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [R, T] */
/* compiled from: Zip.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$5$2", f = "Zip.kt", i = {}, l = {238, 238}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__ZipKt$combine$5$2<R, T> extends SuspendLambda implements Function3<g<? super R>, T[], Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71838a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71839b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71840c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function2<T[], Continuation<? super R>, Object> f71841d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ZipKt$combine$5$2(Function2<? super T[], ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super FlowKt__ZipKt$combine$5$2> continuation) {
        super(3, continuation);
        this.f71841d = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull g<? super R> gVar, @NotNull T[] tArr, @Nullable Continuation<? super Unit> continuation) {
        FlowKt__ZipKt$combine$5$2 flowKt__ZipKt$combine$5$2 = new FlowKt__ZipKt$combine$5$2(this.f71841d, continuation);
        flowKt__ZipKt$combine$5$2.f71839b = gVar;
        flowKt__ZipKt$combine$5$2.f71840c = tArr;
        return flowKt__ZipKt$combine$5$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        g gVar;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71838a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            g gVar2 = (g) this.f71839b;
            Function2<T[], Continuation<? super R>, Object> function2 = this.f71841d;
            this.f71839b = gVar2;
            this.f71838a = 1;
            obj = function2.invoke((Object[]) this.f71840c, this);
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
            gVar = (g) this.f71839b;
        }
        this.f71839b = null;
        this.f71838a = 2;
        if (gVar.emit(obj, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Object invokeSuspend$$forInline(@NotNull Object obj) {
        Object invoke = this.f71841d.invoke((Object[]) this.f71840c, this);
        InlineMarker.mark(0);
        ((g) this.f71839b).emit(invoke, this);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
