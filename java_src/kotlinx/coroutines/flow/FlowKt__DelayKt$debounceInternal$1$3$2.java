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
import kotlinx.coroutines.channels.n;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Delay.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/channels/n;", "", "value", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", i = {}, l = {245}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class FlowKt__DelayKt$debounceInternal$1$3$2 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.n<? extends Object>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    Object f71345a;

    /* renamed from: b  reason: collision with root package name */
    int f71346b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71347c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<Object> f71348d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ g<T> f71349e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$debounceInternal$1$3$2(Ref.ObjectRef<Object> objectRef, g<? super T> gVar, Continuation<? super FlowKt__DelayKt$debounceInternal$1$3$2> continuation) {
        super(2, continuation);
        this.f71348d = objectRef;
        this.f71349e = gVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__DelayKt$debounceInternal$1$3$2 flowKt__DelayKt$debounceInternal$1$3$2 = new FlowKt__DelayKt$debounceInternal$1$3$2(this.f71348d, this.f71349e, continuation);
        flowKt__DelayKt$debounceInternal$1$3$2.f71347c = obj;
        return flowKt__DelayKt$debounceInternal$1$3$2;
    }

    @Nullable
    public final Object e(@NotNull Object obj, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$debounceInternal$1$3$2) create(kotlinx.coroutines.channels.n.b(obj), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.channels.n<? extends Object> nVar, Continuation<? super Unit> continuation) {
        return e(nVar.o(), continuation);
    }

    /* JADX WARN: Type inference failed for: r7v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6, types: [T, kotlinx.coroutines.internal.i0] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Ref.ObjectRef<Object> objectRef;
        Ref.ObjectRef<Object> objectRef2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71346b;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            ?? o3 = ((kotlinx.coroutines.channels.n) this.f71347c).o();
            objectRef = this.f71348d;
            boolean z3 = o3 instanceof n.c;
            if (!z3) {
                objectRef.element = o3;
            }
            g<T> gVar = this.f71349e;
            if (z3) {
                Throwable f4 = kotlinx.coroutines.channels.n.f(o3);
                if (f4 == null) {
                    Object obj2 = objectRef.element;
                    if (obj2 != null) {
                        if (obj2 == kotlinx.coroutines.flow.internal.m.f72084a) {
                            obj2 = null;
                        }
                        this.f71347c = o3;
                        this.f71345a = objectRef;
                        this.f71346b = 1;
                        if (gVar.emit(obj2, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        objectRef2 = objectRef;
                    }
                    objectRef.element = kotlinx.coroutines.flow.internal.m.f72086c;
                } else {
                    throw f4;
                }
            }
            return Unit.INSTANCE;
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            objectRef2 = (Ref.ObjectRef) this.f71345a;
            ResultKt.throwOnFailure(obj);
        }
        objectRef = objectRef2;
        objectRef.element = kotlinx.coroutines.flow.internal.m.f72086c;
        return Unit.INSTANCE;
    }
}
