package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultExecutor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0011\bÀ\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\t\b\u0002¢\u0006\u0004\b5\u0010\u0013J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\n\u0010\f\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0011\u001a\u00020\bH\u0016J\u000f\u0010\u0012\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\nR\u0016\u0010\u0018\u001a\u00020\u00068B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00068@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0017R\u0016\u0010\u001d\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00048T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010'R\u001e\u0010)\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b)\u0010*\u0012\u0004\b+\u0010\u0013R\u0016\u0010-\u001a\u00020\u001e8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b,\u0010 R\u0016\u0010/\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b.\u0010\u001cR\u0016\u00101\u001a\u00020\u001e8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u0010 R\u0016\u00102\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010 R\u0016\u00104\u001a\u00020\u001e8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u0010 ¨\u00066"}, d2 = {"Lkotlinx/coroutines/x0;", "Lkotlinx/coroutines/o1;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "Ljava/lang/Thread;", "i0", "", "o0", "", "h0", "", "timeMillis", "block", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/j1;", ai.av, "run", "j0", "()V", "timeout", "p0", "m0", "()Z", "isShutdownRequested", "n0", "isThreadPresent", ai.aA, "J", "KEEP_ALIVE_NANOS", "", "j", "I", "FRESH", "O", "()Ljava/lang/Thread;", "thread", "", com.sdk.a.g.f56552a, "Ljava/lang/String;", "THREAD_NAME", "_thread", "Ljava/lang/Thread;", "get_thread$annotations", "m", "SHUTDOWN_ACK", "h", "DEFAULT_KEEP_ALIVE", "k", "ACTIVE", "debugStatus", "l", "SHUTDOWN_REQ", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class x0 extends o1 implements Runnable {
    @Nullable
    private static volatile Thread _thread = null;
    private static volatile int debugStatus = 0;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final x0 f72534f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final String f72535g = "kotlinx.coroutines.DefaultExecutor";

    /* renamed from: h  reason: collision with root package name */
    private static final long f72536h = 1000;

    /* renamed from: i  reason: collision with root package name */
    private static final long f72537i;

    /* renamed from: j  reason: collision with root package name */
    private static final int f72538j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static final int f72539k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static final int f72540l = 2;

    /* renamed from: m  reason: collision with root package name */
    private static final int f72541m = 3;

    static {
        Long l4;
        x0 x0Var = new x0();
        f72534f = x0Var;
        n1.H(x0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l4 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l4 = 1000L;
        }
        f72537i = timeUnit.toNanos(l4.longValue());
    }

    private x0() {
    }

    private final synchronized void h0() {
        if (m0()) {
            debugStatus = 3;
            a0();
            notifyAll();
        }
    }

    private final synchronized Thread i0() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, f72535g);
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private static /* synthetic */ void l0() {
    }

    private final boolean m0() {
        int i2 = debugStatus;
        return i2 == 2 || i2 == 3;
    }

    private final synchronized boolean o0() {
        if (m0()) {
            return false;
        }
        debugStatus = 1;
        notifyAll();
        return true;
    }

    @Override // kotlinx.coroutines.p1
    @NotNull
    protected Thread O() {
        Thread thread = _thread;
        return thread == null ? i0() : thread;
    }

    public final synchronized void j0() {
        boolean z3 = true;
        if (v0.b()) {
            if (!(_thread == null)) {
                throw new AssertionError();
            }
        }
        if (v0.b()) {
            if (debugStatus != 0 && debugStatus != 3) {
                z3 = false;
            }
            throw new AssertionError();
        }
        debugStatus = 0;
        i0();
        while (debugStatus == 0) {
            wait();
        }
    }

    public final boolean n0() {
        return _thread != null;
    }

    @Override // kotlinx.coroutines.o1, kotlinx.coroutines.b1
    @NotNull
    public j1 p(long j4, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return d0(j4, runnable);
    }

    public final synchronized void p0(long j4) {
        long currentTimeMillis = System.currentTimeMillis() + j4;
        if (!m0()) {
            debugStatus = 2;
        }
        while (debugStatus != 3 && _thread != null) {
            Thread thread = _thread;
            if (thread != null) {
                b b4 = c.b();
                if (b4 == null) {
                    LockSupport.unpark(thread);
                } else {
                    b4.g(thread);
                }
            }
            if (currentTimeMillis - System.currentTimeMillis() <= 0) {
                break;
            }
            wait(j4);
        }
        debugStatus = 0;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean I;
        g3.f72123a.d(this);
        b b4 = c.b();
        if (b4 != null) {
            b4.d();
        }
        try {
            if (!o0()) {
                if (I) {
                    return;
                }
                return;
            }
            long j4 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long L = L();
                if (L == Long.MAX_VALUE) {
                    b b5 = c.b();
                    long nanoTime = b5 == null ? System.nanoTime() : b5.b();
                    if (j4 == Long.MAX_VALUE) {
                        j4 = f72537i + nanoTime;
                    }
                    long j5 = j4 - nanoTime;
                    if (j5 <= 0) {
                        _thread = null;
                        h0();
                        b b6 = c.b();
                        if (b6 != null) {
                            b6.h();
                        }
                        if (I()) {
                            return;
                        }
                        O();
                        return;
                    }
                    L = RangesKt___RangesKt.coerceAtMost(L, j5);
                } else {
                    j4 = Long.MAX_VALUE;
                }
                if (L > 0) {
                    if (m0()) {
                        _thread = null;
                        h0();
                        b b7 = c.b();
                        if (b7 != null) {
                            b7.h();
                        }
                        if (I()) {
                            return;
                        }
                        O();
                        return;
                    }
                    b b8 = c.b();
                    if (b8 == null) {
                        LockSupport.parkNanos(this, L);
                    } else {
                        b8.c(this, L);
                    }
                }
            }
        } finally {
            _thread = null;
            h0();
            b b9 = c.b();
            if (b9 != null) {
                b9.h();
            }
            if (!I()) {
                O();
            }
        }
    }
}
