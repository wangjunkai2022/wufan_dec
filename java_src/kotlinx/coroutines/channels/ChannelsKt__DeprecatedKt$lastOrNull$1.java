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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 1, 1}, l = {123, 126}, m = "lastOrNull", n = {"iterator", "iterator", "last"}, s = {"L$1", "L$1", "L$2"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$lastOrNull$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70922a;

    /* renamed from: b  reason: collision with root package name */
    Object f70923b;

    /* renamed from: c  reason: collision with root package name */
    Object f70924c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f70925d;

    /* renamed from: e  reason: collision with root package name */
    int f70926e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$lastOrNull$1(Continuation<? super ChannelsKt__DeprecatedKt$lastOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object D;
        this.f70925d = obj;
        this.f70926e |= Integer.MIN_VALUE;
        D = ChannelsKt__DeprecatedKt.D(null, this);
        return D;
    }
}
