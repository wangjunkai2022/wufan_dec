package kotlinx.coroutines;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.b1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Executors.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010%\u001a\u00020 ¢\u0006\u0004\b&\u0010'J.\u0010\f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000b*\u00020\u00032\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001c\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016J\u001e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0012H\u0016J$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\t2\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u0017\u001a\u00020\u000fH\u0016J\b\u0010\u0019\u001a\u00020\u0018H\u0016J\u0013\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001f\u001a\u00020\u001eH\u0016R\u001c\u0010%\u001a\u00020 8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006("}, d2 = {"Lkotlinx/coroutines/t1;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/b1;", "Ljava/util/concurrent/ScheduledExecutorService;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlin/coroutines/CoroutineContext;", "context", "", "timeMillis", "Ljava/util/concurrent/ScheduledFuture;", "B", "Ljava/util/concurrent/RejectedExecutionException;", "exception", "", ai.aB, "dispatch", "Lkotlinx/coroutines/p;", "continuation", com.sdk.a.g.f56552a, "Lkotlinx/coroutines/j1;", ai.av, "close", "", "toString", "", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "Ljava/util/concurrent/Executor;", "b", "Ljava/util/concurrent/Executor;", "y", "()Ljava/util/concurrent/Executor;", "executor", "<init>", "(Ljava/util/concurrent/Executor;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class t1 extends ExecutorCoroutineDispatcher implements b1 {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Executor f72497b;

    public t1(@NotNull Executor executor) {
        this.f72497b = executor;
        kotlinx.coroutines.internal.e.c(y());
    }

    private final ScheduledFuture<?> B(ScheduledExecutorService scheduledExecutorService, Runnable runnable, CoroutineContext coroutineContext, long j4) {
        try {
            return scheduledExecutorService.schedule(runnable, j4, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e4) {
            z(coroutineContext, e4);
            return null;
        }
    }

    private final void z(CoroutineContext coroutineContext, RejectedExecutionException rejectedExecutionException) {
        f2.g(coroutineContext, s1.a("The task was rejected", rejectedExecutionException));
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor y3 = y();
        ExecutorService executorService = y3 instanceof ExecutorService ? (ExecutorService) y3 : null;
        if (executorService == null) {
            return;
        }
        executorService.shutdown();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        try {
            Executor y3 = y();
            b b4 = c.b();
            y3.execute(b4 == null ? runnable : b4.i(runnable));
        } catch (RejectedExecutionException e4) {
            b b5 = c.b();
            if (b5 != null) {
                b5.f();
            }
            z(coroutineContext, e4);
            g1.c().dispatch(coroutineContext, runnable);
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof t1) && ((t1) obj).y() == y();
    }

    @Override // kotlinx.coroutines.b1
    public void g(long j4, @NotNull p<? super Unit> pVar) {
        Executor y3 = y();
        ScheduledExecutorService scheduledExecutorService = y3 instanceof ScheduledExecutorService ? (ScheduledExecutorService) y3 : null;
        ScheduledFuture<?> B = scheduledExecutorService != null ? B(scheduledExecutorService, new v2(this, pVar), pVar.getContext(), j4) : null;
        if (B != null) {
            f2.x(pVar, B);
        } else {
            x0.f72534f.g(j4, pVar);
        }
    }

    public int hashCode() {
        return System.identityHashCode(y());
    }

    @Override // kotlinx.coroutines.b1
    @NotNull
    public j1 p(long j4, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        Executor y3 = y();
        ScheduledExecutorService scheduledExecutorService = y3 instanceof ScheduledExecutorService ? (ScheduledExecutorService) y3 : null;
        ScheduledFuture<?> B = scheduledExecutorService != null ? B(scheduledExecutorService, runnable, coroutineContext, j4) : null;
        if (B != null) {
            return new i1(B);
        }
        return x0.f72534f.p(j4, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return y().toString();
    }

    @Override // kotlinx.coroutines.b1
    @Nullable
    public Object v(long j4, @NotNull Continuation<? super Unit> continuation) {
        return b1.a.a(this, j4, continuation);
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    public Executor y() {
        return this.f72497b;
    }
}
