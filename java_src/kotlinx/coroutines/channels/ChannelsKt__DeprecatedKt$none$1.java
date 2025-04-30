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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {}, l = {447}, m = "none", n = {}, s = {})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$none$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70954a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f70955b;

    /* renamed from: c  reason: collision with root package name */
    int f70956c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$none$1(Continuation<? super ChannelsKt__DeprecatedKt$none$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object O;
        this.f70955b = obj;
        this.f70956c |= Integer.MIN_VALUE;
        O = ChannelsKt__DeprecatedKt.O(null, this);
        return O;
    }
}
