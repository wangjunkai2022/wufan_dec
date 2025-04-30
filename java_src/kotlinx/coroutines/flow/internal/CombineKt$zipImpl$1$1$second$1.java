package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.channels.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Combine.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/channels/w;", "", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1", f = "Combine.kt", i = {}, l = {147}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class CombineKt$zipImpl$1$1$second$1 extends SuspendLambda implements Function2<w<? super Object>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f72045a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f72046b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.f<T2> f72047c;

    /* JADX INFO: Add missing generic type declarations: [T2] */
    /* compiled from: Collect.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$second$1$a", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<T2> implements kotlinx.coroutines.flow.g<T2> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ w f72048a;

        public a(w wVar) {
            this.f72048a = wVar;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object emit(T2 t22, @NotNull Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            b0 channel = this.f72048a.getChannel();
            if (t22 == null) {
                t22 = (T2) m.f72084a;
            }
            Object R = channel.R(t22, continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return R == coroutine_suspended ? R : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CombineKt$zipImpl$1$1$second$1(kotlinx.coroutines.flow.f<? extends T2> fVar, Continuation<? super CombineKt$zipImpl$1$1$second$1> continuation) {
        super(2, continuation);
        this.f72047c = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CombineKt$zipImpl$1$1$second$1 combineKt$zipImpl$1$1$second$1 = new CombineKt$zipImpl$1$1$second$1(this.f72047c, continuation);
        combineKt$zipImpl$1$1$second$1.f72046b = obj;
        return combineKt$zipImpl$1$1$second$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull w<Object> wVar, @Nullable Continuation<? super Unit> continuation) {
        return ((CombineKt$zipImpl$1$1$second$1) create(wVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f72045a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            kotlinx.coroutines.flow.f<T2> fVar = this.f72047c;
            a aVar = new a((w) this.f72046b);
            this.f72045a = 1;
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
