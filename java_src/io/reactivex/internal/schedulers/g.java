package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* compiled from: NewThreadWorker.java */
/* loaded from: classes5.dex */
public class g extends h0.c implements io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f69931a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f69932b;

    public g(ThreadFactory threadFactory) {
        this.f69931a = j.a(threadFactory);
    }

    @Override // io.reactivex.h0.c
    @NonNull
    public io.reactivex.disposables.b b(@NonNull Runnable runnable) {
        return c(runnable, 0L, null);
    }

    @Override // io.reactivex.h0.c
    @NonNull
    public io.reactivex.disposables.b c(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit) {
        if (this.f69932b) {
            return EmptyDisposable.INSTANCE;
        }
        return e(runnable, j4, timeUnit, null);
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        if (this.f69932b) {
            return;
        }
        this.f69932b = true;
        this.f69931a.shutdownNow();
    }

    @NonNull
    public ScheduledRunnable e(Runnable runnable, long j4, @NonNull TimeUnit timeUnit, @Nullable io.reactivex.internal.disposables.a aVar) {
        Future<?> schedule;
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(io.reactivex.plugins.a.b0(runnable), aVar);
        if (aVar == null || aVar.b(scheduledRunnable)) {
            try {
                if (j4 <= 0) {
                    schedule = this.f69931a.submit((Callable) scheduledRunnable);
                } else {
                    schedule = this.f69931a.schedule((Callable) scheduledRunnable, j4, timeUnit);
                }
                scheduledRunnable.a(schedule);
            } catch (RejectedExecutionException e4) {
                if (aVar != null) {
                    aVar.a(scheduledRunnable);
                }
                io.reactivex.plugins.a.Y(e4);
            }
            return scheduledRunnable;
        }
        return scheduledRunnable;
    }

    public io.reactivex.disposables.b f(Runnable runnable, long j4, TimeUnit timeUnit) {
        Future<?> schedule;
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(io.reactivex.plugins.a.b0(runnable));
        try {
            if (j4 <= 0) {
                schedule = this.f69931a.submit(scheduledDirectTask);
            } else {
                schedule = this.f69931a.schedule(scheduledDirectTask, j4, timeUnit);
            }
            scheduledDirectTask.b(schedule);
            return scheduledDirectTask;
        } catch (RejectedExecutionException e4) {
            io.reactivex.plugins.a.Y(e4);
            return EmptyDisposable.INSTANCE;
        }
    }

    public io.reactivex.disposables.b g(Runnable runnable, long j4, long j5, TimeUnit timeUnit) {
        Future<?> schedule;
        Runnable b02 = io.reactivex.plugins.a.b0(runnable);
        if (j5 <= 0) {
            d dVar = new d(b02, this.f69931a);
            try {
                if (j4 <= 0) {
                    schedule = this.f69931a.submit(dVar);
                } else {
                    schedule = this.f69931a.schedule(dVar, j4, timeUnit);
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
            scheduledDirectPeriodicTask.b(this.f69931a.scheduleAtFixedRate(scheduledDirectPeriodicTask, j4, j5, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e5) {
            io.reactivex.plugins.a.Y(e5);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f69932b;
    }

    public void shutdown() {
        if (this.f69932b) {
            return;
        }
        this.f69932b = true;
        this.f69931a.shutdown();
    }
}
