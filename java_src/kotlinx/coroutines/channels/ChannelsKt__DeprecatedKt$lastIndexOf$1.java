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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 0}, l = {487}, m = "lastIndexOf", n = {"element", "lastIndex", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$lastIndexOf$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70915a;

    /* renamed from: b  reason: collision with root package name */
    Object f70916b;

    /* renamed from: c  reason: collision with root package name */
    Object f70917c;

    /* renamed from: d  reason: collision with root package name */
    Object f70918d;

    /* renamed from: e  reason: collision with root package name */
    Object f70919e;

    /* renamed from: f  reason: collision with root package name */
    /* synthetic */ Object f70920f;

    /* renamed from: g  reason: collision with root package name */
    int f70921g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$lastIndexOf$1(Continuation<? super ChannelsKt__DeprecatedKt$lastIndexOf$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object C;
        this.f70920f = obj;
        this.f70921g |= Integer.MIN_VALUE;
        C = ChannelsKt__DeprecatedKt.C(null, null, this);
        return C;
    }
}
