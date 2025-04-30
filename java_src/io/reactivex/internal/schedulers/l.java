package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: TrampolineScheduler.java */
/* loaded from: classes5.dex */
public final class l extends h0 {

    /* renamed from: b  reason: collision with root package name */
    private static final l f69950b = new l();

    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes5.dex */
    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f69951a;

        /* renamed from: b  reason: collision with root package name */
        private final c f69952b;

        /* renamed from: c  reason: collision with root package name */
        private final long f69953c;

        a(Runnable runnable, c cVar, long j4) {
            this.f69951a = runnable;
            this.f69952b = cVar;
            this.f69953c = j4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f69952b.f69961d) {
                return;
            }
            long a4 = this.f69952b.a(TimeUnit.MILLISECONDS);
            long j4 = this.f69953c;
            if (j4 > a4) {
                try {
                    Thread.sleep(j4 - a4);
                } catch (InterruptedException e4) {
                    Thread.currentThread().interrupt();
                    io.reactivex.plugins.a.Y(e4);
                    return;
                }
            }
            if (this.f69952b.f69961d) {
                return;
            }
            this.f69951a.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes5.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f69954a;

        /* renamed from: b  reason: collision with root package name */
        final long f69955b;

        /* renamed from: c  reason: collision with root package name */
        final int f69956c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f69957d;

        b(Runnable runnable, Long l4, int i2) {
            this.f69954a = runnable;
            this.f69955b = l4.longValue();
            this.f69956c = i2;
        }

        @Override // java.lang.Comparable
        /* renamed from: m */
        public int compareTo(b bVar) {
            int b4 = io.reactivex.internal.functions.a.b(this.f69955b, bVar.f69955b);
            return b4 == 0 ? io.reactivex.internal.functions.a.a(this.f69956c, bVar.f69956c) : b4;
        }
    }

    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes5.dex */
    static final class c extends h0.c implements io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final PriorityBlockingQueue<b> f69958a = new PriorityBlockingQueue<>();

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f69959b = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f69960c = new AtomicInteger();

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f69961d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TrampolineScheduler.java */
        /* loaded from: classes5.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final b f69962a;

            a(b bVar) {
                this.f69962a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f69962a.f69957d = true;
                c.this.f69958a.remove(this.f69962a);
            }
        }

        c() {
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b b(@NonNull Runnable runnable) {
            return e(runnable, a(TimeUnit.MILLISECONDS));
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b c(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit) {
            long a4 = a(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j4);
            return e(new a(runnable, this, a4), a4);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69961d = true;
        }

        io.reactivex.disposables.b e(Runnable runnable, long j4) {
            if (this.f69961d) {
                return EmptyDisposable.INSTANCE;
            }
            b bVar = new b(runnable, Long.valueOf(j4), this.f69960c.incrementAndGet());
            this.f69958a.add(bVar);
            if (this.f69959b.getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.f69961d) {
                    b poll = this.f69958a.poll();
                    if (poll == null) {
                        i2 = this.f69959b.addAndGet(-i2);
                        if (i2 == 0) {
                            return EmptyDisposable.INSTANCE;
                        }
                    } else if (!poll.f69957d) {
                        poll.f69954a.run();
                    }
                }
                this.f69958a.clear();
                return EmptyDisposable.INSTANCE;
            }
            return io.reactivex.disposables.c.f(new a(bVar));
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69961d;
        }
    }

    l() {
    }

    public static l k() {
        return f69950b;
    }

    @Override // io.reactivex.h0
    @NonNull
    public h0.c c() {
        return new c();
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b e(@NonNull Runnable runnable) {
        io.reactivex.plugins.a.b0(runnable).run();
        return EmptyDisposable.INSTANCE;
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b f(@NonNull Runnable runnable, long j4, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j4);
            io.reactivex.plugins.a.b0(runnable).run();
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            io.reactivex.plugins.a.Y(e4);
        }
        return EmptyDisposable.INSTANCE;
    }
}
