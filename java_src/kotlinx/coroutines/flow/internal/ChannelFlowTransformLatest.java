package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Merge.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003Bz\u0012B\u0010\u001a\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0011¢\u0006\u0002\b\u0017\u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\bø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J!\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\fH\u0094@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010RU\u0010\u001a\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0011¢\u0006\u0002\b\u00178\u0002@\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;", "T", "R", "Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "j", "Lkotlinx/coroutines/flow/g;", "collector", "", ai.az, "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "value", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "e", "Lkotlin/jvm/functions/Function3;", "transform", "Lkotlinx/coroutines/flow/f;", "flow", "<init>", "(Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ChannelFlowTransformLatest<T, R> extends ChannelFlowOperator<T, R> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Function3<kotlinx.coroutines.flow.g<? super R>, T, Continuation<? super Unit>, Object> f71973e;

    public /* synthetic */ ChannelFlowTransformLatest(Function3 function3, kotlinx.coroutines.flow.f fVar, CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(function3, fVar, (i4 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i4 & 8) != 0 ? -2 : i2, (i4 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<R> j(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        return new ChannelFlowTransformLatest(this.f71973e, this.f71969d, coroutineContext, i2, bufferOverflow);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    @Nullable
    public Object s(@NotNull kotlinx.coroutines.flow.g<? super R> gVar, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (!v0.b() || Boxing.boxBoolean(gVar instanceof n).booleanValue()) {
            Object c4 = FlowCoroutineKt.c(new ChannelFlowTransformLatest$flowCollect$3(this, gVar, null), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return c4 == coroutine_suspended ? c4 : Unit.INSTANCE;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowTransformLatest(@NotNull Function3<? super kotlinx.coroutines.flow.g<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, @NotNull kotlinx.coroutines.flow.f<? extends T> fVar, @NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        super(fVar, coroutineContext, i2, bufferOverflow);
        this.f71973e = function3;
    }
}
