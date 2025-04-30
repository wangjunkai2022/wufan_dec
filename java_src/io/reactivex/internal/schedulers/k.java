package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: SingleScheduler.java */
/* loaded from: classes5.dex */
public final class k extends h0 {

    /* renamed from: d  reason: collision with root package name */
    private static final String f69941d = "rx2.single-priority";

    /* renamed from: e  reason: collision with root package name */
    private static final String f69942e = "RxSingleScheduler";

    /* renamed from: f  reason: collision with root package name */
    static final RxThreadFactory f69943f;

    /* renamed from: g  reason: collision with root package name */
    static final ScheduledExecutorService f69944g;

    /* renamed from: b  reason: collision with root package name */
    final ThreadFactory f69945b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<ScheduledExecutorService> f69946c;

    /* compiled from: SingleScheduler.java */
    /* loaded from: classes5.dex */
    static final class a extends h0.c {

        /* renamed from: a  reason: collision with root package name */
        final ScheduledExecutorService f69947a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.a f69948b = new io.reactivex.disposables.a();

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f69949c;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.f69947a = scheduledExecutorService;
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b c(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit) {
            Future<?> schedule;
            if (this.f69949c) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(io.reactivex.plugins.a.b0(runnable), this.f69948b);
            this.f69948b.b(scheduledRunnable);
            try {
                if (j4 <= 0) {
                    schedule = this.f69947a.submit((Callable) scheduledRunnable);
                } else {
                    schedule = this.f69947a.schedule((Callable) scheduledRunnable, j4, timeUnit);
                }
                scheduledRunnable.a(schedule);
                return scheduledRunnable;
            } catch (RejectedExecutionException e4) {
                dispose();
                io.reactivex.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f69949c) {
                return;
            }
            this.f69949c = true;
            this.f69948b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69949c;
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f69944g = newScheduledThreadPool;
        newScheduledThreadPool.shutdown();
        f69943f = new RxThreadFactory(f69942e, Math.max(1, Math.min(10, Integer.getInteger(f69941d, 5).intValue())), true);
    }

    public k() {
        this(f69943f);
    }

    static ScheduledExecutorService k(ThreadFactory threadFactory) {
        return j.a(threadFactory);
    }

    @Override // io.reactivex.h0
    @NonNull
    public h0.c c() {
        return new a(this.f69946c.get());
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b f(@NonNull Runnable runnable, long j4, TimeUnit timeUnit) {
        Future<?> schedule;
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(io.reactivex.plugins.a.b0(runnable));
        try {
            if (j4 <= 0) {
                schedule = this.f69946c.get().submit(scheduledDirectTask);
            } else {
                schedule = this.f69946c.get().schedule(scheduledDirectTask, j4, timeUnit);
            }
            scheduledDirectTask.b(schedule);
            return scheduledDirectTask;
        } catch (RejectedExecutionException e4) {
            io.reactivex.plugins.a.Y(e4);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b g(@NonNull Runnable runnable, long j4, long j5, TimeUnit timeUnit) {
        Future<?> schedule;
        Runnable b02 = io.reactivex.plugins.a.b0(runnable);
        if (j5 <= 0) {
            ScheduledExecutorService scheduledExecutorService = this.f69946c.get();
            d dVar = new d(b02, scheduledExecutorService);
            try {
                if (j4 <= 0) {
                    schedule = scheduledExecutorService.submit(dVar);
                } else {
                    schedule = scheduledExecutorService.schedule(dVar, j4, timeUnit);
                }
                dVar.a(schedule);
                return dVar;
            } catch (RejectedExecutionException e4) {
                io.reactivex.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(b02);
        try {
            scheduledDirectPeriodicTask.b(this.f69946c.get().scheduleAtFixedRate(scheduledDirectPeriodicTask, j4, j5, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e5) {
            io.reactivex.plugins.a.Y(e5);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.h0
    public void h() {
        ScheduledExecutorService andSet;
        ScheduledExecutorService scheduledExecutorService = this.f69946c.get();
        ScheduledExecutorService scheduledExecutorService2 = f69944g;
        if (scheduledExecutorService == scheduledExecutorService2 || (andSet = this.f69946c.getAndSet(scheduledExecutorService2)) == scheduledExecutorService2) {
            return;
        }
        andSet.shutdownNow();
    }

    @Override // io.reactivex.h0
    public void i() {
        ScheduledExecutorService scheduledExecutorService;
        ScheduledExecutorService scheduledExecutorService2 = null;
        do {
            scheduledExecutorService = this.f69946c.get();
            if (scheduledExecutorService != f69944g) {
                if (scheduledExecutorService2 != null) {
                    scheduledExecutorService2.shutdown();
                    return;
                }
                return;
            } else if (scheduledExecutorService2 == null) {
                scheduledExecutorService2 = k(this.f69945b);
            }
        } while (!this.f69946c.compareAndSet(scheduledExecutorService, scheduledExecutorService2));
    }

    public k(ThreadFactory threadFactory) {
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.f69946c = atomicReference;
        this.f69945b = threadFactory;
        atomicReference.lazySet(k(threadFactory));
    }
}
