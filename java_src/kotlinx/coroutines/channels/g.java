package kotlinx.coroutines.channels;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.b;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ArrayChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B9\u0012\u0006\u0010.\u001a\u00020\u0003\u0012\u0006\u0010;\u001a\u000208\u0012 \u0010H\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t\u0018\u00010Fj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`G¢\u0006\u0004\bI\u0010JJ\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\b\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00028\u00002\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010 \u001a\u00020\u001f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0014¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u001fH\u0014¢\u0006\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u001f8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0016\u0010.\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u001a\u00103\u001a\u00060/j\u0002`08\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u001e\u00107\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u00020\u001f8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b<\u0010&R\u0016\u0010>\u001a\u00020\u001f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u0010&R\u0016\u0010@\u001a\u00020\u001f8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b?\u0010&R\u0016\u0010B\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010-R\u0016\u0010D\u001a\u00020\u001f8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bC\u0010&R\u0016\u0010E\u001a\u00020\u001f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bE\u0010&¨\u0006K"}, d2 = {"Lkotlinx/coroutines/channels/g;", "E", "Lkotlinx/coroutines/channels/AbstractChannel;", "", "currentSize", "Lkotlinx/coroutines/internal/i0;", "t0", "(I)Lkotlinx/coroutines/internal/i0;", "element", "", "r0", "(ILjava/lang/Object;)V", "s0", "(I)V", "", "C", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/f;", "select", "D", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/a0;", "send", "k", "(Lkotlinx/coroutines/channels/a0;)Ljava/lang/Object;", "l0", "()Ljava/lang/Object;", "m0", "(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/x;", "receive", "", "b0", "(Lkotlinx/coroutines/channels/x;)Z", "wasClosed", "h0", "(Z)V", "y", "()Z", "isBufferFull", "", "l", "()Ljava/lang/String;", "bufferDebugString", com.xinzhu.overmind.utils.helpers.d.f64708a, "I", "capacity", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "f", "Ljava/util/concurrent/locks/ReentrantLock;", "lock", "", com.sdk.a.g.f56552a, "[Ljava/lang/Object;", "buffer", "Lkotlinx/coroutines/channels/BufferOverflow;", "e", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "f0", "isBufferEmpty", "isClosedForReceive", "x", "isBufferAlwaysFull", "h", "head", "e0", "isBufferAlwaysEmpty", "isEmpty", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class g<E> extends AbstractChannel<E> {

    /* renamed from: d  reason: collision with root package name */
    private final int f71066d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final BufferOverflow f71067e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final ReentrantLock f71068f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private Object[] f71069g;

    /* renamed from: h  reason: collision with root package name */
    private int f71070h;
    @NotNull
    private volatile /* synthetic */ int size;

    /* compiled from: ArrayChannel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public g(int i2, @NotNull BufferOverflow bufferOverflow, @Nullable Function1<? super E, Unit> function1) {
        super(function1);
        this.f71066d = i2;
        this.f71067e = bufferOverflow;
        if (i2 >= 1) {
            this.f71068f = new ReentrantLock();
            Object[] objArr = new Object[Math.min(i2, 8)];
            ArraysKt___ArraysJvmKt.fill$default(objArr, kotlinx.coroutines.channels.a.f71039c, 0, 0, 6, (Object) null);
            Unit unit = Unit.INSTANCE;
            this.f71069g = objArr;
            this.size = 0;
            return;
        }
        throw new IllegalArgumentException(("ArrayChannel capacity must be at least 1, but " + i2 + " was specified").toString());
    }

    private final void r0(int i2, E e4) {
        if (i2 < this.f71066d) {
            s0(i2);
            Object[] objArr = this.f71069g;
            objArr[(this.f71070h + i2) % objArr.length] = e4;
            return;
        }
        if (v0.b()) {
            if (!(this.f71067e == BufferOverflow.DROP_OLDEST)) {
                throw new AssertionError();
            }
        }
        Object[] objArr2 = this.f71069g;
        int i4 = this.f71070h;
        objArr2[i4 % objArr2.length] = null;
        objArr2[(i2 + i4) % objArr2.length] = e4;
        this.f71070h = (i4 + 1) % objArr2.length;
    }

    private final void s0(int i2) {
        Object[] objArr = this.f71069g;
        if (i2 >= objArr.length) {
            int min = Math.min(objArr.length * 2, this.f71066d);
            Object[] objArr2 = new Object[min];
            if (i2 > 0) {
                int i4 = 0;
                while (true) {
                    int i5 = i4 + 1;
                    Object[] objArr3 = this.f71069g;
                    objArr2[i4] = objArr3[(this.f71070h + i4) % objArr3.length];
                    if (i5 >= i2) {
                        break;
                    }
                    i4 = i5;
                }
            }
            ArraysKt___ArraysJvmKt.fill((i0[]) objArr2, kotlinx.coroutines.channels.a.f71039c, i2, min);
            this.f71069g = objArr2;
            this.f71070h = 0;
        }
    }

    private final i0 t0(int i2) {
        if (i2 < this.f71066d) {
            this.size = i2 + 1;
            return null;
        }
        int i4 = a.$EnumSwitchMapping$0[this.f71067e.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }
            return kotlinx.coroutines.channels.a.f71040d;
        }
        return kotlinx.coroutines.channels.a.f71041e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.b
    @NotNull
    public Object C(E e4) {
        y<E> Q;
        i0 t3;
        ReentrantLock reentrantLock = this.f71068f;
        reentrantLock.lock();
        try {
            int i2 = this.size;
            p<?> n4 = n();
            if (n4 == null) {
                i0 t02 = t0(i2);
                if (t02 == null) {
                    if (i2 == 0) {
                        do {
                            Q = Q();
                            if (Q != null) {
                                if (Q instanceof p) {
                                    this.size = i2;
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
                        this.size = i2;
                        Unit unit = Unit.INSTANCE;
                        reentrantLock.unlock();
                        Q.i(e4);
                        return Q.d();
                    }
                    r0(i2, e4);
                    return kotlinx.coroutines.channels.a.f71040d;
                }
                return t02;
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
        ReentrantLock reentrantLock = this.f71068f;
        reentrantLock.lock();
        try {
            int i2 = this.size;
            p<?> n4 = n();
            if (n4 == null) {
                i0 t02 = t0(i2);
                if (t02 == null) {
                    if (i2 == 0) {
                        while (true) {
                            b.d<E> j4 = j(e4);
                            Object s3 = fVar.s(j4);
                            if (s3 == null) {
                                this.size = i2;
                                y<? super E> o3 = j4.o();
                                Unit unit = Unit.INSTANCE;
                                reentrantLock.unlock();
                                Intrinsics.checkNotNull(o3);
                                y<? super E> yVar = o3;
                                yVar.i(e4);
                                return yVar.d();
                            } else if (s3 == kotlinx.coroutines.channels.a.f71041e) {
                                break;
                            } else if (s3 != kotlinx.coroutines.internal.c.f72163b) {
                                if (s3 != kotlinx.coroutines.selects.g.d() && !(s3 instanceof p)) {
                                    throw new IllegalStateException(Intrinsics.stringPlus("performAtomicTrySelect(describeTryOffer) returned ", s3).toString());
                                }
                                this.size = i2;
                                return s3;
                            }
                        }
                    }
                    if (!fVar.n()) {
                        this.size = i2;
                        return kotlinx.coroutines.selects.g.d();
                    }
                    r0(i2, e4);
                    return kotlinx.coroutines.channels.a.f71040d;
                }
                return t02;
            }
            return n4;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    public boolean b0(@NotNull x<? super E> xVar) {
        ReentrantLock reentrantLock = this.f71068f;
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
        return this.size == 0;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel, kotlinx.coroutines.channels.ReceiveChannel
    public boolean g() {
        ReentrantLock reentrantLock = this.f71068f;
        reentrantLock.lock();
        try {
            return super.g();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    public void h0(boolean z3) {
        Function1<E, Unit> function1 = this.f71046a;
        ReentrantLock reentrantLock = this.f71068f;
        reentrantLock.lock();
        try {
            int i2 = this.size;
            UndeliveredElementException undeliveredElementException = null;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = this.f71069g[this.f71070h];
                if (function1 != null && obj != kotlinx.coroutines.channels.a.f71039c) {
                    undeliveredElementException = OnUndeliveredElementKt.c(function1, obj, undeliveredElementException);
                }
                Object[] objArr = this.f71069g;
                int i5 = this.f71070h;
                objArr[i5] = kotlinx.coroutines.channels.a.f71039c;
                this.f71070h = (i5 + 1) % objArr.length;
            }
            this.size = 0;
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            super.h0(z3);
            if (undeliveredElementException != null) {
                throw undeliveredElementException;
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel, kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        ReentrantLock reentrantLock = this.f71068f;
        reentrantLock.lock();
        try {
            return g0();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.b
    @Nullable
    public Object k(@NotNull a0 a0Var) {
        ReentrantLock reentrantLock = this.f71068f;
        reentrantLock.lock();
        try {
            return super.k(a0Var);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.b
    @NotNull
    protected String l() {
        return "(buffer:capacity=" + this.f71066d + ",size=" + this.size + ')';
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    @Nullable
    protected Object l0() {
        ReentrantLock reentrantLock = this.f71068f;
        reentrantLock.lock();
        try {
            int i2 = this.size;
            if (i2 == 0) {
                Object n4 = n();
                if (n4 == null) {
                    n4 = kotlinx.coroutines.channels.a.f71042f;
                }
                return n4;
            }
            Object[] objArr = this.f71069g;
            int i4 = this.f71070h;
            Object obj = objArr[i4];
            a0 a0Var = null;
            objArr[i4] = null;
            this.size = i2 - 1;
            Object obj2 = kotlinx.coroutines.channels.a.f71042f;
            if (i2 == this.f71066d) {
                a0 a0Var2 = null;
                while (true) {
                    a0 T = T();
                    if (T == null) {
                        a0Var = a0Var2;
                        break;
                    }
                    i0 h02 = T.h0(null);
                    if (h02 != null) {
                        if (v0.b()) {
                            if (!(h02 == kotlinx.coroutines.r.f72315d)) {
                                throw new AssertionError();
                            }
                        }
                        obj2 = T.f0();
                        a0Var = T;
                        r6 = true;
                    } else {
                        T.i0();
                        a0Var2 = T;
                    }
                }
            }
            if (obj2 != kotlinx.coroutines.channels.a.f71042f && !(obj2 instanceof p)) {
                this.size = i2;
                Object[] objArr2 = this.f71069g;
                objArr2[(this.f71070h + i2) % objArr2.length] = obj2;
            }
            this.f71070h = (this.f71070h + 1) % this.f71069g.length;
            Unit unit = Unit.INSTANCE;
            if (r6) {
                Intrinsics.checkNotNull(a0Var);
                a0Var.e0();
            }
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0091 A[Catch: all -> 0x00ba, TRY_LEAVE, TryCatch #0 {all -> 0x00ba, blocks: (B:3:0x0005, B:5:0x0009, B:7:0x000f, B:10:0x0015, B:12:0x0029, B:14:0x0033, B:33:0x0077, B:35:0x007b, B:37:0x007f, B:43:0x00a1, B:38:0x008b, B:40:0x0091, B:16:0x0043, B:19:0x0048, B:22:0x004d, B:24:0x0053, B:27:0x005f, B:30:0x0066, B:31:0x0075), top: B:52:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b1  */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Object m0(@org.jetbrains.annotations.NotNull kotlinx.coroutines.selects.f<?> r9) {
        /*
            r8 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r8.f71068f
            r0.lock()
            int r1 = r8.size     // Catch: java.lang.Throwable -> Lba
            if (r1 != 0) goto L15
            kotlinx.coroutines.channels.p r9 = r8.n()     // Catch: java.lang.Throwable -> Lba
            if (r9 != 0) goto L11
            kotlinx.coroutines.internal.i0 r9 = kotlinx.coroutines.channels.a.f71042f     // Catch: java.lang.Throwable -> Lba
        L11:
            r0.unlock()
            return r9
        L15:
            java.lang.Object[] r2 = r8.f71069g     // Catch: java.lang.Throwable -> Lba
            int r3 = r8.f71070h     // Catch: java.lang.Throwable -> Lba
            r4 = r2[r3]     // Catch: java.lang.Throwable -> Lba
            r5 = 0
            r2[r3] = r5     // Catch: java.lang.Throwable -> Lba
            int r2 = r1 + (-1)
            r8.size = r2     // Catch: java.lang.Throwable -> Lba
            kotlinx.coroutines.internal.i0 r2 = kotlinx.coroutines.channels.a.f71042f     // Catch: java.lang.Throwable -> Lba
            int r3 = r8.f71066d     // Catch: java.lang.Throwable -> Lba
            r6 = 1
            if (r1 != r3) goto L76
        L29:
            kotlinx.coroutines.channels.AbstractChannel$g r3 = r8.Z()     // Catch: java.lang.Throwable -> Lba
            java.lang.Object r7 = r9.s(r3)     // Catch: java.lang.Throwable -> Lba
            if (r7 != 0) goto L43
            java.lang.Object r5 = r3.o()     // Catch: java.lang.Throwable -> Lba
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)     // Catch: java.lang.Throwable -> Lba
            r2 = r5
            kotlinx.coroutines.channels.a0 r2 = (kotlinx.coroutines.channels.a0) r2     // Catch: java.lang.Throwable -> Lba
            java.lang.Object r2 = r2.f0()     // Catch: java.lang.Throwable -> Lba
        L41:
            r3 = 1
            goto L77
        L43:
            kotlinx.coroutines.internal.i0 r3 = kotlinx.coroutines.channels.a.f71042f     // Catch: java.lang.Throwable -> Lba
            if (r7 != r3) goto L48
            goto L76
        L48:
            java.lang.Object r3 = kotlinx.coroutines.internal.c.f72163b     // Catch: java.lang.Throwable -> Lba
            if (r7 != r3) goto L4d
            goto L29
        L4d:
            java.lang.Object r2 = kotlinx.coroutines.selects.g.d()     // Catch: java.lang.Throwable -> Lba
            if (r7 != r2) goto L5f
            r8.size = r1     // Catch: java.lang.Throwable -> Lba
            java.lang.Object[] r9 = r8.f71069g     // Catch: java.lang.Throwable -> Lba
            int r1 = r8.f71070h     // Catch: java.lang.Throwable -> Lba
            r9[r1] = r4     // Catch: java.lang.Throwable -> Lba
            r0.unlock()
            return r7
        L5f:
            boolean r2 = r7 instanceof kotlinx.coroutines.channels.p     // Catch: java.lang.Throwable -> Lba
            if (r2 == 0) goto L66
            r2 = r7
            r5 = r2
            goto L41
        L66:
            java.lang.String r9 = "performAtomicTrySelect(describeTryOffer) returned "
            java.lang.String r9 = kotlin.jvm.internal.Intrinsics.stringPlus(r9, r7)     // Catch: java.lang.Throwable -> Lba
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lba
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> Lba
            r1.<init>(r9)     // Catch: java.lang.Throwable -> Lba
            throw r1     // Catch: java.lang.Throwable -> Lba
        L76:
            r3 = 0
        L77:
            kotlinx.coroutines.internal.i0 r7 = kotlinx.coroutines.channels.a.f71042f     // Catch: java.lang.Throwable -> Lba
            if (r2 == r7) goto L8b
            boolean r7 = r2 instanceof kotlinx.coroutines.channels.p     // Catch: java.lang.Throwable -> Lba
            if (r7 != 0) goto L8b
            r8.size = r1     // Catch: java.lang.Throwable -> Lba
            java.lang.Object[] r9 = r8.f71069g     // Catch: java.lang.Throwable -> Lba
            int r7 = r8.f71070h     // Catch: java.lang.Throwable -> Lba
            int r7 = r7 + r1
            int r1 = r9.length     // Catch: java.lang.Throwable -> Lba
            int r7 = r7 % r1
            r9[r7] = r2     // Catch: java.lang.Throwable -> Lba
            goto La1
        L8b:
            boolean r9 = r9.n()     // Catch: java.lang.Throwable -> Lba
            if (r9 != 0) goto La1
            r8.size = r1     // Catch: java.lang.Throwable -> Lba
            java.lang.Object[] r9 = r8.f71069g     // Catch: java.lang.Throwable -> Lba
            int r1 = r8.f71070h     // Catch: java.lang.Throwable -> Lba
            r9[r1] = r4     // Catch: java.lang.Throwable -> Lba
            java.lang.Object r9 = kotlinx.coroutines.selects.g.d()     // Catch: java.lang.Throwable -> Lba
            r0.unlock()
            return r9
        La1:
            int r9 = r8.f71070h     // Catch: java.lang.Throwable -> Lba
            int r9 = r9 + r6
            java.lang.Object[] r1 = r8.f71069g     // Catch: java.lang.Throwable -> Lba
            int r1 = r1.length     // Catch: java.lang.Throwable -> Lba
            int r9 = r9 % r1
            r8.f71070h = r9     // Catch: java.lang.Throwable -> Lba
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lba
            r0.unlock()
            if (r3 == 0) goto Lb9
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            kotlinx.coroutines.channels.a0 r5 = (kotlinx.coroutines.channels.a0) r5
            r5.e0()
        Lb9:
            return r4
        Lba:
            r9 = move-exception
            r0.unlock()
            goto Lc0
        Lbf:
            throw r9
        Lc0:
            goto Lbf
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.g.m0(kotlinx.coroutines.selects.f):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean x() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean y() {
        return this.size == this.f71066d && this.f71067e == BufferOverflow.SUSPEND;
    }
}
