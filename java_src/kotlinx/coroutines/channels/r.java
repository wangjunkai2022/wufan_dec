package kotlinx.coroutines.channels;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.b;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConflatedChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B)\u0012 \u0010.\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0011\u0018\u00010,j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`-¢\u0006\u0004\b/\u00100J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u0017\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u00002\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\n\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0014J\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0014J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0016\u0010\u0015\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013H\u0014R\u001a\u0010\u001a\u001a\u00060\u0016j\u0002`\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u000f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u001d8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u000f8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u001cR\u0016\u0010$\u001a\u00020\u000f8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u001cR\u0016\u0010&\u001a\u00020\u000f8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\u001cR\u0018\u0010)\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020\u000f8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u001c¨\u00061"}, d2 = {"Lkotlinx/coroutines/channels/r;", "E", "Lkotlinx/coroutines/channels/AbstractChannel;", "", "element", "Lkotlinx/coroutines/internal/UndeliveredElementException;", "r0", "C", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/f;", "select", "D", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "l0", "m0", "", "wasClosed", "", "h0", "Lkotlinx/coroutines/channels/x;", "receive", "b0", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/util/concurrent/locks/ReentrantLock;", "lock", "isEmpty", "()Z", "", "l", "()Ljava/lang/String;", "bufferDebugString", "x", "isBufferAlwaysFull", "f0", "isBufferEmpty", "e0", "isBufferAlwaysEmpty", "e", "Ljava/lang/Object;", "value", "y", "isBufferFull", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class r<E> extends AbstractChannel<E> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ReentrantLock f71099d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Object f71100e;

    public r(@Nullable Function1<? super E, Unit> function1) {
        super(function1);
        this.f71099d = new ReentrantLock();
        this.f71100e = a.f71039c;
    }

    private final UndeliveredElementException r0(Object obj) {
        Function1<E, Unit> function1;
        Object obj2 = this.f71100e;
        UndeliveredElementException undeliveredElementException = null;
        if (obj2 != a.f71039c && (function1 = this.f71046a) != null) {
            undeliveredElementException = OnUndeliveredElementKt.d(function1, obj2, null, 2, null);
        }
        this.f71100e = obj;
        return undeliveredElementException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.b
    @NotNull
    public Object C(E e4) {
        y<E> Q;
        i0 t3;
        ReentrantLock reentrantLock = this.f71099d;
        reentrantLock.lock();
        try {
            p<?> n4 = n();
            if (n4 == null) {
                if (this.f71100e == a.f71039c) {
                    do {
                        Q = Q();
                        if (Q != null) {
                            if (Q instanceof p) {
                                return Q;
                            }
                            t3 = Q.t(e4, null);
                        }
                    } while (t3 == null);
                    if (v0.b()) {
                        if (!(t3 == kotlinx.coroutines.r.f72315d)) {
                            throw new AssertionError();
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                    Q.i(e4);
                    return Q.d();
                }
                UndeliveredElementException r02 = r0(e4);
                if (r02 == null) {
                    return a.f71040d;
                }
                throw r02;
            }
            return n4;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.b
    @NotNull
    public Object D(E e4, @NotNull kotlinx.coroutines.selects.f<?> fVar) {
        ReentrantLock reentrantLock = this.f71099d;
        reentrantLock.lock();
        try {
            p<?> n4 = n();
            if (n4 == null) {
                if (this.f71100e == a.f71039c) {
                    while (true) {
                        b.d<E> j4 = j(e4);
                        Object s3 = fVar.s(j4);
                        if (s3 == null) {
                            y<? super E> o3 = j4.o();
                            Unit unit = Unit.INSTANCE;
                            reentrantLock.unlock();
                            Intrinsics.checkNotNull(o3);
                            y<? super E> yVar = o3;
                            yVar.i(e4);
                            return yVar.d();
                        } else if (s3 == a.f71041e) {
                            break;
                        } else if (s3 != kotlinx.coroutines.internal.c.f72163b) {
                            if (s3 != kotlinx.coroutines.selects.g.d() && !(s3 instanceof p)) {
                                throw new IllegalStateException(Intrinsics.stringPlus("performAtomicTrySelect(describeTryOffer) returned ", s3).toString());
                            }
                            return s3;
                        }
                    }
                }
                if (!fVar.n()) {
                    return kotlinx.coroutines.selects.g.d();
                }
                UndeliveredElementException r02 = r0(e4);
                if (r02 == null) {
                    return a.f71040d;
                }
                throw r02;
            }
            return n4;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    public boolean b0(@NotNull x<? super E> xVar) {
        ReentrantLock reentrantLock = this.f71099d;
        reentrantLock.lock();
        try {
            return super.b0(xVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected final boolean e0() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected final boolean f0() {
        return this.f71100e == a.f71039c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    public void h0(boolean z3) {
        ReentrantLock reentrantLock = this.f71099d;
        reentrantLock.lock();
        try {
            UndeliveredElementException r02 = r0(a.f71039c);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            super.h0(z3);
            if (r02 != null) {
                throw r02;
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel, kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        ReentrantLock reentrantLock = this.f71099d;
        reentrantLock.lock();
        try {
            return g0();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.b
    @NotNull
    protected String l() {
        return "(value=" + this.f71100e + ')';
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    @Nullable
    protected Object l0() {
        ReentrantLock reentrantLock = this.f71099d;
        reentrantLock.lock();
        try {
            Object obj = this.f71100e;
            i0 i0Var = a.f71039c;
            if (obj != i0Var) {
                this.f71100e = i0Var;
                Unit unit = Unit.INSTANCE;
                return obj;
            }
            Object n4 = n();
            if (n4 == null) {
                n4 = a.f71042f;
            }
            return n4;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    @Nullable
    protected Object m0(@NotNull kotlinx.coroutines.selects.f<?> fVar) {
        ReentrantLock reentrantLock = this.f71099d;
        reentrantLock.lock();
        try {
            Object obj = this.f71100e;
            i0 i0Var = a.f71039c;
            if (obj == i0Var) {
                Object n4 = n();
                if (n4 == null) {
                    n4 = a.f71042f;
                }
                return n4;
            } else if (!fVar.n()) {
                return kotlinx.coroutines.selects.g.d();
            } else {
                Object obj2 = this.f71100e;
                this.f71100e = i0Var;
                Unit unit = Unit.INSTANCE;
                return obj2;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean x() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean y() {
        return false;
    }
}
