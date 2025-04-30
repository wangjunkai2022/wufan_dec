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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {38}, m = "elementAt", n = {"count"}, s = {"I$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$elementAt$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    int f70851a;

    /* renamed from: b  reason: collision with root package name */
    int f70852b;

    /* renamed from: c  reason: collision with root package name */
    Object f70853c;

    /* renamed from: d  reason: collision with root package name */
    Object f70854d;

    /* renamed from: e  reason: collision with root package name */
    /* synthetic */ Object f70855e;

    /* renamed from: f  reason: collision with root package name */
    int f70856f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$elementAt$1(Continuation<? super ChannelsKt__DeprecatedKt$elementAt$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object l4;
        this.f70855e = obj;
        this.f70856f |= Integer.MIN_VALUE;
        l4 = ChannelsKt__DeprecatedKt.l(null, 0, this);
        return l4;
    }
}
