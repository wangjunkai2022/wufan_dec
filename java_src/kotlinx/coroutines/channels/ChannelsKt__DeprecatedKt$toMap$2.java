package kotlinx.coroutines.channels;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "toMap", n = {RtspHeaders.Values.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$toMap$2<K, V, M extends Map<? super K, ? super V>> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70990a;

    /* renamed from: b  reason: collision with root package name */
    Object f70991b;

    /* renamed from: c  reason: collision with root package name */
    Object f70992c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f70993d;

    /* renamed from: e  reason: collision with root package name */
    int f70994e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$toMap$2(Continuation<? super ChannelsKt__DeprecatedKt$toMap$2> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f70993d = obj;
        this.f70994e |= Integer.MIN_VALUE;
        return o.h0(null, null, this);
    }
}
