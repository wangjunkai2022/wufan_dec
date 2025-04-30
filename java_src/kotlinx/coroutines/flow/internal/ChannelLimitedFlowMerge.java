package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.w;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Merge.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B9\u0012\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00130\u0012\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0017\u0010\u0018J&\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016J!\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011R\"\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00130\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;", "T", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "j", "Lkotlinx/coroutines/t0;", "scope", "Lkotlinx/coroutines/channels/ReceiveChannel;", "n", "Lkotlinx/coroutines/channels/w;", "", ai.aA, "(Lkotlinx/coroutines/channels/w;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Lkotlinx/coroutines/flow/f;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Iterable;", "flows", "<init>", "(Ljava/lang/Iterable;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ChannelLimitedFlowMerge<T> extends ChannelFlow<T> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Iterable<kotlinx.coroutines.flow.f<T>> f71992d;

    public /* synthetic */ ChannelLimitedFlowMerge(Iterable iterable, CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(iterable, (i4 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i4 & 4) != 0 ? -2 : i2, (i4 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object i(@NotNull w<? super T> wVar, @NotNull Continuation<? super Unit> continuation) {
        n nVar = new n(wVar);
        for (kotlinx.coroutines.flow.f<T> fVar : this.f71992d) {
            kotlinx.coroutines.k.f(wVar, null, null, new ChannelLimitedFlowMerge$collectTo$2$1(fVar, nVar, null), 3, null);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> j(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        return new ChannelLimitedFlowMerge(this.f71992d, coroutineContext, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public ReceiveChannel<T> n(@NotNull t0 t0Var) {
        return FlowCoroutineKt.a(t0Var, this.f71944a, this.f71945b, l());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelLimitedFlowMerge(@NotNull Iterable<? extends kotlinx.coroutines.flow.f<? extends T>> iterable, @NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i2, bufferOverflow);
        this.f71992d = iterable;
    }
}
