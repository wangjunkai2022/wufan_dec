package com.facebook.common.executors;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: ConstrainedExecutorService.java */
/* loaded from: classes2.dex */
public class b extends AbstractExecutorService {

    /* renamed from: h  reason: collision with root package name */
    private static final Class<?> f11670h = b.class;

    /* renamed from: a  reason: collision with root package name */
    private final String f11671a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f11672b;

    /* renamed from: c  reason: collision with root package name */
    private volatile int f11673c;

    /* renamed from: d  reason: collision with root package name */
    private final BlockingQueue<Runnable> f11674d;

    /* renamed from: e  reason: collision with root package name */
    private final RunnableC0060b f11675e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicInteger f11676f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicInteger f11677g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConstrainedExecutorService.java */
    /* renamed from: com.facebook.common.executors.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0060b implements Runnable {
        private RunnableC0060b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Runnable runnable = (Runnable) b.this.f11674d.poll();
                if (runnable == null) {
                    com.facebook.common.logging.a.V(b.f11670h, "%s: Worker has nothing to run", b.this.f11671a);
                } else {
                    runnable.run();
                }
                int decrementAndGet = b.this.f11676f.decrementAndGet();
                if (!b.this.f11674d.isEmpty()) {
                    b.this.h();
                } else {
                    com.facebook.common.logging.a.W(b.f11670h, "%s: worker finished; %d workers left", b.this.f11671a, Integer.valueOf(decrementAndGet));
                }
            } catch (Throwable th) {
                int decrementAndGet2 = b.this.f11676f.decrementAndGet();
                if (!b.this.f11674d.isEmpty()) {
                    b.this.h();
                } else {
                    com.facebook.common.logging.a.W(b.f11670h, "%s: worker finished; %d workers left", b.this.f11671a, Integer.valueOf(decrementAndGet2));
                }
                throw th;
            }
        }
    }

    public b(String str, int i2, Executor executor, BlockingQueue<Runnable> blockingQueue) {
        if (i2 > 0) {
            this.f11671a = str;
            this.f11672b = executor;
            this.f11673c = i2;
            this.f11674d = blockingQueue;
            this.f11675e = new RunnableC0060b();
            this.f11676f = new AtomicInteger(0);
            this.f11677g = new AtomicInteger(0);
            return;
        }
        throw new IllegalArgumentException("max concurrency must be > 0");
    }

    public static b g(String str, int i2, int i4, Executor executor) {
        return new b(str, i2, executor, new LinkedBlockingQueue(i4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        int i2 = this.f11676f.get();
        while (i2 < this.f11673c) {
            int i4 = i2 + 1;
            if (this.f11676f.compareAndSet(i2, i4)) {
                com.facebook.common.logging.a.X(f11670h, "%s: starting worker %d of %d", this.f11671a, Integer.valueOf(i4), Integer.valueOf(this.f11673c));
                this.f11672b.execute(this.f11675e);
                return;
            }
            com.facebook.common.logging.a.V(f11670h, "%s: race in startWorkerIfNeeded; retrying", this.f11671a);
            i2 = this.f11676f.get();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j4, TimeUnit timeUnit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Objects.requireNonNull(runnable, "runnable parameter is null");
        if (this.f11674d.offer(runnable)) {
            int size = this.f11674d.size();
            int i2 = this.f11677g.get();
            if (size > i2 && this.f11677g.compareAndSet(i2, size)) {
                com.facebook.common.logging.a.W(f11670h, "%s: max pending work in queue = %d", this.f11671a, Integer.valueOf(size));
            }
            h();
            return;
        }
        throw new RejectedExecutionException(this.f11671a + " queue is full, size=" + this.f11674d.size());
    }

    public boolean f() {
        return this.f11674d.isEmpty() && this.f11676f.get() == 0;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
