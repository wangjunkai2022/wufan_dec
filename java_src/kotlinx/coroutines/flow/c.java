package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B;\u0012\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\u0012\u0006\u0010\"\u001a\u00020 \u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b&\u0010'J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J-\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00032\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u0012\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001b\u001a\u00020\u00032\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0014¢\u0006\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010!R\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006("}, d2 = {"Lkotlinx/coroutines/flow/c;", "T", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "", "o", "()V", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "j", "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlinx/coroutines/flow/f;", "k", "()Lkotlinx/coroutines/flow/f;", "Lkotlinx/coroutines/channels/w;", "scope", ai.aA, "(Lkotlinx/coroutines/channels/w;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/t0;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "n", "(Lkotlinx/coroutines/t0;)Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlinx/coroutines/flow/g;", "collector", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", com.sdk.a.g.f56552a, "()Ljava/lang/String;", "", "Z", "consume", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/channels/ReceiveChannel;", "channel", "<init>", "(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class c<T> extends ChannelFlow<T> {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f71932f = AtomicIntegerFieldUpdater.newUpdater(c.class, "consumed");
    @NotNull
    private volatile /* synthetic */ int consumed;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ReceiveChannel<T> f71933d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f71934e;

    public /* synthetic */ c(ReceiveChannel receiveChannel, boolean z3, CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(receiveChannel, z3, (i4 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i4 & 8) != 0 ? -3 : i2, (i4 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    private final void o() {
        if (this.f71934e) {
            if (!(f71932f.getAndSet(this, 1) == 0)) {
                throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once".toString());
            }
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.f
    @Nullable
    public Object e(@NotNull g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object g4;
        Object coroutine_suspended2;
        if (this.f71945b == -3) {
            o();
            g4 = FlowKt__ChannelsKt.g(gVar, this.f71933d, this.f71934e, continuation);
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return g4 == coroutine_suspended2 ? g4 : Unit.INSTANCE;
        }
        Object e4 = super.e(gVar, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected String g() {
        return Intrinsics.stringPlus("channel=", this.f71933d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object i(@NotNull kotlinx.coroutines.channels.w<? super T> wVar, @NotNull Continuation<? super Unit> continuation) {
        Object g4;
        Object coroutine_suspended;
        g4 = FlowKt__ChannelsKt.g(new kotlinx.coroutines.flow.internal.n(wVar), this.f71933d, this.f71934e, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> j(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        return new c(this.f71933d, this.f71934e, coroutineContext, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public f<T> k() {
        return new c(this.f71933d, this.f71934e, null, 0, null, 28, null);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public ReceiveChannel<T> n(@NotNull t0 t0Var) {
        o();
        if (this.f71945b == -3) {
            return this.f71933d;
        }
        return super.n(t0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@NotNull ReceiveChannel<? extends T> receiveChannel, boolean z3, @NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i2, bufferOverflow);
        this.f71933d = receiveChannel;
        this.f71934e = z3;
        this.consumed = 0;
    }
}
