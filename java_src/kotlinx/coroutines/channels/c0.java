package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.internal.s;
import kotlinx.coroutines.v0;
import kotlinx.coroutines.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0016\u001a\u00028\u0000\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e¢\u0006\u0004\b\u0017\u0010\u0018J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0014\u0010\u000b\u001a\u00020\u00072\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u000e8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0016\u001a\u00028\u00008\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/channels/c0;", "E", "Lkotlinx/coroutines/channels/a0;", "Lkotlinx/coroutines/internal/s$d;", "otherOp", "Lkotlinx/coroutines/internal/i0;", "h0", "", "e0", "Lkotlinx/coroutines/channels/p;", "closed", "g0", "", "toString", "Lkotlinx/coroutines/p;", "e", "Lkotlinx/coroutines/p;", "cont", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Object;", "f0", "()Ljava/lang/Object;", "pollResult", "<init>", "(Ljava/lang/Object;Lkotlinx/coroutines/p;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class c0<E> extends a0 {

    /* renamed from: d  reason: collision with root package name */
    private final E f71057d;
    @JvmField
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final kotlinx.coroutines.p<Unit> f71058e;

    /* JADX WARN: Multi-variable type inference failed */
    public c0(E e4, @NotNull kotlinx.coroutines.p<? super Unit> pVar) {
        this.f71057d = e4;
        this.f71058e = pVar;
    }

    @Override // kotlinx.coroutines.channels.a0
    public void e0() {
        this.f71058e.V(kotlinx.coroutines.r.f72315d);
    }

    @Override // kotlinx.coroutines.channels.a0
    public E f0() {
        return this.f71057d;
    }

    @Override // kotlinx.coroutines.channels.a0
    public void g0(@NotNull p<?> pVar) {
        kotlinx.coroutines.p<Unit> pVar2 = this.f71058e;
        Throwable m02 = pVar.m0();
        Result.Companion companion = Result.Companion;
        pVar2.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(m02)));
    }

    @Override // kotlinx.coroutines.channels.a0
    @Nullable
    public i0 h0(@Nullable s.d dVar) {
        Object c4 = this.f71058e.c(Unit.INSTANCE, dVar == null ? null : dVar.f72213c);
        if (c4 == null) {
            return null;
        }
        if (v0.b()) {
            if (!(c4 == kotlinx.coroutines.r.f72315d)) {
                throw new AssertionError();
            }
        }
        if (dVar != null) {
            dVar.d();
        }
        return kotlinx.coroutines.r.f72315d;
    }

    @Override // kotlinx.coroutines.internal.s
    @NotNull
    public String toString() {
        return w0.a(this) + '@' + w0.b(this) + '(' + f0() + ')';
    }
}
