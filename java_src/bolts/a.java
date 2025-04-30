package bolts;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: AndroidExecutors.java */
/* loaded from: classes2.dex */
final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final a f8203b = new a();

    /* renamed from: c  reason: collision with root package name */
    private static final int f8204c;

    /* renamed from: d  reason: collision with root package name */
    static final int f8205d;

    /* renamed from: e  reason: collision with root package name */
    static final int f8206e;

    /* renamed from: f  reason: collision with root package name */
    static final long f8207f = 1;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f8208a = new b();

    /* compiled from: AndroidExecutors.java */
    /* loaded from: classes2.dex */
    private static class b implements Executor {
        private b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f8204c = availableProcessors;
        f8205d = availableProcessors + 1;
        f8206e = (availableProcessors * 2) + 1;
    }

    private a() {
    }

    @SuppressLint({"NewApi"})
    public static void a(ThreadPoolExecutor threadPoolExecutor, boolean z3) {
        if (Build.VERSION.SDK_INT >= 9) {
            threadPoolExecutor.allowCoreThreadTimeOut(z3);
        }
    }

    public static ExecutorService b() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f8205d, f8206e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    public static ExecutorService c(ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f8205d, f8206e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    public static Executor d() {
        return f8203b.f8208a;
    }
}
