package kotlinx.coroutines.channels;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelCoroutine.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u0004B-\u0012\u0006\u0010@\u001a\u00020?\u0012\f\u00102\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010A\u001a\u00020\u0006\u0012\u0006\u0010B\u001a\u00020\u0006¢\u0006\u0004\bC\u0010DJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028\u0000H\u0097\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\t\u001a\u0004\u0018\u00018\u0000H\u0097\u0001¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000b\u001a\u0004\u0018\u00018\u0000H\u0097Aø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ.\u0010\u0013\u001a\u00020\u00032#\u0010\u0012\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00030\rH\u0097\u0001J\u0013\u0010\u0014\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0096\u0001J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0096\u0003J\u001f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017H\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0018\u0010\nJ'\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u00172\u0006\u0010\u0005\u001a\u00028\u0000H\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0013\u0010\u001b\u001a\u00028\u0000H\u0096Aø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\fJ\"\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017H\u0096Aø\u0001\u0000ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u001c\u0010\fJ\u001b\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000H\u0096Aø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\b\u0010\u001f\u001a\u00020\u0003H\u0016J\u0012\u0010 \u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0007J\u0016\u0010#\u001a\u00020\u00032\u000e\u0010\u0011\u001a\n\u0018\u00010!j\u0004\u0018\u0001`\"J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u000eH\u0016R\u0019\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048F@\u0006¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u00068\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b(\u0010)R\u001e\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000+8V@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b,\u0010-R\"\u00102\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u0010&R%\u00104\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00170+8\u0016@\u0016X\u0096\u0005ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b3\u0010-R\u001c\u00106\u001a\b\u0012\u0004\u0012\u00028\u00000+8\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b5\u0010-R\u0016\u00108\u001a\u00020\u00068\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b7\u0010)R\u0016\u00109\u001a\u00020\u00068\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b9\u0010)R(\u0010>\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000;0:8\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b<\u0010=\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006E"}, d2 = {"Lkotlinx/coroutines/channels/l;", "E", "Lkotlinx/coroutines/a;", "", "Lkotlinx/coroutines/channels/k;", "element", "", "offer", "(Ljava/lang/Object;)Z", "poll", "()Ljava/lang/Object;", "J", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "handler", ai.aB, "P", "Lkotlinx/coroutines/channels/ChannelIterator;", "iterator", "Lkotlinx/coroutines/channels/n;", "I", "B", "(Ljava/lang/Object;)Ljava/lang/Object;", "O", "K", "R", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancel", "a", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "b", "i0", "getChannel", "()Lkotlinx/coroutines/channels/k;", "channel", com.sdk.a.g.f56552a, "()Z", "isClosedForReceive", "Lkotlinx/coroutines/selects/d;", "H", "()Lkotlinx/coroutines/selects/d;", "onReceiveOrNull", ai.aD, "Lkotlinx/coroutines/channels/k;", "u1", "_channel", "G", "onReceiveCatching", "F", "onReceive", "S", "isClosedForSend", "isEmpty", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/b0;", net.lingala.zip4j.util.e.f73017f0, "()Lkotlinx/coroutines/selects/e;", "onSend", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "initParentJob", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/k;ZZ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public class l<E> extends kotlinx.coroutines.a<Unit> implements k<E> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final k<E> f71080c;

    public l(@NotNull CoroutineContext coroutineContext, @NotNull k<E> kVar, boolean z3, boolean z4) {
        super(coroutineContext, z3, z4);
        this.f71080c = kVar;
    }

    @Override // kotlinx.coroutines.channels.b0
    @NotNull
    public Object B(E e4) {
        return this.f71080c.B(e4);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public kotlinx.coroutines.selects.d<E> F() {
        return this.f71080c.F();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public kotlinx.coroutines.selects.d<n<E>> G() {
        return this.f71080c.G();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public kotlinx.coroutines.selects.d<E> H() {
        return this.f71080c.H();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public Object I() {
        return this.f71080c.I();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @Nullable
    public Object J(@NotNull Continuation<? super E> continuation) {
        return this.f71080c.J(continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public Object K(@NotNull Continuation<? super n<? extends E>> continuation) {
        Object K = this.f71080c.K(continuation);
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return K;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public Object O(@NotNull Continuation<? super E> continuation) {
        return this.f71080c.O(continuation);
    }

    @Override // kotlinx.coroutines.channels.b0
    public boolean P(@Nullable Throwable th) {
        return this.f71080c.P(th);
    }

    @Override // kotlinx.coroutines.channels.b0
    @Nullable
    public Object R(E e4, @NotNull Continuation<? super Unit> continuation) {
        return this.f71080c.R(e4, continuation);
    }

    @Override // kotlinx.coroutines.channels.b0
    public boolean S() {
        return this.f71080c.S();
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public final /* synthetic */ boolean a(Throwable th) {
        i0(new JobCancellationException(l0(), null, this));
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.c2
    public final void b(@Nullable CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(l0(), null, this);
        }
        i0(cancellationException);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.c2
    public /* synthetic */ void cancel() {
        i0(new JobCancellationException(l0(), null, this));
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean g() {
        return this.f71080c.g();
    }

    @NotNull
    public final k<E> getChannel() {
        return this;
    }

    @Override // kotlinx.coroutines.JobSupport
    public void i0(@NotNull Throwable th) {
        CancellationException i12 = JobSupport.i1(this, th, null, 1, null);
        this.f71080c.b(i12);
        g0(i12);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        return this.f71080c.isEmpty();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public ChannelIterator<E> iterator() {
        return this.f71080c.iterator();
    }

    @Override // kotlinx.coroutines.channels.b0
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e4) {
        return this.f71080c.offer(e4);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    public E poll() {
        return this.f71080c.poll();
    }

    @Override // kotlinx.coroutines.channels.b0
    @NotNull
    public kotlinx.coroutines.selects.e<E, b0<E>> r() {
        return this.f71080c.r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final k<E> u1() {
        return this.f71080c;
    }

    @Override // kotlinx.coroutines.channels.b0
    @ExperimentalCoroutinesApi
    public void z(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f71080c.z(function1);
    }
}
