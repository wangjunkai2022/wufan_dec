package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.f0;
import kotlinx.coroutines.h2;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Combine.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/t0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1", f = "Combine.kt", i = {0}, l = {129}, m = "invokeSuspend", n = {"second"}, s = {"L$0"})
/* loaded from: classes5.dex */
final class CombineKt$zipImpl$1$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f72019a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f72020b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.g<R> f72021c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.f<T2> f72022d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.f<T1> f72023e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f72024f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Combine.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "", "it", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2", f = "Combine.kt", i = {}, l = {147}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f72027a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.f<T1> f72028b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CoroutineContext f72029c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Object f72030d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ReceiveChannel<Object> f72031e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.g<R> f72032f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f72033g;

        /* JADX INFO: Add missing generic type declarations: [T1] */
        /* compiled from: Collect.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$a", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3"}, k = 1, mv = {1, 5, 1})
        /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$a */
        /* loaded from: classes5.dex */
        public static final class a<T1> implements kotlinx.coroutines.flow.g<T1> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CoroutineContext f72040a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Object f72041b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ReceiveChannel f72042c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.g f72043d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Function3 f72044e;

            public a(CoroutineContext coroutineContext, Object obj, ReceiveChannel receiveChannel, kotlinx.coroutines.flow.g gVar, Function3 function3) {
                this.f72040a = coroutineContext;
                this.f72041b = obj;
                this.f72042c = receiveChannel;
                this.f72043d = gVar;
                this.f72044e = function3;
            }

            @Override // kotlinx.coroutines.flow.g
            @Nullable
            public Object emit(T1 t12, @NotNull Continuation<? super Unit> continuation) {
                Object coroutine_suspended;
                CoroutineContext coroutineContext = this.f72040a;
                Unit unit = Unit.INSTANCE;
                Object c4 = d.c(coroutineContext, unit, this.f72041b, new CombineKt$zipImpl$1$1$2$1$1(this.f72042c, this.f72043d, this.f72044e, t12, null), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return c4 == coroutine_suspended ? c4 : unit;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(kotlinx.coroutines.flow.f<? extends T1> fVar, CoroutineContext coroutineContext, Object obj, ReceiveChannel<? extends Object> receiveChannel, kotlinx.coroutines.flow.g<? super R> gVar, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.f72028b = fVar;
            this.f72029c = coroutineContext;
            this.f72030d = obj;
            this.f72031e = receiveChannel;
            this.f72032f = gVar;
            this.f72033g = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass2(this.f72028b, this.f72029c, this.f72030d, this.f72031e, this.f72032f, this.f72033g, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: e */
        public final Object invoke(@NotNull Unit unit, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.f72027a;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.f<T1> fVar = this.f72028b;
                a aVar = new a(this.f72029c, this.f72030d, this.f72031e, this.f72032f, this.f72033g);
                this.f72027a = 1;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CombineKt$zipImpl$1$1(kotlinx.coroutines.flow.g<? super R> gVar, kotlinx.coroutines.flow.f<? extends T2> fVar, kotlinx.coroutines.flow.f<? extends T1> fVar2, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super CombineKt$zipImpl$1$1> continuation) {
        super(2, continuation);
        this.f72021c = gVar;
        this.f72022d = fVar;
        this.f72023e = fVar2;
        this.f72024f = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CombineKt$zipImpl$1$1 combineKt$zipImpl$1$1 = new CombineKt$zipImpl$1$1(this.f72021c, this.f72022d, this.f72023e, this.f72024f, continuation);
        combineKt$zipImpl$1$1.f72020b = obj;
        return combineKt$zipImpl$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((CombineKt$zipImpl$1$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v12, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        final f0 d4;
        ReceiveChannel receiveChannel;
        ReceiveChannel receiveChannel2;
        CoroutineContext plus;
        Unit unit;
        AnonymousClass2 anonymousClass2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ReceiveChannel receiveChannel3 = this.f72019a;
        try {
            if (receiveChannel3 != 0) {
                if (receiveChannel3 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                receiveChannel2 = (ReceiveChannel) this.f72020b;
                try {
                    ResultKt.throwOnFailure(obj);
                    receiveChannel3 = receiveChannel2;
                } catch (AbortFlowException e4) {
                    e = e4;
                }
                ReceiveChannel.DefaultImpls.b(receiveChannel3, null, 1, null);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            t0 t0Var = (t0) this.f72020b;
            ReceiveChannel f4 = ProduceKt.f(t0Var, null, 0, new CombineKt$zipImpl$1$1$second$1(this.f72022d, null), 3, null);
            d4 = h2.d(null, 1, null);
            final kotlinx.coroutines.flow.g gVar = this.f72021c;
            ((b0) f4).z(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th) {
                    if (f0.this.isActive()) {
                        f0.this.b(new AbortFlowException(gVar));
                    }
                }
            });
            try {
                CoroutineContext coroutineContext = t0Var.getCoroutineContext();
                Object b4 = ThreadContextKt.b(coroutineContext);
                plus = t0Var.getCoroutineContext().plus(d4);
                unit = Unit.INSTANCE;
                anonymousClass2 = new AnonymousClass2(this.f72023e, coroutineContext, b4, f4, this.f72021c, this.f72024f, null);
                this.f72020b = f4;
                this.f72019a = 1;
                receiveChannel = f4;
                try {
                } catch (AbortFlowException e5) {
                    e = e5;
                    receiveChannel2 = receiveChannel;
                    h.b(e, this.f72021c);
                    receiveChannel3 = receiveChannel2;
                    ReceiveChannel.DefaultImpls.b(receiveChannel3, null, 1, null);
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    receiveChannel3 = receiveChannel;
                    ReceiveChannel.DefaultImpls.b(receiveChannel3, null, 1, null);
                    throw th;
                }
            } catch (AbortFlowException e6) {
                e = e6;
                receiveChannel = f4;
            } catch (Throwable th2) {
                th = th2;
                receiveChannel = f4;
            }
            if (d.d(plus, unit, null, anonymousClass2, this, 4, null) == coroutine_suspended) {
                return coroutine_suspended;
            }
            receiveChannel3 = receiveChannel;
            ReceiveChannel.DefaultImpls.b(receiveChannel3, null, 1, null);
            return Unit.INSTANCE;
            h.b(e, this.f72021c);
            receiveChannel3 = receiveChannel2;
            ReceiveChannel.DefaultImpls.b(receiveChannel3, null, 1, null);
            return Unit.INSTANCE;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
