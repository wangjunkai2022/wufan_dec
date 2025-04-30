package kotlinx.coroutines.scheduling;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WorkQueue.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)J\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u0012*\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0015\u0010\u0011J!\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0000¢\u0006\u0004\b\u001b\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\f¢\u0006\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u001f8@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u001f8@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b#\u0010!R\u001e\u0010'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010&¨\u0006*"}, d2 = {"Lkotlinx/coroutines/scheduling/m;", "", "Lkotlinx/coroutines/scheduling/i;", "task", ai.aD, "(Lkotlinx/coroutines/scheduling/i;)Lkotlinx/coroutines/scheduling/i;", "victim", "", "blockingOnly", "", "m", "(Lkotlinx/coroutines/scheduling/m;Z)J", "Lkotlinx/coroutines/scheduling/d;", "queue", "j", "(Lkotlinx/coroutines/scheduling/d;)Z", ai.aA, "()Lkotlinx/coroutines/scheduling/i;", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlinx/coroutines/scheduling/i;)V", "h", "fair", "a", "(Lkotlinx/coroutines/scheduling/i;Z)Lkotlinx/coroutines/scheduling/i;", "l", "(Lkotlinx/coroutines/scheduling/m;)J", "k", "globalQueue", com.sdk.a.g.f56552a, "(Lkotlinx/coroutines/scheduling/d;)V", "", "f", "()I", "size", "e", "bufferSize", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "buffer", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class m {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f72391b = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "lastScheduledTask");

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f72392c = AtomicIntegerFieldUpdater.newUpdater(m.class, "producerIndex");

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f72393d = AtomicIntegerFieldUpdater.newUpdater(m.class, "consumerIndex");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f72394e = AtomicIntegerFieldUpdater.newUpdater(m.class, "blockingTasksInBuffer");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReferenceArray<i> f72395a = new AtomicReferenceArray<>(128);
    @NotNull
    private volatile /* synthetic */ Object lastScheduledTask = null;
    @NotNull
    private volatile /* synthetic */ int producerIndex = 0;
    @NotNull
    private volatile /* synthetic */ int consumerIndex = 0;
    @NotNull
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    public static /* synthetic */ i b(m mVar, i iVar, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return mVar.a(iVar, z3);
    }

    private final i c(i iVar) {
        if (iVar.f72379b.r() == 1) {
            f72394e.incrementAndGet(this);
        }
        if (e() == 127) {
            return iVar;
        }
        int i2 = this.producerIndex & 127;
        while (this.f72395a.get(i2) != null) {
            Thread.yield();
        }
        this.f72395a.lazySet(i2, iVar);
        f72392c.incrementAndGet(this);
        return null;
    }

    private final void d(i iVar) {
        if (iVar != null) {
            if (iVar.f72379b.r() == 1) {
                int decrementAndGet = f72394e.decrementAndGet(this);
                if (v0.b()) {
                    if (!(decrementAndGet >= 0)) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }

    private final i i() {
        i andSet;
        while (true) {
            int i2 = this.consumerIndex;
            if (i2 - this.producerIndex == 0) {
                return null;
            }
            int i4 = i2 & 127;
            if (f72393d.compareAndSet(this, i2, i2 + 1) && (andSet = this.f72395a.getAndSet(i4, null)) != null) {
                d(andSet);
                return andSet;
            }
        }
    }

    private final boolean j(d dVar) {
        i i2 = i();
        if (i2 == null) {
            return false;
        }
        dVar.a(i2);
        return true;
    }

    private final long m(m mVar, boolean z3) {
        i iVar;
        do {
            iVar = (i) mVar.lastScheduledTask;
            if (iVar == null) {
                return -2L;
            }
            if (z3) {
                if (!(iVar.f72379b.r() == 1)) {
                    return -2L;
                }
            }
            long a4 = l.f72388h.a() - iVar.f72378a;
            long j4 = l.f72383c;
            if (a4 < j4) {
                return j4 - a4;
            }
        } while (!f72391b.compareAndSet(mVar, iVar, null));
        b(this, iVar, false, 2, null);
        return -1L;
    }

    @Nullable
    public final i a(@NotNull i iVar, boolean z3) {
        if (z3) {
            return c(iVar);
        }
        i iVar2 = (i) f72391b.getAndSet(this, iVar);
        if (iVar2 == null) {
            return null;
        }
        return c(iVar2);
    }

    public final int e() {
        return this.producerIndex - this.consumerIndex;
    }

    public final int f() {
        return this.lastScheduledTask != null ? e() + 1 : e();
    }

    public final void g(@NotNull d dVar) {
        i iVar = (i) f72391b.getAndSet(this, null);
        if (iVar != null) {
            dVar.a(iVar);
        }
        do {
        } while (j(dVar));
    }

    @Nullable
    public final i h() {
        i iVar = (i) f72391b.getAndSet(this, null);
        return iVar == null ? i() : iVar;
    }

    public final long k(@NotNull m mVar) {
        if (v0.b()) {
            if (!(e() == 0)) {
                throw new AssertionError();
            }
        }
        int i2 = mVar.producerIndex;
        AtomicReferenceArray<i> atomicReferenceArray = mVar.f72395a;
        for (int i4 = mVar.consumerIndex; i4 != i2; i4++) {
            int i5 = i4 & 127;
            if (mVar.blockingTasksInBuffer == 0) {
                break;
            }
            i iVar = atomicReferenceArray.get(i5);
            if (iVar != null) {
                if ((iVar.f72379b.r() == 1) && atomicReferenceArray.compareAndSet(i5, iVar, null)) {
                    f72394e.decrementAndGet(mVar);
                    b(this, iVar, false, 2, null);
                    return -1L;
                }
            }
        }
        return m(mVar, true);
    }

    public final long l(@NotNull m mVar) {
        if (v0.b()) {
            if (!(e() == 0)) {
                throw new AssertionError();
            }
        }
        i i2 = mVar.i();
        if (i2 != null) {
            i b4 = b(this, i2, false, 2, null);
            if (v0.b()) {
                if (b4 == null) {
                    return -1L;
                }
                throw new AssertionError();
            }
            return -1L;
        }
        return m(mVar, false);
    }
}
