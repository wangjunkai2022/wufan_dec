package kotlinx.coroutines.scheduling;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Dispatcher.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B)\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u0010$\u001a\u00020\u001a\u0012\b\u0010/\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001a¢\u0006\u0004\b0\u00101J#\u0010\n\u001a\u00020\t2\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\r\u001a\u00020\t2\n\u0010\f\u001a\u00060\u0004j\u0002`\u0005H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0019\u0010\u0010R\u001c\u0010\u001f\u001a\u00020\u001a8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u001cR \u0010(\u001a\f\u0012\b\u0012\u00060\u0004j\u0002`\u00050%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.¨\u00062"}, d2 = {"Lkotlinx/coroutines/scheduling/e;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/scheduling/j;", "Ljava/util/concurrent/Executor;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "tailDispatch", "", ai.aB, "(Ljava/lang/Runnable;Z)V", "command", "execute", "(Ljava/lang/Runnable;)V", "close", "()V", "Lkotlin/coroutines/CoroutineContext;", "context", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "dispatchYield", "", "toString", "()Ljava/lang/String;", "q", "", "e", "I", net.lingala.zip4j.util.e.f73017f0, "()I", "taskMode", "y", "()Ljava/util/concurrent/Executor;", "executor", ai.aD, "parallelism", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "f", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "queue", "Lkotlinx/coroutines/scheduling/c;", "b", "Lkotlinx/coroutines/scheduling/c;", "dispatcher", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/String;", "name", "<init>", "(Lkotlinx/coroutines/scheduling/c;ILjava/lang/String;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class e extends ExecutorCoroutineDispatcher implements j, Executor {

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f72369g = AtomicIntegerFieldUpdater.newUpdater(e.class, "inFlightTasks");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final c f72370b;

    /* renamed from: c  reason: collision with root package name */
    private final int f72371c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f72372d;

    /* renamed from: e  reason: collision with root package name */
    private final int f72373e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final ConcurrentLinkedQueue<Runnable> f72374f = new ConcurrentLinkedQueue<>();
    @NotNull
    private volatile /* synthetic */ int inFlightTasks = 0;

    public e(@NotNull c cVar, int i2, @Nullable String str, int i4) {
        this.f72370b = cVar;
        this.f72371c = i2;
        this.f72372d = str;
        this.f72373e = i4;
    }

    private final void z(Runnable runnable, boolean z3) {
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f72369g;
            if (atomicIntegerFieldUpdater.incrementAndGet(this) <= this.f72371c) {
                this.f72370b.F(runnable, this, z3);
                return;
            }
            this.f72374f.add(runnable);
            if (atomicIntegerFieldUpdater.decrementAndGet(this) >= this.f72371c) {
                return;
            }
            runnable = this.f72374f.poll();
        } while (runnable != null);
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        z(runnable, false);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        z(runnable, true);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        z(runnable, false);
    }

    @Override // kotlinx.coroutines.scheduling.j
    public void q() {
        Runnable poll = this.f72374f.poll();
        if (poll != null) {
            this.f72370b.F(poll, this, true);
            return;
        }
        f72369g.decrementAndGet(this);
        Runnable poll2 = this.f72374f.poll();
        if (poll2 == null) {
            return;
        }
        z(poll2, true);
    }

    @Override // kotlinx.coroutines.scheduling.j
    public int r() {
        return this.f72373e;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String str = this.f72372d;
        if (str == null) {
            return super.toString() + "[dispatcher = " + this.f72370b + ']';
        }
        return str;
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    public Executor y() {
        return this;
    }
}
