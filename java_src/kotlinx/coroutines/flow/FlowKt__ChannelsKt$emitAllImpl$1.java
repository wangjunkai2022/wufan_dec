package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt", f = "Channels.kt", i = {0, 0, 0}, l = {51, 62}, m = "emitAllImpl$FlowKt__ChannelsKt", n = {"$this$emitAllImpl", "channel", "consume"}, s = {"L$0", "L$1", "Z$0"})
/* loaded from: classes5.dex */
public final class FlowKt__ChannelsKt$emitAllImpl$1<T> extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f71300a;

    /* renamed from: b  reason: collision with root package name */
    Object f71301b;

    /* renamed from: c  reason: collision with root package name */
    boolean f71302c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f71303d;

    /* renamed from: e  reason: collision with root package name */
    int f71304e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ChannelsKt$emitAllImpl$1(Continuation<? super FlowKt__ChannelsKt$emitAllImpl$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object g4;
        this.f71303d = obj;
        this.f71304e |= Integer.MIN_VALUE;
        g4 = FlowKt__ChannelsKt.g(null, null, false, this);
        return g4;
    }
}
