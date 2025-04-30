package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0002B3\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014J&\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0016J!\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/flow/internal/e;", "T", "Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "j", "Lkotlinx/coroutines/flow/f;", "k", "Lkotlinx/coroutines/flow/g;", "collector", "", ai.az, "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "flow", "<init>", "(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class e<T> extends ChannelFlowOperator<T, T> {
    public /* synthetic */ e(kotlinx.coroutines.flow.f fVar, CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(fVar, (i4 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i4 & 4) != 0 ? -3 : i2, (i4 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> j(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        return new e(this.f71969d, coroutineContext, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public kotlinx.coroutines.flow.f<T> k() {
        return (kotlinx.coroutines.flow.f<T>) this.f71969d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    @Nullable
    public Object s(@NotNull kotlinx.coroutines.flow.g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object e4 = this.f71969d.e(gVar, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    public e(@NotNull kotlinx.coroutines.flow.f<? extends T> fVar, @NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        super(fVar, coroutineContext, i2, bufferOverflow);
    }
}
