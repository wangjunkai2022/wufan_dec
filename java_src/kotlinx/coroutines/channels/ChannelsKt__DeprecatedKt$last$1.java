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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 1}, l = {97, 100}, m = "last", n = {"iterator", "last"}, s = {"L$1", "L$2"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$last$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70910a;

    /* renamed from: b  reason: collision with root package name */
    Object f70911b;

    /* renamed from: c  reason: collision with root package name */
    Object f70912c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f70913d;

    /* renamed from: e  reason: collision with root package name */
    int f70914e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$last$1(Continuation<? super ChannelsKt__DeprecatedKt$last$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object B;
        this.f70913d = obj;
        this.f70914e |= Integer.MIN_VALUE;
        B = ChannelsKt__DeprecatedKt.B(null, this);
        return B;
    }
}
