package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: IoScheduler.java */
/* loaded from: classes5.dex */
public final class e extends h0 {

    /* renamed from: d  reason: collision with root package name */
    private static final String f69905d = "RxCachedThreadScheduler";

    /* renamed from: e  reason: collision with root package name */
    static final RxThreadFactory f69906e;

    /* renamed from: f  reason: collision with root package name */
    private static final String f69907f = "RxCachedWorkerPoolEvictor";

    /* renamed from: g  reason: collision with root package name */
    static final RxThreadFactory f69908g;

    /* renamed from: h  reason: collision with root package name */
    private static final long f69909h = 60;

    /* renamed from: i  reason: collision with root package name */
    private static final TimeUnit f69910i = TimeUnit.SECONDS;

    /* renamed from: j  reason: collision with root package name */
    static final c f69911j;

    /* renamed from: k  reason: collision with root package name */
    private static final String f69912k = "rx2.io-priority";

    /* renamed from: l  reason: collision with root package name */
    static final a f69913l;

    /* renamed from: b  reason: collision with root package name */
    final ThreadFactory f69914b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<a> f69915c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IoScheduler.java */
    /* loaded from: classes5.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final long f69916a;

        /* renamed from: b  reason: collision with root package name */
        private final ConcurrentLinkedQueue<c> f69917b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.a f69918c;

        /* renamed from: d  reason: collision with root package name */
        private final ScheduledExecutorService f69919d;

        /* renamed from: e  reason: collision with root package name */
        private final Future<?> f69920e;

        /* renamed from: f  reason: collision with root package name */
        private final ThreadFactory f69921f;

        a(long j4, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFuture;
            long nanos = timeUnit != null ? timeUnit.toNanos(j4) : 0L;
            this.f69916a = nanos;
            this.f69917b = new ConcurrentLinkedQueue<>();
            this.f69918c = new io.reactivex.disposables.a();
            this.f69921f = threadFactory;
            ScheduledExecutorService scheduledExecutorService = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, e.f69908g);
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.f69919d = scheduledExecutorService;
            this.f69920e = scheduledFuture;
        }

        void a() {
            if (this.f69917b.isEmpty()) {
                return;
            }
            long c4 = c();
            Iterator<c> it2 = this.f69917b.iterator();
            while (it2.hasNext()) {
                c next = it2.next();
                if (next.h() > c4) {
                    return;
                }
                if (this.f69917b.remove(next)) {
                    this.f69918c.a(next);
                }
            }
        }

        c b() {
            if (this.f69918c.isDisposed()) {
                return e.f69911j;
            }
            while (!this.f69917b.isEmpty()) {
                c poll = this.f69917b.poll();
                if (poll != null) {
                    return poll;
                }
            }
            c cVar = new c(this.f69921f);
            this.f69918c.b(cVar);
            return cVar;
        }

        long c() {
            return System.nanoTime();
        }

        void d(c cVar) {
            cVar.i(c() + this.f69916a);
            this.f69917b.offer(cVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            a();
        }

        void shutdown() {
            this.f69918c.dispose();
            Future<?> future = this.f69920e;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f69919d;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }
    }

    /* compiled from: IoScheduler.java */
    /* loaded from: classes5.dex */
    static final class b extends h0.c {

        /* renamed from: b  reason: collision with root package name */
        private final a f69923b;

        /* renamed from: c  reason: collision with root package name */
        private final c f69924c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f69925d = new AtomicBoolean();

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.disposables.a f69922a = new io.reactivex.disposables.a();

        b(a aVar) {
            this.f69923b = aVar;
            this.f69924c = aVar.b();
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b c(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit) {
            if (this.f69922a.isDisposed()) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f69924c.e(runnable, j4, timeUnit, this.f69922a);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f69925d.compareAndSet(false, true)) {
                this.f69922a.dispose();
                this.f69923b.d(this.f69924c);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69925d.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IoScheduler.java */
    /* loaded from: classes5.dex */
    public static final class c extends g {

        /* renamed from: c  reason: collision with root package name */
        private long f69926c;

        c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f69926c = 0L;
        }

        public long h() {
            return this.f69926c;
        }

        public void i(long j4) {
            this.f69926c = j4;
        }
    }

    static {
        c cVar = new c(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        f69911j = cVar;
        cVar.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger(f69912k, 5).intValue()));
        RxThreadFactory rxThreadFactory = new RxThreadFactory(f69905d, max);
        f69906e = rxThreadFactory;
        f69908g = new RxThreadFactory(f69907f, max);
        a aVar = new a(0L, null, rxThreadFactory);
        f69913l = aVar;
        aVar.shutdown();
    }

    public e() {
        this(f69906e);
    }

    @Override // io.reactivex.h0
    @NonNull
    public h0.c c() {
        return new b(this.f69915c.get());
    }

    @Override // io.reactivex.h0
    public void h() {
        a aVar;
        a aVar2;
        do {
            aVar = this.f69915c.get();
            aVar2 = f69913l;
            if (aVar == aVar2) {
                return;
            }
        } while (!this.f69915c.compareAndSet(aVar, aVar2));
        aVar.shutdown();
    }

    @Override // io.reactivex.h0
    public void i() {
        a aVar = new a(f69909h, f69910i, this.f69914b);
        if (this.f69915c.compareAndSet(f69913l, aVar)) {
            return;
        }
        aVar.shutdown();
    }

    public int k() {
        return this.f69915c.get().f69918c.f();
    }

    public e(ThreadFactory threadFactory) {
        this.f69914b = threadFactory;
        this.f69915c = new AtomicReference<>(f69913l);
        i();
    }
}
