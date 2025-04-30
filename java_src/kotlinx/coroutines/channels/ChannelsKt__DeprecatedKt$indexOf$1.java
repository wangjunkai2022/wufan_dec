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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "indexOf", n = {"element", "index"}, s = {"L$0", "L$1"})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$indexOf$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70904a;

    /* renamed from: b  reason: collision with root package name */
    Object f70905b;

    /* renamed from: c  reason: collision with root package name */
    Object f70906c;

    /* renamed from: d  reason: collision with root package name */
    Object f70907d;

    /* renamed from: e  reason: collision with root package name */
    /* synthetic */ Object f70908e;

    /* renamed from: f  reason: collision with root package name */
    int f70909f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$indexOf$1(Continuation<? super ChannelsKt__DeprecatedKt$indexOf$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object A;
        this.f70908e = obj;
        this.f70909f |= Integer.MIN_VALUE;
        A = ChannelsKt__DeprecatedKt.A(null, null, this);
        return A;
    }
}
