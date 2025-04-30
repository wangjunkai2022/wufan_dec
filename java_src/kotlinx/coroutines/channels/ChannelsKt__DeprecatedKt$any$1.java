package kotlinx.coroutines.channels;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Deprecated.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {}, l = {TTAdConstant.SDK_NOT_SUPPORT_LIVE_MATE_CODE}, m = "any", n = {}, s = {})
/* loaded from: classes5.dex */
public final class ChannelsKt__DeprecatedKt$any$1<E> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f70820a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f70821b;

    /* renamed from: c  reason: collision with root package name */
    int f70822c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$any$1(Continuation<? super ChannelsKt__DeprecatedKt$any$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object a4;
        this.f70821b = obj;
        this.f70822c |= Integer.MIN_VALUE;
        a4 = ChannelsKt__DeprecatedKt.a(null, this);
        return a4;
    }
}
