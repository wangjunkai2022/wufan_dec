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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 1}, l = {149, 152}, m = "singleOrNull", n = {"iterator", "single"}, s = {"L$1", "L$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$singleOrNull$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70964a;

    /* renamed from: b  reason: collision with root package name */
    Object f70965b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f70966c;

    /* renamed from: d  reason: collision with root package name */
    int f70967d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$singleOrNull$1(Continuation<? super ChannelsKt__DeprecatedKt$singleOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object R;
        this.f70966c = obj;
        this.f70967d |= Integer.MIN_VALUE;
        R = ChannelsKt__DeprecatedKt.R(null, this);
        return R;
    }
}
