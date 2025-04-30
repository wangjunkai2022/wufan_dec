package androidx.core.provider;

import android.os.Handler;
import android.os.Process;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
class RequestExecutor {

    /* loaded from: classes.dex */
    private static class DefaultThreadFactory implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private String f4561a;

        /* renamed from: b  reason: collision with root package name */
        private int f4562b;

        /* loaded from: classes.dex */
        private static class ProcessPriorityThread extends Thread {

            /* renamed from: a  reason: collision with root package name */
            private final int f4563a;

            ProcessPriorityThread(Runnable runnable, String str, int i2) {
                super(runnable, str);
                this.f4563a = i2;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f4563a);
                super.run();
            }
        }

        DefaultThreadFactory(@NonNull String str, int i2) {
            this.f4561a = str;
            this.f4562b = i2;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new ProcessPriorityThread(runnable, this.f4561a, this.f4562b);
        }
    }

    /* loaded from: classes.dex */
    private static class HandlerExecutor implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f4564a;

        HandlerExecutor(@NonNull Handler handler) {
            this.f4564a = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (this.f4564a.post((Runnable) Preconditions.checkNotNull(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f4564a + " is shutting down");
        }
    }

    /* loaded from: classes.dex */
    private static class ReplyRunnable<T> implements Runnable {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private Callable<T> f4565a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private Consumer<T> f4566b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private Handler f4567c;

        ReplyRunnable(@NonNull Handler handler, @NonNull Callable<T> callable, @NonNull Consumer<T> consumer) {
            this.f4565a = callable;
            this.f4566b = consumer;
            this.f4567c = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            final T t3;
            try {
                t3 = this.f4565a.call();
            } catch (Exception unused) {
                t3 = null;
            }
            final Consumer<T> consumer = this.f4566b;
            this.f4567c.post(new Runnable() { // from class: androidx.core.provider.RequestExecutor.ReplyRunnable.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    consumer.accept(t3);
                }
            });
        }
    }

    private RequestExecutor() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ThreadPoolExecutor a(@NonNull String str, int i2, @IntRange(from = 0) int i4) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i4, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new DefaultThreadFactory(str, i2));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor b(@NonNull Handler handler) {
        return new HandlerExecutor(handler);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void c(@NonNull Executor executor, @NonNull Callable<T> callable, @NonNull Consumer<T> consumer) {
        executor.execute(new ReplyRunnable(CalleeHandler.a(), callable, consumer));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T d(@NonNull ExecutorService executorService, @NonNull Callable<T> callable, @IntRange(from = 0) int i2) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i2, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e4) {
            throw e4;
        } catch (ExecutionException e5) {
            throw new RuntimeException(e5);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
