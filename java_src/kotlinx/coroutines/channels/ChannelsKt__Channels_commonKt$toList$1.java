package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channels.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {148}, m = "toList", n = {"$this$toList_u24lambda_u2d3", "$this$consume$iv$iv"}, s = {"L$1", "L$2"})
/* loaded from: classes5.dex */
final class ChannelsKt__Channels_commonKt$toList$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70814a;

    /* renamed from: b  reason: collision with root package name */
    Object f70815b;

    /* renamed from: c  reason: collision with root package name */
    Object f70816c;

    /* renamed from: d  reason: collision with root package name */
    Object f70817d;

    /* renamed from: e  reason: collision with root package name */
    /* synthetic */ Object f70818e;

    /* renamed from: f  reason: collision with root package name */
    int f70819f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$toList$1(Continuation<? super ChannelsKt__Channels_commonKt$toList$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f70818e = obj;
        this.f70819f |= Integer.MIN_VALUE;
        return o.g0(null, this);
    }
}
