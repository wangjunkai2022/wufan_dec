package kotlinx.coroutines.channels;

import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ArrayBroadcastChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u001bB\u000f\u0012\u0006\u0010L\u001a\u00020+¢\u0006\u0004\bQ\u00100J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ4\u0010\u000f\u001a\u00020\t2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\f2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\fH\u0082\u0010¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u001a\u0010\bJ\u0019\u0010\u001b\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0017¢\u0006\u0004\b\u001b\u0010\bJ\u001f\u0010\u001e\u001a\u00020\t2\u000e\u0010\u0005\u001a\n\u0018\u00010\u001cj\u0004\u0018\u0001`\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00028\u0000H\u0014¢\u0006\u0004\b\"\u0010#J#\u0010&\u001a\u00020!2\u0006\u0010 \u001a\u00028\u00002\n\u0010%\u001a\u0006\u0012\u0002\b\u00030$H\u0014¢\u0006\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\u00068T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R$\u00101\u001a\u00020+2\u0006\u0010,\u001a\u00020+8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R$\u00105\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00118B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b2\u0010\u0013\"\u0004\b3\u00104R\u0016\u00107\u001a\u00020\u00068T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b6\u0010)R\u001a\u0010<\u001a\u000608j\u0002`98\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R$\u0010?\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00118B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b=\u0010\u0013\"\u0004\b>\u00104R2\u0010D\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0@j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f`A8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010H\u001a\u00020E8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bF\u0010GR\u0019\u0010L\u001a\u00020+8\u0006@\u0006¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bK\u0010.R\u001e\u0010P\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0M8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010O¨\u0006R"}, d2 = {"Lkotlinx/coroutines/channels/f;", "E", "Lkotlinx/coroutines/channels/b;", "Lkotlinx/coroutines/channels/h;", "", "cause", "", "W", "(Ljava/lang/Throwable;)Z", "", "X", "()V", "Lkotlinx/coroutines/channels/f$a;", "addSub", "removeSub", "h0", "(Lkotlinx/coroutines/channels/f$a;Lkotlinx/coroutines/channels/f$a;)V", "", "Y", "()J", "index", "Z", "(J)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "v", "()Lkotlinx/coroutines/channels/ReceiveChannel;", "P", "a", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "b", "(Ljava/util/concurrent/CancellationException;)V", "element", "", "C", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/f;", "select", "D", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "x", "()Z", "isBufferAlwaysFull", "", "value", "c0", "()I", "f0", "(I)V", "size", "d0", "g0", "(J)V", "tail", "y", "isBufferFull", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "e", "Ljava/util/concurrent/locks/ReentrantLock;", "bufferLock", "b0", "e0", "head", "", "Lkotlinx/coroutines/internal/SubscribersList;", com.sdk.a.g.f56552a, "Ljava/util/List;", "subscribers", "", "l", "()Ljava/lang/String;", "bufferDebugString", com.xinzhu.overmind.utils.helpers.d.f64708a, "I", "a0", "capacity", "", "f", "[Ljava/lang/Object;", "buffer", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class f<E> extends b<E> implements h<E> {
    @NotNull
    private volatile /* synthetic */ long _head;
    @NotNull
    private volatile /* synthetic */ int _size;
    @NotNull
    private volatile /* synthetic */ long _tail;

    /* renamed from: d  reason: collision with root package name */
    private final int f71060d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final ReentrantLock f71061e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Object[] f71062f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final List<a<E>> f71063g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ArrayBroadcastChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B\u0015\u0012\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00010\u001d¢\u0006\u0004\b,\u0010-J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u0006J\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\u000f\u0010\tJ\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013R$\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00148F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00048T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0006R\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00010\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00048T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0006R\u0016\u0010$\u001a\u00020\u00048T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u0006R\u001a\u0010)\u001a\u00060%j\u0002`&8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020\u00048T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u0006¨\u0006."}, d2 = {"kotlinx/coroutines/channels/f$a", "E", "Lkotlinx/coroutines/channels/AbstractChannel;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "", "t0", "()Z", "", "u0", "()Ljava/lang/Object;", "", "cause", "P", "(Ljava/lang/Throwable;)Z", "r0", "l0", "Lkotlinx/coroutines/selects/f;", "select", "m0", "(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "", "value", "s0", "()J", "v0", "(J)V", "subHead", "x", "isBufferAlwaysFull", "Lkotlinx/coroutines/channels/f;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/channels/f;", "broadcastChannel", "f0", "isBufferEmpty", "e0", "isBufferAlwaysEmpty", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "e", "Ljava/util/concurrent/locks/ReentrantLock;", "subLock", "y", "isBufferFull", "<init>", "(Lkotlinx/coroutines/channels/f;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<E> extends AbstractChannel<E> implements ReceiveChannel<E> {
        @NotNull
        private volatile /* synthetic */ long _subHead;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final f<E> f71064d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final ReentrantLock f71065e;

        public a(@NotNull f<E> fVar) {
            super(null);
            this.f71064d = fVar;
            this.f71065e = new ReentrantLock();
            this._subHead = 0L;
        }

        private final boolean t0() {
            if (m() != null) {
                return false;
            }
            return (f0() && this.f71064d.m() == null) ? false : true;
        }

        private final Object u0() {
            long s02 = s0();
            p<?> m4 = this.f71064d.m();
            if (s02 < this.f71064d.d0()) {
                Object Z = this.f71064d.Z(s02);
                p<?> m5 = m();
                return m5 != null ? m5 : Z;
            } else if (m4 == null) {
                p<?> m6 = m();
                return m6 == null ? kotlinx.coroutines.channels.a.f71042f : m6;
            } else {
                return m4;
            }
        }

        @Override // kotlinx.coroutines.channels.b, kotlinx.coroutines.channels.b0
        public boolean P(@Nullable Throwable th) {
            boolean P = super.P(th);
            if (P) {
                f.i0(this.f71064d, null, this, 1, null);
                ReentrantLock reentrantLock = this.f71065e;
                reentrantLock.lock();
                try {
                    v0(this.f71064d.d0());
                    Unit unit = Unit.INSTANCE;
                } finally {
                    reentrantLock.unlock();
                }
            }
            return P;
        }

        @Override // kotlinx.coroutines.channels.AbstractChannel
        protected boolean e0() {
            return false;
        }

        @Override // kotlinx.coroutines.channels.AbstractChannel
        protected boolean f0() {
            return s0() >= this.f71064d.d0();
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0028  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x003f  */
        @Override // kotlinx.coroutines.channels.AbstractChannel
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected java.lang.Object l0() {
            /*
                r8 = this;
                java.util.concurrent.locks.ReentrantLock r0 = r8.f71065e
                r0.lock()
                java.lang.Object r1 = r8.u0()     // Catch: java.lang.Throwable -> L46
                boolean r2 = r1 instanceof kotlinx.coroutines.channels.p     // Catch: java.lang.Throwable -> L46
                r3 = 1
                if (r2 == 0) goto Lf
                goto L13
            Lf:
                kotlinx.coroutines.internal.i0 r2 = kotlinx.coroutines.channels.a.f71042f     // Catch: java.lang.Throwable -> L46
                if (r1 != r2) goto L15
            L13:
                r2 = 0
                goto L20
            L15:
                long r4 = r8.s0()     // Catch: java.lang.Throwable -> L46
                r6 = 1
                long r4 = r4 + r6
                r8.v0(r4)     // Catch: java.lang.Throwable -> L46
                r2 = 1
            L20:
                r0.unlock()
                boolean r0 = r1 instanceof kotlinx.coroutines.channels.p
                r4 = 0
                if (r0 == 0) goto L2c
                r0 = r1
                kotlinx.coroutines.channels.p r0 = (kotlinx.coroutines.channels.p) r0
                goto L2d
            L2c:
                r0 = r4
            L2d:
                if (r0 != 0) goto L30
                goto L35
            L30:
                java.lang.Throwable r0 = r0.f71086d
                r8.P(r0)
            L35:
                boolean r0 = r8.r0()
                if (r0 == 0) goto L3c
                goto L3d
            L3c:
                r3 = r2
            L3d:
                if (r3 == 0) goto L45
                kotlinx.coroutines.channels.f<E> r0 = r8.f71064d
                r2 = 3
                kotlinx.coroutines.channels.f.i0(r0, r4, r4, r2, r4)
            L45:
                return r1
            L46:
                r1 = move-exception
                r0.unlock()
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.f.a.l0():java.lang.Object");
        }

        @Override // kotlinx.coroutines.channels.AbstractChannel
        @Nullable
        protected Object m0(@NotNull kotlinx.coroutines.selects.f<?> fVar) {
            ReentrantLock reentrantLock = this.f71065e;
            reentrantLock.lock();
            try {
                Object u02 = u0();
                boolean z3 = false;
                if (!(u02 instanceof p) && u02 != kotlinx.coroutines.channels.a.f71042f) {
                    if (!fVar.n()) {
                        u02 = kotlinx.coroutines.selects.g.d();
                    } else {
                        v0(s0() + 1);
                        z3 = true;
                    }
                }
                reentrantLock.unlock();
                p pVar = u02 instanceof p ? (p) u02 : null;
                if (pVar != null) {
                    P(pVar.f71086d);
                }
                if (r0() ? true : z3) {
                    f.i0(this.f71064d, null, null, 3, null);
                }
                return u02;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        public final boolean r0() {
            p pVar;
            boolean z3 = false;
            while (true) {
                pVar = null;
                if (!t0() || !this.f71065e.tryLock()) {
                    break;
                }
                try {
                    E e4 = (E) u0();
                    if (e4 != kotlinx.coroutines.channels.a.f71042f) {
                        if (e4 instanceof p) {
                            pVar = (p) e4;
                            break;
                        }
                        y<E> Q = Q();
                        if (Q != null && !(Q instanceof p)) {
                            i0 t3 = Q.t(e4, null);
                            if (t3 != null) {
                                if (v0.b()) {
                                    if (!(t3 == kotlinx.coroutines.r.f72315d)) {
                                        throw new AssertionError();
                                    }
                                }
                                v0(s0() + 1);
                                this.f71065e.unlock();
                                Q.i(e4);
                                z3 = true;
                            }
                        }
                    }
                } finally {
                    this.f71065e.unlock();
                }
            }
            if (pVar != null) {
                P(pVar.f71086d);
            }
            return z3;
        }

        public final long s0() {
            return this._subHead;
        }

        public final void v0(long j4) {
            this._subHead = j4;
        }

        @Override // kotlinx.coroutines.channels.b
        protected boolean x() {
            throw new IllegalStateException("Should not be used".toString());
        }

        @Override // kotlinx.coroutines.channels.b
        protected boolean y() {
            throw new IllegalStateException("Should not be used".toString());
        }
    }

    public f(int i2) {
        super(null);
        this.f71060d = i2;
        if (i2 >= 1) {
            this.f71061e = new ReentrantLock();
            this.f71062f = new Object[i2];
            this._head = 0L;
            this._tail = 0L;
            this._size = 0;
            this.f71063g = kotlinx.coroutines.internal.e.d();
            return;
        }
        throw new IllegalArgumentException(("ArrayBroadcastChannel capacity must be at least 1, but " + a0() + " was specified").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // kotlinx.coroutines.channels.h
    /* renamed from: W */
    public final boolean a(Throwable th) {
        boolean P = P(th);
        for (a<E> aVar : this.f71063g) {
            aVar.a(th);
        }
        return P;
    }

    private final void X() {
        boolean z3 = false;
        boolean z4 = false;
        for (a<E> aVar : this.f71063g) {
            if (aVar.r0()) {
                z3 = true;
            }
            z4 = true;
        }
        if (z3 || !z4) {
            i0(this, null, null, 3, null);
        }
    }

    private final long Y() {
        long j4 = Long.MAX_VALUE;
        for (a<E> aVar : this.f71063g) {
            j4 = RangesKt___RangesKt.coerceAtMost(j4, aVar.s0());
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final E Z(long j4) {
        return (E) this.f71062f[(int) (j4 % this.f71060d)];
    }

    private final long b0() {
        return this._head;
    }

    private final int c0() {
        return this._size;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long d0() {
        return this._tail;
    }

    private final void e0(long j4) {
        this._head = j4;
    }

    private final void f0(int i2) {
        this._size = i2;
    }

    private final void g0(long j4) {
        this._tail = j4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a3, code lost:
        throw new java.lang.AssertionError();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void h0(kotlinx.coroutines.channels.f.a<E> r14, kotlinx.coroutines.channels.f.a<E> r15) {
        /*
            r13 = this;
            r0 = 0
        L1:
            java.util.concurrent.locks.ReentrantLock r1 = r13.f71061e
            r1.lock()
            if (r14 == 0) goto L23
            long r2 = r13.d0()     // Catch: java.lang.Throwable -> L20
            r14.v0(r2)     // Catch: java.lang.Throwable -> L20
            java.util.List<kotlinx.coroutines.channels.f$a<E>> r2 = r13.f71063g     // Catch: java.lang.Throwable -> L20
            boolean r2 = r2.isEmpty()     // Catch: java.lang.Throwable -> L20
            java.util.List<kotlinx.coroutines.channels.f$a<E>> r3 = r13.f71063g     // Catch: java.lang.Throwable -> L20
            r3.add(r14)     // Catch: java.lang.Throwable -> L20
            if (r2 != 0) goto L23
            r1.unlock()
            return
        L20:
            r14 = move-exception
            goto Ld0
        L23:
            if (r15 == 0) goto L3a
            java.util.List<kotlinx.coroutines.channels.f$a<E>> r14 = r13.f71063g     // Catch: java.lang.Throwable -> L20
            r14.remove(r15)     // Catch: java.lang.Throwable -> L20
            long r2 = r13.b0()     // Catch: java.lang.Throwable -> L20
            long r14 = r15.s0()     // Catch: java.lang.Throwable -> L20
            int r4 = (r2 > r14 ? 1 : (r2 == r14 ? 0 : -1))
            if (r4 == 0) goto L3a
            r1.unlock()
            return
        L3a:
            long r14 = r13.Y()     // Catch: java.lang.Throwable -> L20
            long r2 = r13.d0()     // Catch: java.lang.Throwable -> L20
            long r4 = r13.b0()     // Catch: java.lang.Throwable -> L20
            long r14 = kotlin.ranges.RangesKt.coerceAtMost(r14, r2)     // Catch: java.lang.Throwable -> L20
            int r6 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
            if (r6 > 0) goto L52
            r1.unlock()
            return
        L52:
            int r6 = r13.c0()     // Catch: java.lang.Throwable -> L20
        L56:
            int r7 = (r4 > r14 ? 1 : (r4 == r14 ? 0 : -1))
            if (r7 >= 0) goto Lcc
            java.lang.Object[] r7 = r13.f71062f     // Catch: java.lang.Throwable -> L20
            int r8 = r13.a0()     // Catch: java.lang.Throwable -> L20
            long r8 = (long) r8     // Catch: java.lang.Throwable -> L20
            long r8 = r4 % r8
            int r9 = (int) r8     // Catch: java.lang.Throwable -> L20
            r7[r9] = r0     // Catch: java.lang.Throwable -> L20
            int r7 = r13.a0()     // Catch: java.lang.Throwable -> L20
            r8 = 0
            r9 = 1
            if (r6 < r7) goto L70
            r7 = 1
            goto L71
        L70:
            r7 = 0
        L71:
            r10 = 1
            long r4 = r4 + r10
            r13.e0(r4)     // Catch: java.lang.Throwable -> L20
            int r6 = r6 + (-1)
            r13.f0(r6)     // Catch: java.lang.Throwable -> L20
            if (r7 == 0) goto L56
        L7e:
            kotlinx.coroutines.channels.a0 r7 = r13.T()     // Catch: java.lang.Throwable -> L20
            if (r7 != 0) goto L85
            goto L56
        L85:
            boolean r12 = r7 instanceof kotlinx.coroutines.channels.p     // Catch: java.lang.Throwable -> L20
            if (r12 == 0) goto L8a
            goto L56
        L8a:
            kotlinx.coroutines.internal.i0 r12 = r7.h0(r0)     // Catch: java.lang.Throwable -> L20
            if (r12 == 0) goto L7e
            boolean r14 = kotlinx.coroutines.v0.b()     // Catch: java.lang.Throwable -> L20
            if (r14 == 0) goto La4
            kotlinx.coroutines.internal.i0 r14 = kotlinx.coroutines.r.f72315d     // Catch: java.lang.Throwable -> L20
            if (r12 != r14) goto L9b
            r8 = 1
        L9b:
            if (r8 == 0) goto L9e
            goto La4
        L9e:
            java.lang.AssertionError r14 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L20
            r14.<init>()     // Catch: java.lang.Throwable -> L20
            throw r14     // Catch: java.lang.Throwable -> L20
        La4:
            java.lang.Object[] r14 = r13.f71062f     // Catch: java.lang.Throwable -> L20
            int r15 = r13.a0()     // Catch: java.lang.Throwable -> L20
            long r4 = (long) r15     // Catch: java.lang.Throwable -> L20
            long r4 = r2 % r4
            int r15 = (int) r4     // Catch: java.lang.Throwable -> L20
            java.lang.Object r4 = r7.f0()     // Catch: java.lang.Throwable -> L20
            r14[r15] = r4     // Catch: java.lang.Throwable -> L20
            int r6 = r6 + 1
            r13.f0(r6)     // Catch: java.lang.Throwable -> L20
            long r2 = r2 + r10
            r13.g0(r2)     // Catch: java.lang.Throwable -> L20
            kotlin.Unit r14 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L20
            r1.unlock()
            r7.e0()
            r13.X()
            r14 = r0
            r15 = r14
            goto L1
        Lcc:
            r1.unlock()
            return
        Ld0:
            r1.unlock()
            goto Ld5
        Ld4:
            throw r14
        Ld5:
            goto Ld4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.f.h0(kotlinx.coroutines.channels.f$a, kotlinx.coroutines.channels.f$a):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void i0(f fVar, a aVar, a aVar2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            aVar = null;
        }
        if ((i2 & 2) != 0) {
            aVar2 = null;
        }
        fVar.h0(aVar, aVar2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.b
    @NotNull
    public Object C(E e4) {
        ReentrantLock reentrantLock = this.f71061e;
        reentrantLock.lock();
        try {
            p<?> n4 = n();
            if (n4 == null) {
                int c02 = c0();
                if (c02 >= a0()) {
                    return kotlinx.coroutines.channels.a.f71041e;
                }
                long d02 = d0();
                this.f71062f[(int) (d02 % a0())] = e4;
                f0(c02 + 1);
                g0(d02 + 1);
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                X();
                return kotlinx.coroutines.channels.a.f71040d;
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
        ReentrantLock reentrantLock = this.f71061e;
        reentrantLock.lock();
        try {
            p<?> n4 = n();
            if (n4 == null) {
                int c02 = c0();
                if (c02 >= a0()) {
                    return kotlinx.coroutines.channels.a.f71041e;
                }
                if (!fVar.n()) {
                    return kotlinx.coroutines.selects.g.d();
                }
                long d02 = d0();
                this.f71062f[(int) (d02 % a0())] = e4;
                f0(c02 + 1);
                g0(d02 + 1);
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                X();
                return kotlinx.coroutines.channels.a.f71040d;
            }
            return n4;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.b, kotlinx.coroutines.channels.b0
    public boolean P(@Nullable Throwable th) {
        if (super.P(th)) {
            X();
            return true;
        }
        return false;
    }

    public final int a0() {
        return this.f71060d;
    }

    @Override // kotlinx.coroutines.channels.h
    public void b(@Nullable CancellationException cancellationException) {
        a(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.b
    @NotNull
    protected String l() {
        return "(buffer:capacity=" + this.f71062f.length + ",size=" + c0() + ')';
    }

    @Override // kotlinx.coroutines.channels.h
    @NotNull
    public ReceiveChannel<E> v() {
        a aVar = new a(this);
        i0(this, aVar, null, 2, null);
        return aVar;
    }

    @Override // kotlinx.coroutines.channels.b
    protected boolean x() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.b
    protected boolean y() {
        return c0() >= this.f71060d;
    }
}
