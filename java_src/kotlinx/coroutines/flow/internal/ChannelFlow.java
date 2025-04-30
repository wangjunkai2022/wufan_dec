package kotlinx.coroutines.flow.internal;

import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.w;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.v0;
import kotlinx.coroutines.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelFlow.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b*\u0010+J\u0010\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003H\u0016J&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J&\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH$J!\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH¤@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00132\u0006\u0010\u000e\u001a\u00020\u0012H\u0016J!\u0010\u0017\u001a\u00020\u000f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014J\b\u0010\u001b\u001a\u00020\u0019H\u0016R\u0016\u0010\b\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\n\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00078@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R;\u0010(\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0$\u0012\u0006\u0012\u0004\u0018\u00010%0#8@@\u0000X\u0080\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010)\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlow;", "T", "Lkotlinx/coroutines/flow/internal/j;", "Lkotlinx/coroutines/flow/f;", "k", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "a", "j", "Lkotlinx/coroutines/channels/w;", "scope", "", ai.aA, "(Lkotlinx/coroutines/channels/w;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/t0;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "n", "Lkotlinx/coroutines/flow/g;", "collector", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", com.sdk.a.g.f56552a, "toString", "b", "I", ai.aD, "Lkotlinx/coroutines/channels/BufferOverflow;", "m", "()I", "produceCapacity", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "l", "()Lkotlin/jvm/functions/Function2;", "collectToFun", "Lkotlin/coroutines/CoroutineContext;", "<init>", "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class ChannelFlow<T> implements j<T> {
    @JvmField
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final CoroutineContext f71944a;
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public final int f71945b;
    @JvmField
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final BufferOverflow f71946c;

    public ChannelFlow(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        this.f71944a = coroutineContext;
        this.f71945b = i2;
        this.f71946c = bufferOverflow;
        if (v0.b()) {
            if (!(i2 != -1)) {
                throw new AssertionError();
            }
        }
    }

    static /* synthetic */ Object h(ChannelFlow channelFlow, kotlinx.coroutines.flow.g gVar, Continuation continuation) {
        Object coroutine_suspended;
        Object g4 = u0.g(new ChannelFlow$collect$2(gVar, channelFlow, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.j
    @NotNull
    public kotlinx.coroutines.flow.f<T> a(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        if (v0.b()) {
            if (!(i2 != -1)) {
                throw new AssertionError();
            }
        }
        CoroutineContext plus = coroutineContext.plus(this.f71944a);
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            int i4 = this.f71945b;
            if (i4 != -3) {
                if (i2 != -3) {
                    if (i4 != -2) {
                        if (i2 != -2) {
                            if (v0.b()) {
                                if (!(this.f71945b >= 0)) {
                                    throw new AssertionError();
                                }
                            }
                            if (v0.b()) {
                                if (!(i2 >= 0)) {
                                    throw new AssertionError();
                                }
                            }
                            i4 = this.f71945b + i2;
                            if (i4 < 0) {
                                i2 = Integer.MAX_VALUE;
                            }
                        }
                    }
                }
                i2 = i4;
            }
            bufferOverflow = this.f71946c;
        }
        return (Intrinsics.areEqual(plus, this.f71944a) && i2 == this.f71945b && bufferOverflow == this.f71946c) ? this : j(plus, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public Object e(@NotNull kotlinx.coroutines.flow.g<? super T> gVar, @NotNull Continuation<? super Unit> continuation) {
        return h(this, gVar, continuation);
    }

    @Nullable
    protected String g() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public abstract Object i(@NotNull w<? super T> wVar, @NotNull Continuation<? super Unit> continuation);

    @NotNull
    protected abstract ChannelFlow<T> j(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow);

    @Nullable
    public kotlinx.coroutines.flow.f<T> k() {
        return null;
    }

    @NotNull
    public final Function2<w<? super T>, Continuation<? super Unit>, Object> l() {
        return new ChannelFlow$collectToFun$1(this, null);
    }

    public final int m() {
        int i2 = this.f71945b;
        if (i2 == -3) {
            return -2;
        }
        return i2;
    }

    @NotNull
    public ReceiveChannel<T> n(@NotNull t0 t0Var) {
        return ProduceKt.h(t0Var, this.f71944a, m(), this.f71946c, CoroutineStart.ATOMIC, null, l(), 16, null);
    }

    @NotNull
    public String toString() {
        String joinToString$default;
        ArrayList arrayList = new ArrayList(4);
        String g4 = g();
        if (g4 != null) {
            arrayList.add(g4);
        }
        CoroutineContext coroutineContext = this.f71944a;
        if (coroutineContext != EmptyCoroutineContext.INSTANCE) {
            arrayList.add(Intrinsics.stringPlus("context=", coroutineContext));
        }
        int i2 = this.f71945b;
        if (i2 != -3) {
            arrayList.add(Intrinsics.stringPlus("capacity=", Integer.valueOf(i2)));
        }
        BufferOverflow bufferOverflow = this.f71946c;
        if (bufferOverflow != BufferOverflow.SUSPEND) {
            arrayList.add(Intrinsics.stringPlus("onBufferOverflow=", bufferOverflow));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(w0.a(this));
        sb.append('[');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null);
        sb.append(joinToString$default);
        sb.append(']');
        return sb.toString();
    }
}
