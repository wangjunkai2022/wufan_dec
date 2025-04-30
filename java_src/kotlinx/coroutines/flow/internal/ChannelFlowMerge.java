package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.w;
import kotlinx.coroutines.sync.SemaphoreKt;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Merge.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BA\u0012\u0012\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00170\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ&\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016J!\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0013\u001a\u00020\u0012H\u0014R\u0016\u0010\u0016\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\"\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00170\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowMerge;", "T", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "j", "Lkotlinx/coroutines/t0;", "scope", "Lkotlinx/coroutines/channels/ReceiveChannel;", "n", "Lkotlinx/coroutines/channels/w;", "", ai.aA, "(Lkotlinx/coroutines/channels/w;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", com.sdk.a.g.f56552a, "e", "I", "concurrency", "Lkotlinx/coroutines/flow/f;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/flow/f;", "flow", "<init>", "(Lkotlinx/coroutines/flow/f;ILkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ChannelFlowMerge<T> extends ChannelFlow<T> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final kotlinx.coroutines.flow.f<kotlinx.coroutines.flow.f<T>> f71954d;

    /* renamed from: e  reason: collision with root package name */
    private final int f71955e;

    public /* synthetic */ ChannelFlowMerge(kotlinx.coroutines.flow.f fVar, int i2, CoroutineContext coroutineContext, int i4, BufferOverflow bufferOverflow, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(fVar, i2, (i5 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i5 & 8) != 0 ? -2 : i4, (i5 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected String g() {
        return Intrinsics.stringPlus("concurrency=", Integer.valueOf(this.f71955e));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object i(@NotNull w<? super T> wVar, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object e4 = this.f71954d.e(new ChannelFlowMerge$collectTo$$inlined$collect$1((c2) continuation.getContext().get(c2.Q), SemaphoreKt.b(this.f71955e, 0, 2, null), wVar, new n(wVar)), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> j(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        return new ChannelFlowMerge(this.f71954d, this.f71955e, coroutineContext, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public ReceiveChannel<T> n(@NotNull t0 t0Var) {
        return FlowCoroutineKt.a(t0Var, this.f71944a, this.f71945b, l());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowMerge(@NotNull kotlinx.coroutines.flow.f<? extends kotlinx.coroutines.flow.f<? extends T>> fVar, int i2, @NotNull CoroutineContext coroutineContext, int i4, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i4, bufferOverflow);
        this.f71954d = fVar;
        this.f71955e = i2;
    }
}
