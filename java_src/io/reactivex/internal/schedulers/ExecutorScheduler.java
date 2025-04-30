package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.queue.MpscLinkedQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ExecutorScheduler extends h0 {

    /* renamed from: c  reason: collision with root package name */
    static final h0 f69835c = io.reactivex.schedulers.b.f();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    final Executor f69836b;

    /* loaded from: classes5.dex */
    static final class DelayedRunnable extends AtomicReference<Runnable> implements Runnable, io.reactivex.disposables.b, io.reactivex.schedulers.a {
        private static final long serialVersionUID = -4101336210206799084L;

        /* renamed from: a  reason: collision with root package name */
        final SequentialDisposable f69837a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f69838b;

        DelayedRunnable(Runnable runnable) {
            super(runnable);
            this.f69837a = new SequentialDisposable();
            this.f69838b = new SequentialDisposable();
        }

        @Override // io.reactivex.schedulers.a
        public Runnable a() {
            Runnable runnable = get();
            return runnable != null ? runnable : Functions.f65823b;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (getAndSet(null) != null) {
                this.f69837a.dispose();
                this.f69838b.dispose();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == null;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = get();
            if (runnable != null) {
                try {
                    runnable.run();
                    lazySet(null);
                    SequentialDisposable sequentialDisposable = this.f69837a;
                    DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                    sequentialDisposable.lazySet(disposableHelper);
                    this.f69838b.lazySet(disposableHelper);
                } catch (Throwable th) {
                    lazySet(null);
                    this.f69837a.lazySet(DisposableHelper.DISPOSED);
                    this.f69838b.lazySet(DisposableHelper.DISPOSED);
                    throw th;
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class ExecutorWorker extends h0.c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Executor f69839a;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f69841c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f69842d = new AtomicInteger();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.a f69843e = new io.reactivex.disposables.a();

        /* renamed from: b  reason: collision with root package name */
        final MpscLinkedQueue<Runnable> f69840b = new MpscLinkedQueue<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class BooleanRunnable extends AtomicBoolean implements Runnable, io.reactivex.disposables.b {
            private static final long serialVersionUID = -2421395018820541164L;

            /* renamed from: a  reason: collision with root package name */
            final Runnable f69844a;

            BooleanRunnable(Runnable runnable) {
                this.f69844a = runnable;
            }

            @Override // io.reactivex.disposables.b
            public void dispose() {
                lazySet(true);
            }

            @Override // io.reactivex.disposables.b
            public boolean isDisposed() {
                return get();
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get()) {
                    return;
                }
                try {
                    this.f69844a.run();
                } finally {
                    lazySet(true);
                }
            }
        }

        /* loaded from: classes5.dex */
        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final SequentialDisposable f69845a;

            /* renamed from: b  reason: collision with root package name */
            private final Runnable f69846b;

            a(SequentialDisposable sequentialDisposable, Runnable runnable) {
                this.f69845a = sequentialDisposable;
                this.f69846b = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f69845a.a(ExecutorWorker.this.b(this.f69846b));
            }
        }

        public ExecutorWorker(Executor executor) {
            this.f69839a = executor;
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b b(@NonNull Runnable runnable) {
            if (this.f69841c) {
                return EmptyDisposable.INSTANCE;
            }
            BooleanRunnable booleanRunnable = new BooleanRunnable(io.reactivex.plugins.a.b0(runnable));
            this.f69840b.offer(booleanRunnable);
            if (this.f69842d.getAndIncrement() == 0) {
                try {
                    this.f69839a.execute(this);
                } catch (RejectedExecutionException e4) {
                    this.f69841c = true;
                    this.f69840b.clear();
                    io.reactivex.plugins.a.Y(e4);
                    return EmptyDisposable.INSTANCE;
                }
            }
            return booleanRunnable;
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b c(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit) {
            if (j4 <= 0) {
                return b(runnable);
            }
            if (this.f69841c) {
                return EmptyDisposable.INSTANCE;
            }
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(new a(sequentialDisposable2, io.reactivex.plugins.a.b0(runnable)), this.f69843e);
            this.f69843e.b(scheduledRunnable);
            Executor executor = this.f69839a;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    scheduledRunnable.a(((ScheduledExecutorService) executor).schedule((Callable) scheduledRunnable, j4, timeUnit));
                } catch (RejectedExecutionException e4) {
                    this.f69841c = true;
                    io.reactivex.plugins.a.Y(e4);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                scheduledRunnable.a(new b(ExecutorScheduler.f69835c.f(scheduledRunnable, j4, timeUnit)));
            }
            sequentialDisposable.a(scheduledRunnable);
            return sequentialDisposable2;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f69841c) {
                return;
            }
            this.f69841c = true;
            this.f69843e.dispose();
            if (this.f69842d.getAndIncrement() == 0) {
                this.f69840b.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69841c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
            if (r3.f69841c == false) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x001a, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
            r1 = r3.f69842d.addAndGet(-r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0022, code lost:
            if (r1 != 0) goto L2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0024, code lost:
            return;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
                io.reactivex.internal.queue.MpscLinkedQueue<java.lang.Runnable> r0 = r3.f69840b
                r1 = 1
            L3:
                boolean r2 = r3.f69841c
                if (r2 == 0) goto Lb
                r0.clear()
                return
            Lb:
                java.lang.Object r2 = r0.poll()
                java.lang.Runnable r2 = (java.lang.Runnable) r2
                if (r2 != 0) goto L25
                boolean r2 = r3.f69841c
                if (r2 == 0) goto L1b
                r0.clear()
                return
            L1b:
                java.util.concurrent.atomic.AtomicInteger r2 = r3.f69842d
                int r1 = -r1
                int r1 = r2.addAndGet(r1)
                if (r1 != 0) goto L3
                return
            L25:
                r2.run()
                boolean r2 = r3.f69841c
                if (r2 == 0) goto Lb
                r0.clear()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.schedulers.ExecutorScheduler.ExecutorWorker.run():void");
        }
    }

    /* loaded from: classes5.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final DelayedRunnable f69848a;

        a(DelayedRunnable delayedRunnable) {
            this.f69848a = delayedRunnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            DelayedRunnable delayedRunnable = this.f69848a;
            delayedRunnable.f69838b.a(ExecutorScheduler.this.e(delayedRunnable));
        }
    }

    public ExecutorScheduler(@NonNull Executor executor) {
        this.f69836b = executor;
    }

    @Override // io.reactivex.h0
    @NonNull
    public h0.c c() {
        return new ExecutorWorker(this.f69836b);
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b e(@NonNull Runnable runnable) {
        Runnable b02 = io.reactivex.plugins.a.b0(runnable);
        try {
            if (this.f69836b instanceof ExecutorService) {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(b02);
                scheduledDirectTask.b(((ExecutorService) this.f69836b).submit(scheduledDirectTask));
                return scheduledDirectTask;
            }
            ExecutorWorker.BooleanRunnable booleanRunnable = new ExecutorWorker.BooleanRunnable(b02);
            this.f69836b.execute(booleanRunnable);
            return booleanRunnable;
        } catch (RejectedExecutionException e4) {
            io.reactivex.plugins.a.Y(e4);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b f(@NonNull Runnable runnable, long j4, TimeUnit timeUnit) {
        Runnable b02 = io.reactivex.plugins.a.b0(runnable);
        if (this.f69836b instanceof ScheduledExecutorService) {
            try {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(b02);
                scheduledDirectTask.b(((ScheduledExecutorService) this.f69836b).schedule(scheduledDirectTask, j4, timeUnit));
                return scheduledDirectTask;
            } catch (RejectedExecutionException e4) {
                io.reactivex.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }
        DelayedRunnable delayedRunnable = new DelayedRunnable(b02);
        delayedRunnable.f69837a.a(f69835c.f(new a(delayedRunnable), j4, timeUnit));
        return delayedRunnable;
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b g(@NonNull Runnable runnable, long j4, long j5, TimeUnit timeUnit) {
        if (this.f69836b instanceof ScheduledExecutorService) {
            try {
                ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(io.reactivex.plugins.a.b0(runnable));
                scheduledDirectPeriodicTask.b(((ScheduledExecutorService) this.f69836b).scheduleAtFixedRate(scheduledDirectPeriodicTask, j4, j5, timeUnit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e4) {
                io.reactivex.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }
        return super.g(runnable, j4, j5, timeUnit);
    }
}
