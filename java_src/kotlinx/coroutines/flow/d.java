package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BW\u0012-\u0010\u0017\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0011¢\u0006\u0002\b\u0014\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J&\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J!\u0010\r\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0094@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0010\u001a\u00020\u000fH\u0016R@\u0010\u0017\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0011¢\u0006\u0002\b\u00148\u0002@\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/flow/d;", "T", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "j", "Lkotlinx/coroutines/channels/w;", "scope", "", ai.aA, "(Lkotlinx/coroutines/channels/w;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "toString", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlin/jvm/functions/Function2;", "block", "<init>", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class d<T> extends ChannelFlow<T> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Function2<kotlinx.coroutines.channels.w<? super T>, Continuation<? super Unit>, Object> f71935d;

    public /* synthetic */ d(Function2 function2, CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(function2, (i4 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i4 & 4) != 0 ? -2 : i2, (i4 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    static /* synthetic */ Object o(d dVar, kotlinx.coroutines.channels.w wVar, Continuation continuation) {
        Object coroutine_suspended;
        Object invoke = dVar.f71935d.invoke(wVar, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return invoke == coroutine_suspended ? invoke : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    public Object i(@NotNull kotlinx.coroutines.channels.w<? super T> wVar, @NotNull Continuation<? super Unit> continuation) {
        return o(this, wVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    protected ChannelFlow<T> j(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        return new d(this.f71935d, coroutineContext, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    public String toString() {
        return "block[" + this.f71935d + "] -> " + super.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(@NotNull Function2<? super kotlinx.coroutines.channels.w<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2, @NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        super(coroutineContext, i2, bufferOverflow);
        this.f71935d = function2;
    }
}
