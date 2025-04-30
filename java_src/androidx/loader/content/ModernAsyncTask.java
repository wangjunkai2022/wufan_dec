package androidx.loader.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import androidx.annotation.RestrictTo;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
abstract class ModernAsyncTask<Params, Progress, Result> {
    public static final Executor THREAD_POOL_EXECUTOR;

    /* renamed from: f  reason: collision with root package name */
    private static final String f6385f = "AsyncTask";

    /* renamed from: g  reason: collision with root package name */
    private static final int f6386g = 5;

    /* renamed from: h  reason: collision with root package name */
    private static final int f6387h = 128;

    /* renamed from: i  reason: collision with root package name */
    private static final int f6388i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final ThreadFactory f6389j;

    /* renamed from: k  reason: collision with root package name */
    private static final BlockingQueue<Runnable> f6390k;

    /* renamed from: l  reason: collision with root package name */
    private static final int f6391l = 1;

    /* renamed from: m  reason: collision with root package name */
    private static final int f6392m = 2;

    /* renamed from: n  reason: collision with root package name */
    private static InternalHandler f6393n;

    /* renamed from: o  reason: collision with root package name */
    private static volatile Executor f6394o;

    /* renamed from: a  reason: collision with root package name */
    private final WorkerRunnable<Params, Result> f6395a;

    /* renamed from: b  reason: collision with root package name */
    private final FutureTask<Result> f6396b;

    /* renamed from: c  reason: collision with root package name */
    private volatile Status f6397c = Status.PENDING;

    /* renamed from: d  reason: collision with root package name */
    final AtomicBoolean f6398d = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    final AtomicBoolean f6399e = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.loader.content.ModernAsyncTask$4  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6403a;

        static {
            int[] iArr = new int[Status.values().length];
            f6403a = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6403a[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AsyncTaskResult<Data> {

        /* renamed from: a  reason: collision with root package name */
        final ModernAsyncTask f6404a;

        /* renamed from: b  reason: collision with root package name */
        final Data[] f6405b;

        AsyncTaskResult(ModernAsyncTask modernAsyncTask, Data... dataArr) {
            this.f6404a = modernAsyncTask;
            this.f6405b = dataArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class InternalHandler extends Handler {
        InternalHandler() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            int i2 = message.what;
            if (i2 == 1) {
                asyncTaskResult.f6404a.b(asyncTaskResult.f6405b[0]);
            } else if (i2 != 2) {
            } else {
                asyncTaskResult.f6404a.h(asyncTaskResult.f6405b);
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class WorkerRunnable<Params, Result> implements Callable<Result> {

        /* renamed from: a  reason: collision with root package name */
        Params[] f6406a;

        WorkerRunnable() {
        }
    }

    static {
        ThreadFactory threadFactory = new ThreadFactory() { // from class: androidx.loader.content.ModernAsyncTask.1

            /* renamed from: a  reason: collision with root package name */
            private final AtomicInteger f6400a = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "ModernAsyncTask #" + this.f6400a.getAndIncrement());
            }
        };
        f6389j = threadFactory;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        f6390k = linkedBlockingQueue;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactory);
        THREAD_POOL_EXECUTOR = threadPoolExecutor;
        f6394o = threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModernAsyncTask() {
        WorkerRunnable<Params, Result> workerRunnable = new WorkerRunnable<Params, Result>() { // from class: androidx.loader.content.ModernAsyncTask.2
            @Override // java.util.concurrent.Callable
            public Result call() throws Exception {
                ModernAsyncTask.this.f6399e.set(true);
                Result result = null;
                try {
                    Process.setThreadPriority(10);
                    result = (Result) ModernAsyncTask.this.a(this.f6406a);
                    Binder.flushPendingCommands();
                    return result;
                } finally {
                }
            }
        };
        this.f6395a = workerRunnable;
        this.f6396b = new FutureTask<Result>(workerRunnable) { // from class: androidx.loader.content.ModernAsyncTask.3
            @Override // java.util.concurrent.FutureTask
            protected void done() {
                try {
                    ModernAsyncTask.this.j(get());
                } catch (InterruptedException unused) {
                } catch (CancellationException unused2) {
                    ModernAsyncTask.this.j(null);
                } catch (ExecutionException e4) {
                    throw new RuntimeException("An error occurred while executing doInBackground()", e4.getCause());
                } catch (Throwable th) {
                    throw new RuntimeException("An error occurred while executing doInBackground()", th);
                }
            }
        };
    }

    private static Handler c() {
        InternalHandler internalHandler;
        synchronized (ModernAsyncTask.class) {
            if (f6393n == null) {
                f6393n = new InternalHandler();
            }
            internalHandler = f6393n;
        }
        return internalHandler;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void setDefaultExecutor(Executor executor) {
        f6394o = executor;
    }

    protected abstract Result a(Params... paramsArr);

    void b(Result result) {
        if (isCancelled()) {
            e(result);
        } else {
            f(result);
        }
        this.f6397c = Status.FINISHED;
    }

    public final boolean cancel(boolean z3) {
        this.f6398d.set(true);
        return this.f6396b.cancel(z3);
    }

    protected void d() {
    }

    protected void e(Result result) {
        d();
    }

    public final ModernAsyncTask<Params, Progress, Result> execute(Params... paramsArr) {
        return executeOnExecutor(f6394o, paramsArr);
    }

    public final ModernAsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        if (this.f6397c != Status.PENDING) {
            int i2 = AnonymousClass4.f6403a[this.f6397c.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("We should never reach this state");
                }
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        this.f6397c = Status.RUNNING;
        g();
        this.f6395a.f6406a = paramsArr;
        executor.execute(this.f6396b);
        return this;
    }

    protected void f(Result result) {
    }

    protected void g() {
    }

    public final Result get() throws InterruptedException, ExecutionException {
        return this.f6396b.get();
    }

    public final Status getStatus() {
        return this.f6397c;
    }

    protected void h(Progress... progressArr) {
    }

    Result i(Result result) {
        c().obtainMessage(1, new AsyncTaskResult(this, result)).sendToTarget();
        return result;
    }

    public final boolean isCancelled() {
        return this.f6398d.get();
    }

    void j(Result result) {
        if (this.f6399e.get()) {
            return;
        }
        i(result);
    }

    protected final void k(Progress... progressArr) {
        if (isCancelled()) {
            return;
        }
        c().obtainMessage(2, new AsyncTaskResult(this, progressArr)).sendToTarget();
    }

    public static void execute(Runnable runnable) {
        f6394o.execute(runnable);
    }

    public final Result get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f6396b.get(j4, timeUnit);
    }
}
