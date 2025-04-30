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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {434, 436}, m = "minWith", n = {"comparator", "iterator", "iterator", "min"}, s = {"L$0", "L$2", "L$2", "L$3"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$minWith$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70948a;

    /* renamed from: b  reason: collision with root package name */
    Object f70949b;

    /* renamed from: c  reason: collision with root package name */
    Object f70950c;

    /* renamed from: d  reason: collision with root package name */
    Object f70951d;

    /* renamed from: e  reason: collision with root package name */
    /* synthetic */ Object f70952e;

    /* renamed from: f  reason: collision with root package name */
    int f70953f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$minWith$1(Continuation<? super ChannelsKt__DeprecatedKt$minWith$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object N;
        this.f70952e = obj;
        this.f70953f |= Integer.MIN_VALUE;
        N = ChannelsKt__DeprecatedKt.N(null, null, this);
        return N;
    }
}
