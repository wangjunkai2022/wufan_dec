package kotlinx.coroutines.channels;

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
/* JADX INFO: Add missing generic type declarations: [R, E] */
/* compiled from: Channel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001 \u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {"R", "E", "Lkotlinx/coroutines/channels/n;", "it", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1", f = "Channel.kt", i = {}, l = {376}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1<E, R> extends SuspendLambda implements Function2<n<? extends E>, Continuation<? super R>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f71018a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f71019b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function2<E, Continuation<? super R>, Object> f71020c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1(Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1> continuation) {
        super(2, continuation);
        this.f71020c = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1 receiveChannel$onReceiveOrNull$1$registerSelectClause1$1 = new ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1(this.f71020c, continuation);
        receiveChannel$onReceiveOrNull$1$registerSelectClause1$1.f71019b = obj;
        return receiveChannel$onReceiveOrNull$1$registerSelectClause1$1;
    }

    @Nullable
    public final Object e(@NotNull Object obj, @Nullable Continuation<? super R> continuation) {
        return ((ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1) create(n.b(obj), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return e(((n) obj).o(), (Continuation) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f71018a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Object o3 = ((n) this.f71019b).o();
            Throwable f4 = n.f(o3);
            if (f4 == null) {
                Object h4 = n.h(o3);
                this.f71018a = 1;
                obj = this.f71020c.invoke(h4, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                throw f4;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return obj;
    }
}
