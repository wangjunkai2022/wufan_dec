package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {104}, m = "consumeEach", n = {"action", "$this$consume$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__Channels_commonKt$consumeEach$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70804a;

    /* renamed from: b  reason: collision with root package name */
    Object f70805b;

    /* renamed from: c  reason: collision with root package name */
    Object f70806c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f70807d;

    /* renamed from: e  reason: collision with root package name */
    int f70808e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$consumeEach$1(Continuation<? super ChannelsKt__Channels_commonKt$consumeEach$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f70807d = obj;
        this.f70808e |= Integer.MIN_VALUE;
        return ChannelsKt__Channels_commonKt.e(null, null, this);
    }
}
