package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.n;
import kotlinx.coroutines.flow.internal.ChildCancelledException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Delay.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/channels/n;", "", "result", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$1", f = "Delay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class FlowKt__DelayKt$sample$2$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.n<? extends Object>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71365a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f71366b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<Object> f71367c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<Unit> f71368d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2$1$1(Ref.ObjectRef<Object> objectRef, ReceiveChannel<Unit> receiveChannel, Continuation<? super FlowKt__DelayKt$sample$2$1$1> continuation) {
        super(2, continuation);
        this.f71367c = objectRef;
        this.f71368d = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__DelayKt$sample$2$1$1 flowKt__DelayKt$sample$2$1$1 = new FlowKt__DelayKt$sample$2$1$1(this.f71367c, this.f71368d, continuation);
        flowKt__DelayKt$sample$2$1$1.f71366b = obj;
        return flowKt__DelayKt$sample$2$1$1;
    }

    @Nullable
    public final Object e(@NotNull Object obj, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$sample$2$1$1) create(kotlinx.coroutines.channels.n.b(obj), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.channels.n<? extends Object> nVar, Continuation<? super Unit> continuation) {
        return e(nVar.o(), continuation);
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v8, types: [T, kotlinx.coroutines.internal.i0] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.f71365a == 0) {
            ResultKt.throwOnFailure(obj);
            ?? o3 = ((kotlinx.coroutines.channels.n) this.f71366b).o();
            Ref.ObjectRef<Object> objectRef = this.f71367c;
            boolean z3 = o3 instanceof n.c;
            if (!z3) {
                objectRef.element = o3;
            }
            ReceiveChannel<Unit> receiveChannel = this.f71368d;
            if (z3) {
                Throwable f4 = kotlinx.coroutines.channels.n.f(o3);
                if (f4 == null) {
                    receiveChannel.b(new ChildCancelledException());
                    objectRef.element = kotlinx.coroutines.flow.internal.m.f72086c;
                } else {
                    throw f4;
                }
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
