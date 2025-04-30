package kotlinx.coroutines.flow;

import com.android.dx.io.Opcodes;
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
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Emitters.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/g;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$transform$1", f = "Emitters.kt", i = {}, l = {Opcodes.XOR_INT_LIT8}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__EmittersKt$transform$1<R> extends SuspendLambda implements Function2<g<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71423a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71424b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f<T> f71425c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function3<g<? super R>, T, Continuation<? super Unit>, Object> f71426d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__EmittersKt$transform$1(f<? extends T> fVar, Function3<? super g<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super FlowKt__EmittersKt$transform$1> continuation) {
        super(2, continuation);
        this.f71425c = fVar;
        this.f71426d = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__EmittersKt$transform$1 flowKt__EmittersKt$transform$1 = new FlowKt__EmittersKt$transform$1(this.f71425c, this.f71426d, continuation);
        flowKt__EmittersKt$transform$1.f71424b = obj;
        return flowKt__EmittersKt$transform$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull g<? super R> gVar, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__EmittersKt$transform$1) create(gVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71423a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            f<T> fVar = this.f71425c;
            FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1 flowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1 = new FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1(this.f71426d, (g) this.f71424b);
            this.f71423a = 1;
            if (fVar.e(flowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Nullable
    public final Object invokeSuspend$$forInline(@NotNull Object obj) {
        f<T> fVar = this.f71425c;
        FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1 flowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1 = new FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1(this.f71426d, (g) this.f71424b);
        InlineMarker.mark(0);
        fVar.e(flowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1, this);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
