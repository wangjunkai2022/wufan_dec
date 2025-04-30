package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.schedulers.SchedulerWhen;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
/* compiled from: Scheduler.java */
/* loaded from: classes5.dex */
public abstract class h0 {

    /* renamed from: a  reason: collision with root package name */
    static final long f65806a = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scheduler.java */
    /* loaded from: classes5.dex */
    public static final class a implements io.reactivex.disposables.b, Runnable, io.reactivex.schedulers.a {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        final Runnable f65807a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        final c f65808b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        Thread f65809c;

        a(@NonNull Runnable runnable, @NonNull c cVar) {
            this.f65807a = runnable;
            this.f65808b = cVar;
        }

        @Override // io.reactivex.schedulers.a
        public Runnable a() {
            return this.f65807a;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f65809c == Thread.currentThread()) {
                c cVar = this.f65808b;
                if (cVar instanceof io.reactivex.internal.schedulers.g) {
                    ((io.reactivex.internal.schedulers.g) cVar).shutdown();
                    return;
                }
            }
            this.f65808b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f65808b.isDisposed();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f65809c = Thread.currentThread();
            try {
                this.f65807a.run();
            } finally {
                dispose();
                this.f65809c = null;
            }
        }
    }

    /* compiled from: Scheduler.java */
    /* loaded from: classes5.dex */
    static final class b implements io.reactivex.disposables.b, Runnable, io.reactivex.schedulers.a {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        final Runnable f65810a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        final c f65811b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f65812c;

        b(@NonNull Runnable runnable, @NonNull c cVar) {
            this.f65810a = runnable;
            this.f65811b = cVar;
        }

        @Override // io.reactivex.schedulers.a
        public Runnable a() {
            return this.f65810a;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f65812c = true;
            this.f65811b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f65812c;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f65812c) {
                return;
            }
            try {
                this.f65810a.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f65811b.dispose();
                throw ExceptionHelper.e(th);
            }
        }
    }

    /* compiled from: Scheduler.java */
    /* loaded from: classes5.dex */
    public static abstract class c implements io.reactivex.disposables.b {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Scheduler.java */
        /* loaded from: classes5.dex */
        public final class a implements Runnable, io.reactivex.schedulers.a {
            @NonNull

            /* renamed from: a  reason: collision with root package name */
            final Runnable f65813a;
            @NonNull

            /* renamed from: b  reason: collision with root package name */
            final SequentialDisposable f65814b;

            /* renamed from: c  reason: collision with root package name */
            final long f65815c;

            /* renamed from: d  reason: collision with root package name */
            long f65816d;

            /* renamed from: e  reason: collision with root package name */
            long f65817e;

            /* renamed from: f  reason: collision with root package name */
            long f65818f;

            a(long j4, @NonNull Runnable runnable, long j5, @NonNull SequentialDisposable sequentialDisposable, long j6) {
                this.f65813a = runnable;
                this.f65814b = sequentialDisposable;
                this.f65815c = j6;
                this.f65817e = j5;
                this.f65818f = j4;
            }

            @Override // io.reactivex.schedulers.a
            public Runnable a() {
                return this.f65813a;
            }

            @Override // java.lang.Runnable
            public void run() {
                long j4;
                this.f65813a.run();
                if (this.f65814b.isDisposed()) {
                    return;
                }
                c cVar = c.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long a4 = cVar.a(timeUnit);
                long j5 = h0.f65806a;
                long j6 = this.f65817e;
                if (a4 + j5 >= j6) {
                    long j7 = this.f65815c;
                    if (a4 < j6 + j7 + j5) {
                        long j8 = this.f65818f;
                        long j9 = this.f65816d + 1;
                        this.f65816d = j9;
                        j4 = j8 + (j9 * j7);
                        this.f65817e = a4;
                        this.f65814b.a(c.this.c(this, j4 - a4, timeUnit));
                    }
                }
                long j10 = this.f65815c;
                long j11 = a4 + j10;
                long j12 = this.f65816d + 1;
                this.f65816d = j12;
                this.f65818f = j11 - (j10 * j12);
                j4 = j11;
                this.f65817e = a4;
                this.f65814b.a(c.this.c(this, j4 - a4, timeUnit));
            }
        }

        public long a(@NonNull TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        @NonNull
        public io.reactivex.disposables.b b(@NonNull Runnable runnable) {
            return c(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        @NonNull
        public abstract io.reactivex.disposables.b c(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit);

        @NonNull
        public io.reactivex.disposables.b d(@NonNull Runnable runnable, long j4, long j5, @NonNull TimeUnit timeUnit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable b02 = io.reactivex.plugins.a.b0(runnable);
            long nanos = timeUnit.toNanos(j5);
            long a4 = a(TimeUnit.NANOSECONDS);
            io.reactivex.disposables.b c4 = c(new a(a4 + timeUnit.toNanos(j4), b02, a4, sequentialDisposable2, nanos), j4, timeUnit);
            if (c4 == EmptyDisposable.INSTANCE) {
                return c4;
            }
            sequentialDisposable.a(c4);
            return sequentialDisposable2;
        }
    }

    public static long b() {
        return f65806a;
    }

    @NonNull
    public abstract c c();

    public long d(@NonNull TimeUnit timeUnit) {
        return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    @NonNull
    public io.reactivex.disposables.b e(@NonNull Runnable runnable) {
        return f(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    @NonNull
    public io.reactivex.disposables.b f(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit) {
        c c4 = c();
        a aVar = new a(io.reactivex.plugins.a.b0(runnable), c4);
        c4.c(aVar, j4, timeUnit);
        return aVar;
    }

    @NonNull
    public io.reactivex.disposables.b g(@NonNull Runnable runnable, long j4, long j5, @NonNull TimeUnit timeUnit) {
        c c4 = c();
        b bVar = new b(io.reactivex.plugins.a.b0(runnable), c4);
        io.reactivex.disposables.b d4 = c4.d(bVar, j4, j5, timeUnit);
        return d4 == EmptyDisposable.INSTANCE ? d4 : bVar;
    }

    public void h() {
    }

    public void i() {
    }

    @NonNull
    public <S extends h0 & io.reactivex.disposables.b> S j(@NonNull w2.o<j<j<io.reactivex.a>>, io.reactivex.a> oVar) {
        return new SchedulerWhen(oVar, this);
    }
}
