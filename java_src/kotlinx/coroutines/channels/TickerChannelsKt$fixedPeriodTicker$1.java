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
@DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt", f = "TickerChannels.kt", i = {0, 1}, l = {84, 88, 94, 96}, m = "fixedPeriodTicker", n = {"deadline", "delayNs"}, s = {"J$1", "J$1"})
/* loaded from: classes5.dex */
public final class TickerChannelsKt$fixedPeriodTicker$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    long f71027a;

    /* renamed from: b  reason: collision with root package name */
    long f71028b;

    /* renamed from: c  reason: collision with root package name */
    Object f71029c;

    /* renamed from: d  reason: collision with root package name */
    /* synthetic */ Object f71030d;

    /* renamed from: e  reason: collision with root package name */
    int f71031e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TickerChannelsKt$fixedPeriodTicker$1(Continuation<? super TickerChannelsKt$fixedPeriodTicker$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d4;
        this.f71030d = obj;
        this.f71031e |= Integer.MIN_VALUE;
        d4 = TickerChannelsKt.d(0L, 0L, null, this);
        return d4;
    }
}
