package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "count", n = {"count", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$count$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70825a;

    /* renamed from: b  reason: collision with root package name */
    Object f70826b;

    /* renamed from: c  reason: collision with root package name */
    Object f70827c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f70828d;

    /* renamed from: e  reason: collision with root package name */
    int f70829e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$count$1(Continuation<? super ChannelsKt__DeprecatedKt$count$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d4;
        this.f70828d = obj;
        this.f70829e |= Integer.MIN_VALUE;
        d4 = ChannelsKt__DeprecatedKt.d(null, this);
        return d4;
    }
}
