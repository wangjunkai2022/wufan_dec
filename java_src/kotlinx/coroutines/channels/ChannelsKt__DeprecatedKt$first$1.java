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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {65}, m = "first", n = {"iterator"}, s = {"L$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$first$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70891a;

    /* renamed from: b  reason: collision with root package name */
    Object f70892b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f70893c;

    /* renamed from: d  reason: collision with root package name */
    int f70894d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$first$1(Continuation<? super ChannelsKt__DeprecatedKt$first$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object w3;
        this.f70893c = obj;
        this.f70894d |= Integer.MIN_VALUE;
        w3 = ChannelsKt__DeprecatedKt.w(null, this);
        return w3;
    }
}
