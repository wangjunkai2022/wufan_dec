package kotlinx.coroutines.scheduling;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.x0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dispatcher.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0017\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010,\u001a\u00020\u000f\u0012\u0006\u0010*\u001a\u00020\u000f\u0012\u0006\u0010(\u001a\u00020\u001b\u0012\b\b\u0002\u0010&\u001a\u00020\r¢\u0006\u0004\b0\u00101B'\b\u0016\u0012\b\b\u0002\u0010,\u001a\u00020\u000f\u0012\b\b\u0002\u0010*\u001a\u00020\u000f\u0012\b\b\u0002\u0010&\u001a\u00020\r¢\u0006\u0004\b0\u00102B\u001d\b\u0017\u0012\b\b\u0002\u0010,\u001a\u00020\u000f\u0012\b\b\u0002\u0010*\u001a\u00020\u000f¢\u0006\u0004\b0\u00103J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007H\u0016J\u001c\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007H\u0016J\b\u0010\f\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fJ+\u0010\u0017\u001a\u00020\t2\n\u0010\b\u001a\u00060\u0006j\u0002`\u00072\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0015H\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001bH\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\tH\u0000¢\u0006\u0004\b\u001f\u0010\u001aR\u0016\u0010#\u001a\u00020 8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010\u0019R\u0016\u0010*\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010\u001dR\u0016\u0010,\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010\u001dR\u0016\u0010/\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u00064"}, d2 = {"Lkotlinx/coroutines/scheduling/c;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "C", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "dispatchYield", "close", "", "toString", "", "parallelism", "Lkotlinx/coroutines/CoroutineDispatcher;", ai.aB, "G", "Lkotlinx/coroutines/scheduling/j;", "", "tailDispatch", "F", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;Z)V", "J", "()V", "", "timeout", "I", "(J)V", "H", "Ljava/util/concurrent/Executor;", "y", "()Ljava/util/concurrent/Executor;", "executor", "e", "Ljava/lang/String;", "schedulerName", com.xinzhu.overmind.utils.helpers.d.f64708a, "idleWorkerKeepAliveNs", ai.aD, "maxPoolSize", "b", "corePoolSize", "f", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "coroutineScheduler", "<init>", "(IIJLjava/lang/String;)V", "(IILjava/lang/String;)V", "(II)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public class c extends ExecutorCoroutineDispatcher {

    /* renamed from: b  reason: collision with root package name */
    private final int f72364b;

    /* renamed from: c  reason: collision with root package name */
    private final int f72365c;

    /* renamed from: d  reason: collision with root package name */
    private final long f72366d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f72367e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private CoroutineScheduler f72368f;

    public /* synthetic */ c(int i2, int i4, long j4, String str, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, i4, j4, (i5 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    public static /* synthetic */ CoroutineDispatcher B(c cVar, int i2, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 1) != 0) {
                i2 = l.f72384d;
            }
            return cVar.z(i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: blocking");
    }

    private final CoroutineScheduler C() {
        return new CoroutineScheduler(this.f72364b, this.f72365c, this.f72366d, this.f72367e);
    }

    public final void F(@NotNull Runnable runnable, @NotNull j jVar, boolean z3) {
        try {
            this.f72368f.n(runnable, jVar, z3);
        } catch (RejectedExecutionException unused) {
            x0.f72534f.X(this.f72368f.g(runnable, jVar));
        }
    }

    @NotNull
    public final CoroutineDispatcher G(int i2) {
        if (i2 > 0) {
            if (i2 <= this.f72364b) {
                return new e(this, i2, null, 0);
            }
            throw new IllegalArgumentException(("Expected parallelism level lesser than core pool size (" + this.f72364b + "), but have " + i2).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Expected positive parallelism level, but have ", Integer.valueOf(i2)).toString());
    }

    public final void H() {
        J();
    }

    public final synchronized void I(long j4) {
        this.f72368f.z(j4);
    }

    public final synchronized void J() {
        this.f72368f.z(1000L);
        this.f72368f = C();
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f72368f.close();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        try {
            CoroutineScheduler.o(this.f72368f, runnable, null, false, 6, null);
        } catch (RejectedExecutionException unused) {
            x0.f72534f.dispatch(coroutineContext, runnable);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        try {
            CoroutineScheduler.o(this.f72368f, runnable, null, true, 2, null);
        } catch (RejectedExecutionException unused) {
            x0.f72534f.dispatchYield(coroutineContext, runnable);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return super.toString() + "[scheduler = " + this.f72368f + ']';
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    public Executor y() {
        return this.f72368f;
    }

    @NotNull
    public final CoroutineDispatcher z(int i2) {
        if (i2 > 0) {
            return new e(this, i2, null, 1);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Expected positive parallelism level, but have ", Integer.valueOf(i2)).toString());
    }

    public c(int i2, int i4, long j4, @NotNull String str) {
        this.f72364b = i2;
        this.f72365c = i4;
        this.f72366d = j4;
        this.f72367e = str;
        this.f72368f = C();
    }

    public /* synthetic */ c(int i2, int i4, String str, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? l.f72385e : i2, (i5 & 2) != 0 ? l.f72386f : i4, (i5 & 4) != 0 ? l.f72382b : str);
    }

    public c(int i2, int i4, @NotNull String str) {
        this(i2, i4, l.f72387g, str);
    }

    public /* synthetic */ c(int i2, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? l.f72385e : i2, (i5 & 2) != 0 ? l.f72386f : i4);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility for Ktor 1.0-beta")
    public /* synthetic */ c(int i2, int i4) {
        this(i2, i4, l.f72387g, null, 8, null);
    }
}
