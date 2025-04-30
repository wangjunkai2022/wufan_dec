package kotlinx.coroutines.flow.internal;

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
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: ChannelFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\u008a@"}, d2 = {"T", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", f = "ChannelFlow.kt", i = {}, l = {212}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class UndispatchedContextCollector$emitRef$1<T> extends SuspendLambda implements Function2<T, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f72070a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f72071b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.g<T> f72072c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UndispatchedContextCollector$emitRef$1(kotlinx.coroutines.flow.g<? super T> gVar, Continuation<? super UndispatchedContextCollector$emitRef$1> continuation) {
        super(2, continuation);
        this.f72072c = gVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        UndispatchedContextCollector$emitRef$1 undispatchedContextCollector$emitRef$1 = new UndispatchedContextCollector$emitRef$1(this.f72072c, continuation);
        undispatchedContextCollector$emitRef$1.f72071b = obj;
        return undispatchedContextCollector$emitRef$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(T t3, @Nullable Continuation<? super Unit> continuation) {
        return ((UndispatchedContextCollector$emitRef$1) create(t3, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f72070a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.f72071b;
            this.f72070a = 1;
            if (this.f72072c.emit(obj2, this) == coroutine_suspended) {
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
