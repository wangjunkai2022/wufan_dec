package io.reactivex.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
/* compiled from: TestScheduler.java */
/* loaded from: classes5.dex */
public final class c extends h0 {

    /* renamed from: b  reason: collision with root package name */
    final Queue<b> f70280b = new PriorityBlockingQueue(11);

    /* renamed from: c  reason: collision with root package name */
    long f70281c;

    /* renamed from: d  reason: collision with root package name */
    volatile long f70282d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TestScheduler.java */
    /* loaded from: classes5.dex */
    public final class a extends h0.c {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f70283a;

        /* compiled from: TestScheduler.java */
        /* renamed from: io.reactivex.schedulers.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        final class RunnableC0471a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final b f70285a;

            RunnableC0471a(b bVar) {
                this.f70285a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.f70280b.remove(this.f70285a);
            }
        }

        a() {
        }

        @Override // io.reactivex.h0.c
        public long a(@NonNull TimeUnit timeUnit) {
            return c.this.d(timeUnit);
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b b(@NonNull Runnable runnable) {
            if (this.f70283a) {
                return EmptyDisposable.INSTANCE;
            }
            c cVar = c.this;
            long j4 = cVar.f70281c;
            cVar.f70281c = 1 + j4;
            b bVar = new b(this, 0L, runnable, j4);
            c.this.f70280b.add(bVar);
            return io.reactivex.disposables.c.f(new RunnableC0471a(bVar));
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b c(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit) {
            if (this.f70283a) {
                return EmptyDisposable.INSTANCE;
            }
            long nanos = c.this.f70282d + timeUnit.toNanos(j4);
            c cVar = c.this;
            long j5 = cVar.f70281c;
            cVar.f70281c = 1 + j5;
            b bVar = new b(this, nanos, runnable, j5);
            c.this.f70280b.add(bVar);
            return io.reactivex.disposables.c.f(new RunnableC0471a(bVar));
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f70283a = true;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f70283a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TestScheduler.java */
    /* loaded from: classes5.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        final long f70287a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f70288b;

        /* renamed from: c  reason: collision with root package name */
        final a f70289c;

        /* renamed from: d  reason: collision with root package name */
        final long f70290d;

        b(a aVar, long j4, Runnable runnable, long j5) {
            this.f70287a = j4;
            this.f70288b = runnable;
            this.f70289c = aVar;
            this.f70290d = j5;
        }

        @Override // java.lang.Comparable
        /* renamed from: m */
        public int compareTo(b bVar) {
            long j4 = this.f70287a;
            long j5 = bVar.f70287a;
            if (j4 == j5) {
                return io.reactivex.internal.functions.a.b(this.f70290d, bVar.f70290d);
            }
            return io.reactivex.internal.functions.a.b(j4, j5);
        }

        public String toString() {
            return String.format("TimedRunnable(time = %d, run = %s)", Long.valueOf(this.f70287a), this.f70288b.toString());
        }
    }

    public c() {
    }

    private void n(long j4) {
        while (true) {
            b peek = this.f70280b.peek();
            if (peek == null) {
                break;
            }
            long j5 = peek.f70287a;
            if (j5 > j4) {
                break;
            }
            if (j5 == 0) {
                j5 = this.f70282d;
            }
            this.f70282d = j5;
            this.f70280b.remove(peek);
            if (!peek.f70289c.f70283a) {
                peek.f70288b.run();
            }
        }
        this.f70282d = j4;
    }

    @Override // io.reactivex.h0
    @NonNull
    public h0.c c() {
        return new a();
    }

    @Override // io.reactivex.h0
    public long d(@NonNull TimeUnit timeUnit) {
        return timeUnit.convert(this.f70282d, TimeUnit.NANOSECONDS);
    }

    public void k(long j4, TimeUnit timeUnit) {
        l(this.f70282d + timeUnit.toNanos(j4), TimeUnit.NANOSECONDS);
    }

    public void l(long j4, TimeUnit timeUnit) {
        n(timeUnit.toNanos(j4));
    }

    public void m() {
        n(this.f70282d);
    }

    public c(long j4, TimeUnit timeUnit) {
        this.f70282d = timeUnit.toNanos(j4);
    }
}
