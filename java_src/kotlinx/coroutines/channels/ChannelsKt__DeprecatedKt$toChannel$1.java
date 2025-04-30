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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {487, 278}, m = "toChannel", n = {RtspHeaders.Values.DESTINATION, "$this$consume$iv$iv", RtspHeaders.Values.DESTINATION, "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$toChannel$1<E, C extends b0<? super E>> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70980a;

    /* renamed from: b  reason: collision with root package name */
    Object f70981b;

    /* renamed from: c  reason: collision with root package name */
    Object f70982c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f70983d;

    /* renamed from: e  reason: collision with root package name */
    int f70984e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$toChannel$1(Continuation<? super ChannelsKt__DeprecatedKt$toChannel$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f70983d = obj;
        this.f70984e |= Integer.MIN_VALUE;
        return o.e0(null, null, this);
    }
}
