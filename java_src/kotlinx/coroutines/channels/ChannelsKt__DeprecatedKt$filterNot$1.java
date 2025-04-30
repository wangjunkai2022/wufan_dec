package kotlinx.coroutines.channels;

import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\u008a@"}, d2 = {"E", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNot$1", f = "Deprecated.kt", i = {}, l = {Opcodes.OR_INT_LIT8}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$filterNot$1<E> extends SuspendLambda implements Function2<E, Continuation<? super Boolean>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f70876a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f70877b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function2<E, Continuation<? super Boolean>, Object> f70878c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$filterNot$1(Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super ChannelsKt__DeprecatedKt$filterNot$1> continuation) {
        super(2, continuation);
        this.f70878c = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$filterNot$1 channelsKt__DeprecatedKt$filterNot$1 = new ChannelsKt__DeprecatedKt$filterNot$1(this.f70878c, continuation);
        channelsKt__DeprecatedKt$filterNot$1.f70877b = obj;
        return channelsKt__DeprecatedKt$filterNot$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(E e4, @Nullable Continuation<? super Boolean> continuation) {
        return ((ChannelsKt__DeprecatedKt$filterNot$1) create(e4, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.f70876a;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.f70877b;
            this.f70876a = 1;
            obj = this.f70878c.invoke(obj2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(!((Boolean) obj).booleanValue());
    }
}
