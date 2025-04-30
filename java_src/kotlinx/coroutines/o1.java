package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.DurationKt;
import kotlinx.coroutines.b1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventLoop.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0017\b \u0018\u00002\u00020\u00012\u00020\u0002:\u0004789:B\u0007¢\u0006\u0004\b6\u0010\rJ\u001b\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0017\u0010\rJ\u000f\u0010\u0018\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u0018\u0010\rJ%\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u00112\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\u00112\n\u0010\u001e\u001a\u00060\u0003j\u0002`\u0004H\u0004¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\"\u0010#J!\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\n\u0010\u001e\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b&\u0010'J\u0019\u0010(\u001a\u00020\u000b2\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b(\u0010)J\u001d\u0010*\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u000bH\u0004¢\u0006\u0004\b,\u0010\rR$\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00068B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0016\u00103\u001a\u00020\u00118T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b2\u0010#R\u0016\u00105\u001a\u00020\u00068T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b4\u0010/¨\u0006;"}, d2 = {"Lkotlinx/coroutines/o1;", "Lkotlinx/coroutines/p1;", "Lkotlinx/coroutines/b1;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "task", "", "Y", "(Ljava/lang/Runnable;)Z", "W", "()Ljava/lang/Runnable;", "", "V", "()V", "Lkotlinx/coroutines/o1$c;", "g0", "(Lkotlinx/coroutines/o1$c;)Z", "", "now", "delayedTask", "", "c0", "(JLkotlinx/coroutines/o1$c;)I", "Z", "shutdown", "timeMillis", "Lkotlinx/coroutines/p;", "continuation", com.sdk.a.g.f56552a, "(JLkotlinx/coroutines/p;)V", "block", "Lkotlinx/coroutines/j1;", "d0", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/j1;", "L", "()J", "Lkotlin/coroutines/CoroutineContext;", "context", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "X", "(Ljava/lang/Runnable;)V", "b0", "(JLkotlinx/coroutines/o1$c;)V", "a0", "value", "isCompleted", "()Z", "f0", "(Z)V", "F", "nextTime", "I", "isEmpty", "<init>", "a", "b", ai.aD, com.xinzhu.overmind.utils.helpers.d.f64708a, "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class o1 extends p1 implements b1 {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f72291d = AtomicReferenceFieldUpdater.newUpdater(o1.class, Object.class, "_queue");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f72292e = AtomicReferenceFieldUpdater.newUpdater(o1.class, Object.class, "_delayed");
    @NotNull
    private volatile /* synthetic */ Object _queue = null;
    @NotNull
    private volatile /* synthetic */ Object _delayed = null;
    @NotNull
    private volatile /* synthetic */ int _isCompleted = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EventLoop.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"kotlinx/coroutines/o1$a", "Lkotlinx/coroutines/o1$c;", "", "run", "", "toString", "Lkotlinx/coroutines/p;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/p;", "cont", "", "nanoTime", "<init>", "(Lkotlinx/coroutines/o1;JLkotlinx/coroutines/p;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final class a extends c {
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final p<Unit> f72293d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(long j4, @NotNull p<? super Unit> pVar) {
            super(j4);
            this.f72293d = pVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f72293d.M(o1.this, Unit.INSTANCE);
        }

        @Override // kotlinx.coroutines.o1.c
        @NotNull
        public String toString() {
            return Intrinsics.stringPlus(super.toString(), this.f72293d);
        }
    }

    /* compiled from: EventLoop.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\n\u0010\n\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u001a\u0010\n\u001a\u00060\u0006j\u0002`\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"kotlinx/coroutines/o1$b", "Lkotlinx/coroutines/o1$c;", "", "run", "", "toString", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Runnable;", "block", "", "nanoTime", "<init>", "(JLjava/lang/Runnable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class b extends c {
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final Runnable f72295d;

        public b(long j4, @NotNull Runnable runnable) {
            super(j4);
            this.f72295d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f72295d.run();
        }

        @Override // kotlinx.coroutines.o1.c
        @NotNull
        public String toString() {
            return Intrinsics.stringPlus(super.toString(), this.f72295d);
        }
    }

    /* compiled from: EventLoop.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\b \u0018\u00002\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020\u00040\u00032\u00020\u00052\u00020\u0006B\u000f\u0012\u0006\u0010+\u001a\u00020\n¢\u0006\u0004\b,\u0010-J\u0011\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0004H\u0096\u0002J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\u001e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0013J\b\u0010\u0016\u001a\u00020\u0015H\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\"\u0010!\u001a\u00020\b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R0\u0010(\u001a\b\u0012\u0002\b\u0003\u0018\u00010\"2\f\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\"8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0016\u0010+\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006."}, d2 = {"kotlinx/coroutines/o1$c", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "Lkotlinx/coroutines/o1$c;", "Lkotlinx/coroutines/j1;", "Lkotlinx/coroutines/internal/r0;", "other", "", "Y", "", "now", "", "k0", "Lkotlinx/coroutines/o1$d;", "delayed", "Lkotlinx/coroutines/o1;", "eventLoop", "a0", "", "dispose", "", "toString", "", "b", "Ljava/lang/Object;", "_heap", ai.aD, "I", "getIndex", "()I", "U", "(I)V", "index", "Lkotlinx/coroutines/internal/q0;", "value", "A", "()Lkotlinx/coroutines/internal/q0;", "m", "(Lkotlinx/coroutines/internal/q0;)V", "heap", "a", "J", "nanoTime", "<init>", "(J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static abstract class c implements Runnable, Comparable<c>, j1, kotlinx.coroutines.internal.r0 {
        @JvmField

        /* renamed from: a  reason: collision with root package name */
        public long f72296a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Object f72297b;

        /* renamed from: c  reason: collision with root package name */
        private int f72298c = -1;

        public c(long j4) {
            this.f72296a = j4;
        }

        @Override // kotlinx.coroutines.internal.r0
        @Nullable
        public kotlinx.coroutines.internal.q0<?> A() {
            Object obj = this.f72297b;
            if (obj instanceof kotlinx.coroutines.internal.q0) {
                return (kotlinx.coroutines.internal.q0) obj;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.r0
        public void U(int i2) {
            this.f72298c = i2;
        }

        @Override // java.lang.Comparable
        /* renamed from: Y */
        public int compareTo(@NotNull c cVar) {
            long j4 = this.f72296a - cVar.f72296a;
            if (j4 > 0) {
                return 1;
            }
            return j4 < 0 ? -1 : 0;
        }

        public final synchronized int a0(long j4, @NotNull d dVar, @NotNull o1 o1Var) {
            kotlinx.coroutines.internal.i0 i0Var;
            Object obj = this.f72297b;
            i0Var = r1.f72318a;
            if (obj == i0Var) {
                return 2;
            }
            synchronized (dVar) {
                c e4 = dVar.e();
                if (o1Var.isCompleted()) {
                    return 1;
                }
                if (e4 == null) {
                    dVar.f72299b = j4;
                } else {
                    long j5 = e4.f72296a;
                    if (j5 - j4 < 0) {
                        j4 = j5;
                    }
                    if (j4 - dVar.f72299b > 0) {
                        dVar.f72299b = j4;
                    }
                }
                long j6 = this.f72296a;
                long j7 = dVar.f72299b;
                if (j6 - j7 < 0) {
                    this.f72296a = j7;
                }
                dVar.a(this);
                return 0;
            }
        }

        @Override // kotlinx.coroutines.j1
        public final synchronized void dispose() {
            kotlinx.coroutines.internal.i0 i0Var;
            kotlinx.coroutines.internal.i0 i0Var2;
            Object obj = this.f72297b;
            i0Var = r1.f72318a;
            if (obj == i0Var) {
                return;
            }
            d dVar = obj instanceof d ? (d) obj : null;
            if (dVar != null) {
                dVar.j(this);
            }
            i0Var2 = r1.f72318a;
            this.f72297b = i0Var2;
        }

        @Override // kotlinx.coroutines.internal.r0
        public int getIndex() {
            return this.f72298c;
        }

        public final boolean k0(long j4) {
            return j4 - this.f72296a >= 0;
        }

        @Override // kotlinx.coroutines.internal.r0
        public void m(@Nullable kotlinx.coroutines.internal.q0<?> q0Var) {
            kotlinx.coroutines.internal.i0 i0Var;
            Object obj = this.f72297b;
            i0Var = r1.f72318a;
            if (obj != i0Var) {
                this.f72297b = q0Var;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        @NotNull
        public String toString() {
            return "Delayed[nanos=" + this.f72296a + ']';
        }
    }

    /* compiled from: EventLoop.common.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0006\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"kotlinx/coroutines/o1$d", "Lkotlinx/coroutines/internal/q0;", "Lkotlinx/coroutines/o1$c;", "", "b", "J", "timeNow", "<init>", "(J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class d extends kotlinx.coroutines.internal.q0<c> {
        @JvmField

        /* renamed from: b  reason: collision with root package name */
        public long f72299b;

        public d(long j4) {
            this.f72299b = j4;
        }
    }

    private final void V() {
        kotlinx.coroutines.internal.i0 i0Var;
        kotlinx.coroutines.internal.i0 i0Var2;
        if (v0.b() && !isCompleted()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72291d;
                i0Var = r1.f72325h;
                if (atomicReferenceFieldUpdater.compareAndSet(this, null, i0Var)) {
                    return;
                }
            } else if (!(obj instanceof kotlinx.coroutines.internal.v)) {
                i0Var2 = r1.f72325h;
                if (obj == i0Var2) {
                    return;
                }
                kotlinx.coroutines.internal.v vVar = new kotlinx.coroutines.internal.v(8, true);
                vVar.a((Runnable) obj);
                if (f72291d.compareAndSet(this, obj, vVar)) {
                    return;
                }
            } else {
                ((kotlinx.coroutines.internal.v) obj).d();
                return;
            }
        }
    }

    private final Runnable W() {
        kotlinx.coroutines.internal.i0 i0Var;
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                return null;
            }
            if (!(obj instanceof kotlinx.coroutines.internal.v)) {
                i0Var = r1.f72325h;
                if (obj == i0Var) {
                    return null;
                }
                if (f72291d.compareAndSet(this, obj, null)) {
                    return (Runnable) obj;
                }
            } else {
                kotlinx.coroutines.internal.v vVar = (kotlinx.coroutines.internal.v) obj;
                Object l4 = vVar.l();
                if (l4 != kotlinx.coroutines.internal.v.f72240t) {
                    return (Runnable) l4;
                }
                f72291d.compareAndSet(this, obj, vVar.k());
            }
        }
    }

    private final boolean Y(Runnable runnable) {
        kotlinx.coroutines.internal.i0 i0Var;
        while (true) {
            Object obj = this._queue;
            if (isCompleted()) {
                return false;
            }
            if (obj == null) {
                if (f72291d.compareAndSet(this, null, runnable)) {
                    return true;
                }
            } else if (!(obj instanceof kotlinx.coroutines.internal.v)) {
                i0Var = r1.f72325h;
                if (obj == i0Var) {
                    return false;
                }
                kotlinx.coroutines.internal.v vVar = new kotlinx.coroutines.internal.v(8, true);
                vVar.a((Runnable) obj);
                vVar.a(runnable);
                if (f72291d.compareAndSet(this, obj, vVar)) {
                    return true;
                }
            } else {
                kotlinx.coroutines.internal.v vVar2 = (kotlinx.coroutines.internal.v) obj;
                int a4 = vVar2.a(runnable);
                if (a4 == 0) {
                    return true;
                }
                if (a4 == 1) {
                    f72291d.compareAndSet(this, obj, vVar2.k());
                } else if (a4 == 2) {
                    return false;
                }
            }
        }
    }

    private final void Z() {
        kotlinx.coroutines.b b4 = kotlinx.coroutines.c.b();
        long nanoTime = b4 == null ? System.nanoTime() : b4.b();
        while (true) {
            d dVar = (d) this._delayed;
            c m4 = dVar == null ? null : dVar.m();
            if (m4 == null) {
                return;
            }
            P(nanoTime, m4);
        }
    }

    private final int c0(long j4, c cVar) {
        if (isCompleted()) {
            return 1;
        }
        d dVar = (d) this._delayed;
        if (dVar == null) {
            f72292e.compareAndSet(this, null, new d(j4));
            Object obj = this._delayed;
            Intrinsics.checkNotNull(obj);
            dVar = (d) obj;
        }
        return cVar.a0(j4, dVar, this);
    }

    private final void f0(boolean z3) {
        this._isCompleted = z3 ? 1 : 0;
    }

    private final boolean g0(c cVar) {
        d dVar = (d) this._delayed;
        return (dVar == null ? null : dVar.h()) == cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
    public final boolean isCompleted() {
        return this._isCompleted;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.n1
    public long F() {
        long coerceAtLeast;
        kotlinx.coroutines.internal.i0 i0Var;
        if (super.F() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof kotlinx.coroutines.internal.v)) {
                i0Var = r1.f72325h;
                return obj == i0Var ? Long.MAX_VALUE : 0L;
            } else if (!((kotlinx.coroutines.internal.v) obj).h()) {
                return 0L;
            }
        }
        d dVar = (d) this._delayed;
        c h4 = dVar == null ? null : dVar.h();
        if (h4 == null) {
            return Long.MAX_VALUE;
        }
        long j4 = h4.f72296a;
        kotlinx.coroutines.b b4 = kotlinx.coroutines.c.b();
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(j4 - (b4 == null ? System.nanoTime() : b4.b()), 0L);
        return coerceAtLeast;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.n1
    public boolean I() {
        kotlinx.coroutines.internal.i0 i0Var;
        if (K()) {
            d dVar = (d) this._delayed;
            if (dVar == null || dVar.g()) {
                Object obj = this._queue;
                if (obj != null) {
                    if (obj instanceof kotlinx.coroutines.internal.v) {
                        return ((kotlinx.coroutines.internal.v) obj).h();
                    }
                    i0Var = r1.f72325h;
                    if (obj != i0Var) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0057  */
    @Override // kotlinx.coroutines.n1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long L() {
        /*
            r9 = this;
            boolean r0 = r9.M()
            r1 = 0
            if (r0 == 0) goto L9
            return r1
        L9:
            java.lang.Object r0 = r9._delayed
            kotlinx.coroutines.o1$d r0 = (kotlinx.coroutines.o1.d) r0
            if (r0 == 0) goto L4d
            boolean r3 = r0.g()
            if (r3 != 0) goto L4d
            kotlinx.coroutines.b r3 = kotlinx.coroutines.c.b()
            if (r3 != 0) goto L20
            long r3 = java.lang.System.nanoTime()
            goto L24
        L20:
            long r3 = r3.b()
        L24:
            monitor-enter(r0)
            kotlinx.coroutines.internal.r0 r5 = r0.e()     // Catch: java.lang.Throwable -> L4a
            r6 = 0
            if (r5 != 0) goto L2e
            monitor-exit(r0)
            goto L45
        L2e:
            kotlinx.coroutines.o1$c r5 = (kotlinx.coroutines.o1.c) r5     // Catch: java.lang.Throwable -> L4a
            boolean r7 = r5.k0(r3)     // Catch: java.lang.Throwable -> L4a
            r8 = 0
            if (r7 == 0) goto L3c
            boolean r5 = r9.Y(r5)     // Catch: java.lang.Throwable -> L4a
            goto L3d
        L3c:
            r5 = 0
        L3d:
            if (r5 == 0) goto L44
            kotlinx.coroutines.internal.r0 r5 = r0.k(r8)     // Catch: java.lang.Throwable -> L4a
            r6 = r5
        L44:
            monitor-exit(r0)
        L45:
            kotlinx.coroutines.o1$c r6 = (kotlinx.coroutines.o1.c) r6
            if (r6 != 0) goto L24
            goto L4d
        L4a:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        L4d:
            java.lang.Runnable r0 = r9.W()
            if (r0 == 0) goto L57
            r0.run()
            return r1
        L57:
            long r0 = r9.F()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.o1.L():long");
    }

    public final void X(@NotNull Runnable runnable) {
        if (Y(runnable)) {
            R();
        } else {
            x0.f72534f.X(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a0() {
        this._queue = null;
        this._delayed = null;
    }

    public final void b0(long j4, @NotNull c cVar) {
        int c02 = c0(j4, cVar);
        if (c02 == 0) {
            if (g0(cVar)) {
                R();
            }
        } else if (c02 == 1) {
            P(j4, cVar);
        } else if (c02 != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final j1 d0(long j4, @NotNull Runnable runnable) {
        long d4 = r1.d(j4);
        if (d4 < DurationKt.MAX_MILLIS) {
            kotlinx.coroutines.b b4 = kotlinx.coroutines.c.b();
            long nanoTime = b4 == null ? System.nanoTime() : b4.b();
            b bVar = new b(d4 + nanoTime, runnable);
            b0(nanoTime, bVar);
            return bVar;
        }
        return p2.f72305a;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        X(runnable);
    }

    @Override // kotlinx.coroutines.b1
    public void g(long j4, @NotNull p<? super Unit> pVar) {
        long d4 = r1.d(j4);
        if (d4 < DurationKt.MAX_MILLIS) {
            kotlinx.coroutines.b b4 = kotlinx.coroutines.c.b();
            long nanoTime = b4 == null ? System.nanoTime() : b4.b();
            a aVar = new a(d4 + nanoTime, pVar);
            s.a(pVar, aVar);
            b0(nanoTime, aVar);
        }
    }

    @Override // kotlinx.coroutines.b1
    @NotNull
    public j1 p(long j4, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return b1.a.b(this, j4, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.n1
    protected void shutdown() {
        g3.f72123a.c();
        f0(true);
        V();
        do {
        } while (L() <= 0);
        Z();
    }

    @Override // kotlinx.coroutines.b1
    @Nullable
    public Object v(long j4, @NotNull Continuation<? super Unit> continuation) {
        return b1.a.a(this, j4, continuation);
    }
}
