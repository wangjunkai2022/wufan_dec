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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {53}, m = "elementAtOrNull", n = {"count"}, s = {"I$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$elementAtOrNull$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    int f70857a;

    /* renamed from: b  reason: collision with root package name */
    int f70858b;

    /* renamed from: c  reason: collision with root package name */
    Object f70859c;

    /* renamed from: d  reason: collision with root package name */
    Object f70860d;

    /* renamed from: e  reason: collision with root package name */
    /* synthetic */ Object f70861e;

    /* renamed from: f  reason: collision with root package name */
    int f70862f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$elementAtOrNull$1(Continuation<? super ChannelsKt__DeprecatedKt$elementAtOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m4;
        this.f70861e = obj;
        this.f70862f |= Integer.MIN_VALUE;
        m4 = ChannelsKt__DeprecatedKt.m(null, 0, this);
        return m4;
    }
}
