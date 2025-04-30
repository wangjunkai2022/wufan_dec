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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {75}, m = "firstOrNull", n = {"iterator"}, s = {"L$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$firstOrNull$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70895a;

    /* renamed from: b  reason: collision with root package name */
    Object f70896b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f70897c;

    /* renamed from: d  reason: collision with root package name */
    int f70898d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$firstOrNull$1(Continuation<? super ChannelsKt__DeprecatedKt$firstOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object x3;
        this.f70897c = obj;
        this.f70898d |= Integer.MIN_VALUE;
        x3 = ChannelsKt__DeprecatedKt.x(null, this);
        return x3;
    }
}
