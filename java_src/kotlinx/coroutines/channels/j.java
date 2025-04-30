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
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.q0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Broadcast.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005B%\u0012\u0006\u00105\u001a\u000204\u0012\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u00106\u001a\u00020\u0007¢\u0006\u0004\b7\u00108J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0097\u0001¢\u0006\u0004\b\b\u0010\tJ.\u0010\u0010\u001a\u00020\u00032#\u0010\u000f\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00030\nH\u0097\u0001J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0096\u0001J'\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u00132\u0006\u0010\u0006\u001a\u00028\u0000H\u0096\u0001ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00028\u0000H\u0096Aø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u0012\u0010\u0018\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0007J\u0016\u0010\u001b\u001a\u00020\u00032\u000e\u0010\u000e\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001aJ\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0017\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u0018\u0010!\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u0007H\u0014J\u0012\u0010\"\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0016R\u0016\u0010%\u001a\u00020\u00078\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b#\u0010$R\"\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0016\u0010+\u001a\u00020\u00078V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010$R(\u00100\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000-0,8\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b.\u0010/R\u001c\u00103\u001a\b\u0012\u0004\u0012\u00028\u00000-8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u00102\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u00069"}, d2 = {"Lkotlinx/coroutines/channels/j;", "E", "Lkotlinx/coroutines/a;", "", "Lkotlinx/coroutines/channels/w;", "Lkotlinx/coroutines/channels/h;", "element", "", "offer", "(Ljava/lang/Object;)Z", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "handler", ai.aB, "Lkotlinx/coroutines/channels/ReceiveChannel;", "v", "Lkotlinx/coroutines/channels/n;", "B", "(Ljava/lang/Object;)Ljava/lang/Object;", "R", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "b", "i0", "value", "v1", "(Lkotlin/Unit;)V", "handled", "r1", "P", "S", "()Z", "isClosedForSend", ai.aD, "Lkotlinx/coroutines/channels/h;", "u1", "()Lkotlinx/coroutines/channels/h;", "_channel", "isActive", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/b0;", net.lingala.zip4j.util.e.f73017f0, "()Lkotlinx/coroutines/selects/e;", "onSend", "getChannel", "()Lkotlinx/coroutines/channels/b0;", "channel", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/h;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public class j<E> extends kotlinx.coroutines.a<Unit> implements w<E>, h<E> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final h<E> f71071c;

    public j(@NotNull CoroutineContext coroutineContext, @NotNull h<E> hVar, boolean z3) {
        super(coroutineContext, false, z3);
        this.f71071c = hVar;
        G0((c2) coroutineContext.get(c2.Q));
    }

    @Override // kotlinx.coroutines.channels.b0
    @NotNull
    public Object B(E e4) {
        return this.f71071c.B(e4);
    }

    @Override // kotlinx.coroutines.channels.b0
    public boolean P(@Nullable Throwable th) {
        boolean P = this.f71071c.P(th);
        start();
        return P;
    }

    @Override // kotlinx.coroutines.channels.b0
    @Nullable
    public Object R(E e4, @NotNull Continuation<? super Unit> continuation) {
        return this.f71071c.R(e4, continuation);
    }

    @Override // kotlinx.coroutines.channels.b0
    public boolean S() {
        return this.f71071c.S();
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.c2
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public final /* synthetic */ boolean a(Throwable th) {
        if (th == null) {
            th = new JobCancellationException(l0(), null, this);
        }
        i0(th);
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.c2
    public final void b(@Nullable CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(l0(), null, this);
        }
        i0(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.w
    @NotNull
    public b0<E> getChannel() {
        return this;
    }

    @Override // kotlinx.coroutines.JobSupport
    public void i0(@NotNull Throwable th) {
        CancellationException i12 = JobSupport.i1(this, th, null, 1, null);
        this.f71071c.b(i12);
        g0(i12);
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.JobSupport, kotlinx.coroutines.c2
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.channels.b0
    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e4) {
        return this.f71071c.offer(e4);
    }

    @Override // kotlinx.coroutines.channels.b0
    @NotNull
    public kotlinx.coroutines.selects.e<E, b0<E>> r() {
        return this.f71071c.r();
    }

    @Override // kotlinx.coroutines.a
    protected void r1(@NotNull Throwable th, boolean z3) {
        if (this.f71071c.P(th) || z3) {
            return;
        }
        q0.b(getContext(), th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final h<E> u1() {
        return this.f71071c;
    }

    @Override // kotlinx.coroutines.channels.h
    @NotNull
    public ReceiveChannel<E> v() {
        return this.f71071c.v();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a
    /* renamed from: v1 */
    public void s1(@NotNull Unit unit) {
        b0.a.a(this.f71071c, null, 1, null);
    }

    @Override // kotlinx.coroutines.channels.b0
    @ExperimentalCoroutinesApi
    public void z(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f71071c.z(function1);
    }
}
