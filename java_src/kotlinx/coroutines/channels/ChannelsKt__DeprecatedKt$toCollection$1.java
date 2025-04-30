package kotlinx.coroutines.channels;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "toCollection", n = {RtspHeaders.Values.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$toCollection$1<E, C extends Collection<? super E>> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70985a;

    /* renamed from: b  reason: collision with root package name */
    Object f70986b;

    /* renamed from: c  reason: collision with root package name */
    Object f70987c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f70988d;

    /* renamed from: e  reason: collision with root package name */
    int f70989e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$toCollection$1(Continuation<? super ChannelsKt__DeprecatedKt$toCollection$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f70988d = obj;
        this.f70989e |= Integer.MIN_VALUE;
        return o.f0(null, null, this);
    }
}
