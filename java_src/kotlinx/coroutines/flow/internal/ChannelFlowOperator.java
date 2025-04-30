package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B-\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014\u0012\u0006\u0010\u0018\u001a\u00020\u0006\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ)\u0010\t\u001a\u00020\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000b\u001a\u00020\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H¤@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0094@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0011\u001a\u00020\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\fJ\b\u0010\u0013\u001a\u00020\u0012H\u0016R\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00148\u0004@\u0005X\u0085\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;", "S", "T", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlinx/coroutines/flow/g;", "collector", "Lkotlin/coroutines/CoroutineContext;", "newContext", "", net.lingala.zip4j.util.e.f73017f0, "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ai.az, "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/w;", "scope", ai.aA, "(Lkotlinx/coroutines/channels/w;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "e", "", "toString", "Lkotlinx/coroutines/flow/f;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/flow/f;", "flow", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "<init>", "(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class ChannelFlowOperator<S, T> extends ChannelFlow<T> {
    @JvmField
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    protected final kotlinx.coroutines.flow.f<S> f71969d;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowOperator(@NotNull kotlinx.coroutines.flow.f<? extends S> fVar, @NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i2, bufferOverflow);
        this.f71969d = fVar;
    }

    static /* synthetic */ Object p(ChannelFlowOperator channelFlowOperator, kotlinx.coroutines.flow.g gVar, Continuation continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        if (channelFlowOperator.f71945b == -3) {
            CoroutineContext context = continuation.getContext();
            CoroutineContext plus = context.plus(channelFlowOperator.f71944a);
            if (Intrinsics.areEqual(plus, context)) {
                Object s3 = channelFlowOperator.s(gVar, continuation);
                coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return s3 == coroutine_suspended3 ? s3 : Unit.INSTANCE;
            }
            ContinuationInterceptor.Key key = ContinuationInterceptor.Key;
            if (Intrinsics.areEqual(plus.get(key), context.get(key))) {
                Object r3 = channelFlowOperator.r(gVar, plus, continuation);
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return r3 == coroutine_suspended2 ? r3 : Unit.INSTANCE;
            }
        }
        Object e4 = super.e(gVar, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return e4 == coroutine_suspended ? e4 : Unit.INSTANCE;
    }

    static /* synthetic */ Object q(ChannelFlowOperator channelFlowOperator, w wVar, Continuation continuation) {
        Object coroutine_suspended;
        Object s3 = channelFlowOperator.s(new n(wVar), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return s3 == coroutine_suspended ? s3 : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object r(kotlinx.coroutines.flow.g<? super T> gVar, CoroutineContext coroutineContext, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object d4 = d.d(coroutineContext, d.a(gVar, continuation.getContext()), null, new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), continuation, 4, null);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return d4 == coroutine_suspended ? d4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.f
    @Nullable
    public Object e(@NotNull kotlinx.coroutines.flow.g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
        return p(this, gVar, continuation);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object i(@NotNull w<? super T> wVar, @NotNull Continuation<? super Unit> continuation) {
        return q(this, wVar, continuation);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public abstract Object s(@NotNull kotlinx.coroutines.flow.g<? super T> gVar, @NotNull Continuation<? super Unit> continuation);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public String toString() {
        return this.f71969d + " -> " + super.toString();
    }
}
