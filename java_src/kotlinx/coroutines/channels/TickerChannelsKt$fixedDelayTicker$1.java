package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TickerChannels.kt */
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt", f = "TickerChannels.kt", i = {0, 0, 1, 1, 2, 2}, l = {106, 108, 109}, m = "fixedDelayTicker", n = {"channel", "delayMillis", "channel", "delayMillis", "channel", "delayMillis"}, s = {"L$0", "J$0", "L$0", "J$0", "L$0", "J$0"})
/* loaded from: classes5.dex */
public final class TickerChannelsKt$fixedDelayTicker$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    long f71023a;

    /* renamed from: b  reason: collision with root package name */
    Object f71024b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f71025c;

    /* renamed from: d  reason: collision with root package name */
    int f71026d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TickerChannelsKt$fixedDelayTicker$1(Continuation<? super TickerChannelsKt$fixedDelayTicker$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object c4;
        this.f71025c = obj;
        this.f71026d |= Integer.MIN_VALUE;
        c4 = TickerChannelsKt.c(0L, 0L, null, this);
        return c4;
    }
}
