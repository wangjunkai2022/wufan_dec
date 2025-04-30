package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Delay.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/channels/w;", "", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1", f = "Delay.kt", i = {}, l = {352}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class FlowKt__DelayKt$debounceInternal$1$values$1 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.w<? super Object>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71350a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71351b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f<T> f71352c;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Collect.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1$a", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<T> implements g<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.channels.w f71353a;

        public a(kotlinx.coroutines.channels.w wVar) {
            this.f71353a = wVar;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object emit(T t3, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            kotlinx.coroutines.channels.w wVar = this.f71353a;
            if (t3 == null) {
                t3 = (T) kotlinx.coroutines.flow.internal.m.f72084a;
            }
            Object R = wVar.R(t3, continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return R == coroutine_suspended ? R : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$debounceInternal$1$values$1(f<? extends T> fVar, Continuation<? super FlowKt__DelayKt$debounceInternal$1$values$1> continuation) {
        super(2, continuation);
        this.f71352c = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__DelayKt$debounceInternal$1$values$1 flowKt__DelayKt$debounceInternal$1$values$1 = new FlowKt__DelayKt$debounceInternal$1$values$1(this.f71352c, continuation);
        flowKt__DelayKt$debounceInternal$1$values$1.f71351b = obj;
        return flowKt__DelayKt$debounceInternal$1$values$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull kotlinx.coroutines.channels.w<Object> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$debounceInternal$1$values$1) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71350a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            f<T> fVar = this.f71352c;
            a aVar = new a((kotlinx.coroutines.channels.w) this.f71351b);
            this.f71350a = 1;
            if (fVar.e(aVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
