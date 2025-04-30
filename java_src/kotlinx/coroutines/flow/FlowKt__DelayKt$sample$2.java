package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Delay.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "Lkotlinx/coroutines/flow/g;", "downstream", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", i = {0, 0, 0, 0}, l = {355}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "ticker"}, s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes5.dex */
public final class FlowKt__DelayKt$sample$2<T> extends SuspendLambda implements Function3<t0, g<? super T>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f71358a;

    /* renamed from: b  reason: collision with root package name */
    Object f71359b;

    /* renamed from: c  reason: collision with root package name */
    int f71360c;

    /* renamed from: d  reason: collision with root package name */
    private /* synthetic */ Object f71361d;

    /* renamed from: e  reason: collision with root package name */
    /* synthetic */ Object f71362e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ long f71363f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ f<T> f71364g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$sample$2(long j4, f<? extends T> fVar, Continuation<? super FlowKt__DelayKt$sample$2> continuation) {
        super(3, continuation);
        this.f71363f = j4;
        this.f71364g = fVar;
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @NotNull g<? super T> gVar, @Nullable Continuation<? super Unit> continuation) {
        FlowKt__DelayKt$sample$2 flowKt__DelayKt$sample$2 = new FlowKt__DelayKt$sample$2(this.f71363f, this.f71364g, continuation);
        flowKt__DelayKt$sample$2.f71361d = t0Var;
        flowKt__DelayKt$sample$2.f71362e = gVar;
        return flowKt__DelayKt$sample$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        ReceiveChannel g4;
        g gVar;
        ReceiveChannel receiveChannel;
        Ref.ObjectRef objectRef;
        ReceiveChannel receiveChannel2;
        Object coroutine_suspended2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71360c;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            t0 t0Var = (t0) this.f71361d;
            ReceiveChannel f4 = ProduceKt.f(t0Var, null, -1, new FlowKt__DelayKt$sample$2$values$1(this.f71364g, null), 1, null);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            g4 = FlowKt__DelayKt.g(t0Var, this.f71363f, 0L, 2, null);
            gVar = (g) this.f71362e;
            receiveChannel = f4;
            objectRef = objectRef2;
            receiveChannel2 = g4;
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            receiveChannel2 = (ReceiveChannel) this.f71359b;
            objectRef = (Ref.ObjectRef) this.f71358a;
            receiveChannel = (ReceiveChannel) this.f71362e;
            gVar = (g) this.f71361d;
            ResultKt.throwOnFailure(obj);
        }
        while (objectRef.element != kotlinx.coroutines.flow.internal.m.f72086c) {
            this.f71361d = gVar;
            this.f71362e = receiveChannel;
            this.f71358a = objectRef;
            this.f71359b = receiveChannel2;
            this.f71360c = 1;
            kotlinx.coroutines.selects.b bVar = new kotlinx.coroutines.selects.b(this);
            try {
                bVar.u(receiveChannel.G(), new FlowKt__DelayKt$sample$2$1$1(objectRef, receiveChannel2, null));
                bVar.u(receiveChannel2.F(), new FlowKt__DelayKt$sample$2$1$2(objectRef, gVar, null));
            } catch (Throwable th) {
                bVar.m0(th);
            }
            Object l02 = bVar.l0();
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (l02 == coroutine_suspended2) {
                DebugProbesKt.probeCoroutineSuspended(this);
                continue;
            }
            if (l02 == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
