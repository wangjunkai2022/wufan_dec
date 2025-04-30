package kotlinx.coroutines.flow;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/t0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1", f = "Share.kt", i = {}, l = {TTAdConstant.DEEPLINK_FALL_BACK_CODE}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class FlowKt__ShareKt$launchSharingDeferred$1 extends SuspendLambda implements Function2<t0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71650a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f71651b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f<T> f71652c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ c0<v<T>> f71653d;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Collect.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$a", "Lkotlinx/coroutines/flow/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<T> implements g<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f71654a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ t0 f71655b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ c0 f71656c;

        public a(Ref.ObjectRef objectRef, t0 t0Var, c0 c0Var) {
            this.f71654a = objectRef;
            this.f71655b = t0Var;
            this.f71656c = c0Var;
        }

        /* JADX WARN: Type inference failed for: r4v2, types: [kotlinx.coroutines.flow.v, kotlinx.coroutines.flow.k, T] */
        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object emit(T t3, @NotNull Continuation<? super Unit> continuation) {
            Unit unit;
            k kVar = (k) this.f71654a.element;
            if (kVar == null) {
                unit = null;
            } else {
                kVar.setValue(t3);
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                t0 t0Var = this.f71655b;
                Ref.ObjectRef objectRef = this.f71654a;
                ?? r4 = (T) w.a(t3);
                this.f71656c.x(new m(r4, f2.C(t0Var.getCoroutineContext())));
                Unit unit2 = Unit.INSTANCE;
                objectRef.element = r4;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ShareKt$launchSharingDeferred$1(f<? extends T> fVar, c0<v<T>> c0Var, Continuation<? super FlowKt__ShareKt$launchSharingDeferred$1> continuation) {
        super(2, continuation);
        this.f71652c = fVar;
        this.f71653d = c0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__ShareKt$launchSharingDeferred$1 flowKt__ShareKt$launchSharingDeferred$1 = new FlowKt__ShareKt$launchSharingDeferred$1(this.f71652c, this.f71653d, continuation);
        flowKt__ShareKt$launchSharingDeferred$1.f71651b = obj;
        return flowKt__ShareKt$launchSharingDeferred$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@NotNull t0 t0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__ShareKt$launchSharingDeferred$1) create(t0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71650a;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                t0 t0Var = (t0) this.f71651b;
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                f<T> fVar = this.f71652c;
                a aVar = new a(objectRef, t0Var, this.f71653d);
                this.f71650a = 1;
                if (fVar.e(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            this.f71653d.d(th);
            throw th;
        }
    }
}
