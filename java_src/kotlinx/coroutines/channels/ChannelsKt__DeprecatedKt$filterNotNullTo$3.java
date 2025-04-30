package kotlinx.coroutines.channels;

import io.netty.handler.codec.rtsp.RtspHeaders;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.channels.b0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {487, 242}, m = "filterNotNullTo", n = {RtspHeaders.Values.DESTINATION, "$this$consume$iv$iv", RtspHeaders.Values.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$filterNotNullTo$3<E, C extends b0<? super E>> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70886a;

    /* renamed from: b  reason: collision with root package name */
    Object f70887b;

    /* renamed from: c  reason: collision with root package name */
    Object f70888c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f70889d;

    /* renamed from: e  reason: collision with root package name */
    int f70890e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$filterNotNullTo$3(Continuation<? super ChannelsKt__DeprecatedKt$filterNotNullTo$3> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object v3;
        this.f70889d = obj;
        this.f70890e |= Integer.MIN_VALUE;
        v3 = ChannelsKt__DeprecatedKt.v(null, null, this);
        return v3;
    }
}
