package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommonPool.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000f\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b2\u0010\u0019J&\u0010\u0005\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0082\b¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J#\u0010\u0010\u001a\u00020\u000f2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\f2\u0006\u0010\u000e\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u001c\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\n\u0010\u0004\u001a\u00060\u0014j\u0002`\u0015H\u0016J\u000f\u0010\u0018\u001a\u00020\u0016H\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0016H\u0000¢\u0006\u0004\b\u001e\u0010\u0019J\b\u0010 \u001a\u00020\u001fH\u0016J\b\u0010!\u001a\u00020\u0016H\u0016R\u0016\u0010\u000e\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0016\u0010'\u001a\u00020$8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020$8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010\bR\u0016\u0010,\u001a\u00020\u001f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010-\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00101\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100¨\u00063"}, d2 = {"Lkotlinx/coroutines/b0;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "T", "Lkotlin/Function0;", "block", "F", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Ljava/util/concurrent/ExecutorService;", "I", "G", "Ljava/util/concurrent/Executor;", "J", "Ljava/lang/Class;", "fjpClass", "executor", "", "L", "(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;)Z", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "dispatch", "R", "()V", "", "timeout", "O", "(J)V", "N", "", "toString", "close", "y", "()Ljava/util/concurrent/Executor;", "", "K", "()I", "parallelism", com.xinzhu.overmind.utils.helpers.d.f64708a, "requestedParallelism", ai.aD, "Ljava/lang/String;", "DEFAULT_PARALLELISM_PROPERTY_NAME", "pool", "Ljava/util/concurrent/Executor;", "e", "Z", "usePrivatePool", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class b0 extends ExecutorCoroutineDispatcher {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final b0 f70761b = new b0();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final String f70762c = "kotlinx.coroutines.default.parallelism";

    /* renamed from: d  reason: collision with root package name */
    private static final int f70763d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f70764e;
    @Nullable
    private static volatile Executor pool;

    static {
        String str;
        Integer intOrNull;
        int intValue;
        try {
            str = System.getProperty(f70762c);
        } catch (Throwable unused) {
            str = null;
        }
        if (str == null) {
            intValue = -1;
        } else {
            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str);
            if (intOrNull != null && intOrNull.intValue() >= 1) {
                intValue = intOrNull.intValue();
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("Expected positive number in kotlinx.coroutines.default.parallelism, but has ", str).toString());
            }
        }
        f70763d = intValue;
    }

    private b0() {
    }

    private final <T> T F(Function0<? extends T> function0) {
        try {
            return function0.invoke();
        } catch (Throwable unused) {
            return null;
        }
    }

    private final ExecutorService G() {
        final AtomicInteger atomicInteger = new AtomicInteger();
        return Executors.newFixedThreadPool(K(), new ThreadFactory() { // from class: kotlinx.coroutines.a0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread H;
                H = b0.H(atomicInteger, runnable);
                return H;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread H(AtomicInteger atomicInteger, Runnable runnable) {
        Thread thread = new Thread(runnable, Intrinsics.stringPlus("CommonPool-worker-", Integer.valueOf(atomicInteger.incrementAndGet())));
        thread.setDaemon(true);
        return thread;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.concurrent.ExecutorService I() {
        /*
            r6 = this;
            java.lang.SecurityManager r0 = java.lang.System.getSecurityManager()
            if (r0 == 0) goto Lb
            java.util.concurrent.ExecutorService r0 = r6.G()
            return r0
        Lb:
            r0 = 0
            java.lang.String r1 = "java.util.concurrent.ForkJoinPool"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L13
            goto L14
        L13:
            r1 = r0
        L14:
            if (r1 != 0) goto L1b
            java.util.concurrent.ExecutorService r0 = r6.G()
            return r0
        L1b:
            boolean r2 = kotlinx.coroutines.b0.f70764e
            r3 = 0
            if (r2 != 0) goto L4b
            int r2 = kotlinx.coroutines.b0.f70763d
            if (r2 >= 0) goto L4b
            java.lang.String r2 = "commonPool"
            java.lang.Class[] r4 = new java.lang.Class[r3]     // Catch: java.lang.Throwable -> L39
            java.lang.reflect.Method r2 = r1.getMethod(r2, r4)     // Catch: java.lang.Throwable -> L39
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L39
            java.lang.Object r2 = r2.invoke(r0, r4)     // Catch: java.lang.Throwable -> L39
            boolean r4 = r2 instanceof java.util.concurrent.ExecutorService     // Catch: java.lang.Throwable -> L39
            if (r4 == 0) goto L39
            java.util.concurrent.ExecutorService r2 = (java.util.concurrent.ExecutorService) r2     // Catch: java.lang.Throwable -> L39
            goto L3a
        L39:
            r2 = r0
        L3a:
            if (r2 != 0) goto L3d
            goto L4b
        L3d:
            kotlinx.coroutines.b0 r4 = kotlinx.coroutines.b0.f70761b
            boolean r4 = r4.L(r1, r2)
            if (r4 == 0) goto L46
            goto L47
        L46:
            r2 = r0
        L47:
            if (r2 != 0) goto L4a
            goto L4b
        L4a:
            return r2
        L4b:
            r2 = 1
            java.lang.Class[] r4 = new java.lang.Class[r2]     // Catch: java.lang.Throwable -> L70
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> L70
            r4[r3] = r5     // Catch: java.lang.Throwable -> L70
            java.lang.reflect.Constructor r1 = r1.getConstructor(r4)     // Catch: java.lang.Throwable -> L70
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L70
            kotlinx.coroutines.b0 r4 = kotlinx.coroutines.b0.f70761b     // Catch: java.lang.Throwable -> L70
            int r4 = r4.K()     // Catch: java.lang.Throwable -> L70
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L70
            r2[r3] = r4     // Catch: java.lang.Throwable -> L70
            java.lang.Object r1 = r1.newInstance(r2)     // Catch: java.lang.Throwable -> L70
            boolean r2 = r1 instanceof java.util.concurrent.ExecutorService     // Catch: java.lang.Throwable -> L70
            if (r2 == 0) goto L71
            java.util.concurrent.ExecutorService r1 = (java.util.concurrent.ExecutorService) r1     // Catch: java.lang.Throwable -> L70
            r0 = r1
            goto L71
        L70:
        L71:
            if (r0 != 0) goto L77
            java.util.concurrent.ExecutorService r0 = r6.G()
        L77:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.b0.I():java.util.concurrent.ExecutorService");
    }

    private final synchronized Executor J() {
        Executor executor;
        executor = pool;
        if (executor == null) {
            executor = I();
            pool = executor;
        }
        return executor;
    }

    private final int K() {
        int coerceAtLeast;
        Integer valueOf = Integer.valueOf(f70763d);
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        if (valueOf == null) {
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(Runtime.getRuntime().availableProcessors() - 1, 1);
            return coerceAtLeast;
        }
        return valueOf.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(Runnable runnable) {
        throw new RejectedExecutionException("CommonPool was shutdown");
    }

    public final boolean L(@NotNull Class<?> cls, @NotNull ExecutorService executorService) {
        executorService.submit(new Runnable() { // from class: kotlinx.coroutines.y
            @Override // java.lang.Runnable
            public final void run() {
                b0.M();
            }
        });
        Integer num = null;
        try {
            Object invoke = cls.getMethod("getPoolSize", new Class[0]).invoke(executorService, new Object[0]);
            if (invoke instanceof Integer) {
                num = (Integer) invoke;
            }
        } catch (Throwable unused) {
        }
        return num != null && num.intValue() >= 1;
    }

    public final synchronized void N() {
        O(0L);
        f70764e = false;
        pool = null;
    }

    public final synchronized void O(long j4) {
        Executor executor = pool;
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService != null) {
            executorService.shutdown();
            if (j4 > 0) {
                executorService.awaitTermination(j4, TimeUnit.MILLISECONDS);
            }
            for (Runnable runnable : executorService.shutdownNow()) {
                x0.f72534f.X(runnable);
            }
        }
        pool = new Executor() { // from class: kotlinx.coroutines.z
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable2) {
                b0.P(runnable2);
            }
        };
    }

    public final synchronized void R() {
        O(0L);
        f70764e = true;
        pool = null;
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool".toString());
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        try {
            Executor executor = pool;
            if (executor == null) {
                executor = J();
            }
            b b4 = c.b();
            executor.execute(b4 == null ? runnable : b4.i(runnable));
        } catch (RejectedExecutionException unused) {
            b b5 = c.b();
            if (b5 != null) {
                b5.f();
            }
            x0.f72534f.X(runnable);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return "CommonPool";
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    public Executor y() {
        Executor executor = pool;
        return executor == null ? J() : executor;
    }
}
