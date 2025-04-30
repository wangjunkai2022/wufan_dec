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
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0003\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00018\u0000H\u008a@"}, d2 = {"", "E", "it", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$requireNoNulls$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
final class ChannelsKt__DeprecatedKt$requireNoNulls$1<E> extends SuspendLambda implements Function2<E, Continuation<? super E>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f70957a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f70958b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ReceiveChannel<E> f70959c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$requireNoNulls$1(ReceiveChannel<? extends E> receiveChannel, Continuation<? super ChannelsKt__DeprecatedKt$requireNoNulls$1> continuation) {
        super(2, continuation);
        this.f70959c = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$requireNoNulls$1 channelsKt__DeprecatedKt$requireNoNulls$1 = new ChannelsKt__DeprecatedKt$requireNoNulls$1(this.f70959c, continuation);
        channelsKt__DeprecatedKt$requireNoNulls$1.f70958b = obj;
        return channelsKt__DeprecatedKt$requireNoNulls$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: e */
    public final Object invoke(@Nullable E e4, @Nullable Continuation<? super E> continuation) {
        return ((ChannelsKt__DeprecatedKt$requireNoNulls$1) create(e4, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.f70957a == 0) {
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.f70958b;
            if (obj2 != null) {
                return obj2;
            }
            throw new IllegalArgumentException("null element found in " + this.f70959c + external.org.apache.commons.lang3.d.f65364a);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
