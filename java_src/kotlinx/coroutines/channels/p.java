package kotlinx.coroutines.channels;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.internal.s;
import kotlinx.coroutines.v0;
import kotlinx.coroutines.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0010\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0011\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b!\u0010\"J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00028\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0010\u001a\u00020\b2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0000H\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016R\u0013\u0010\u0016\u001a\u00020\u00138F@\u0006¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u00008V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u001b\u001a\u00020\u00138F@\u0006¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0015R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00138\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u00008V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0018¨\u0006#"}, d2 = {"Lkotlinx/coroutines/channels/p;", "E", "Lkotlinx/coroutines/channels/a0;", "Lkotlinx/coroutines/channels/y;", "Lkotlinx/coroutines/internal/s$d;", "otherOp", "Lkotlinx/coroutines/internal/i0;", "h0", "", "e0", "value", ai.aF, "(Ljava/lang/Object;Lkotlinx/coroutines/internal/s$d;)Lkotlinx/coroutines/internal/i0;", ai.aA, "(Ljava/lang/Object;)V", "closed", "g0", "", "toString", "", "l0", "()Ljava/lang/Throwable;", "receiveException", "j0", "()Lkotlinx/coroutines/channels/p;", "offerResult", "m0", "sendException", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Throwable;", "closeCause", "k0", "pollResult", "<init>", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class p<E> extends a0 implements y<E> {
    @JvmField
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Throwable f71086d;

    public p(@Nullable Throwable th) {
        this.f71086d = th;
    }

    @Override // kotlinx.coroutines.channels.a0
    public void e0() {
    }

    @Override // kotlinx.coroutines.channels.a0
    public void g0(@NotNull p<?> pVar) {
        if (v0.b()) {
            throw new AssertionError();
        }
    }

    @Override // kotlinx.coroutines.channels.a0
    @NotNull
    public i0 h0(@Nullable s.d dVar) {
        i0 i0Var = kotlinx.coroutines.r.f72315d;
        if (dVar != null) {
            dVar.d();
        }
        return i0Var;
    }

    @Override // kotlinx.coroutines.channels.y
    public void i(E e4) {
    }

    @Override // kotlinx.coroutines.channels.y
    @NotNull
    /* renamed from: j0 */
    public p<E> d() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.a0
    @NotNull
    /* renamed from: k0 */
    public p<E> f0() {
        return this;
    }

    @NotNull
    public final Throwable l0() {
        Throwable th = this.f71086d;
        return th == null ? new ClosedReceiveChannelException(o.f71085a) : th;
    }

    @NotNull
    public final Throwable m0() {
        Throwable th = this.f71086d;
        return th == null ? new ClosedSendChannelException(o.f71085a) : th;
    }

    @Override // kotlinx.coroutines.channels.y
    @NotNull
    public i0 t(E e4, @Nullable s.d dVar) {
        i0 i0Var = kotlinx.coroutines.r.f72315d;
        if (dVar != null) {
            dVar.d();
        }
        return i0Var;
    }

    @Override // kotlinx.coroutines.internal.s
    @NotNull
    public String toString() {
        return "Closed@" + w0.b(this) + '[' + this.f71086d + ']';
    }
}
