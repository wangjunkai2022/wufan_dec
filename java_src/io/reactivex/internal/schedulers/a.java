package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.schedulers.i;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ComputationScheduler.java */
/* loaded from: classes5.dex */
public final class a extends h0 implements i {

    /* renamed from: d  reason: collision with root package name */
    static final b f69878d;

    /* renamed from: e  reason: collision with root package name */
    private static final String f69879e = "RxComputationThreadPool";

    /* renamed from: f  reason: collision with root package name */
    static final RxThreadFactory f69880f;

    /* renamed from: g  reason: collision with root package name */
    static final String f69881g = "rx2.computation-threads";

    /* renamed from: h  reason: collision with root package name */
    static final int f69882h = k(Runtime.getRuntime().availableProcessors(), Integer.getInteger(f69881g, 0).intValue());

    /* renamed from: i  reason: collision with root package name */
    static final c f69883i;

    /* renamed from: j  reason: collision with root package name */
    private static final String f69884j = "rx2.computation-priority";

    /* renamed from: b  reason: collision with root package name */
    final ThreadFactory f69885b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<b> f69886c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputationScheduler.java */
    /* renamed from: io.reactivex.internal.schedulers.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0468a extends h0.c {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.internal.disposables.b f69887a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.disposables.a f69888b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.internal.disposables.b f69889c;

        /* renamed from: d  reason: collision with root package name */
        private final c f69890d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f69891e;

        C0468a(c cVar) {
            this.f69890d = cVar;
            io.reactivex.internal.disposables.b bVar = new io.reactivex.internal.disposables.b();
            this.f69887a = bVar;
            io.reactivex.disposables.a aVar = new io.reactivex.disposables.a();
            this.f69888b = aVar;
            io.reactivex.internal.disposables.b bVar2 = new io.reactivex.internal.disposables.b();
            this.f69889c = bVar2;
            bVar2.b(bVar);
            bVar2.b(aVar);
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b b(@NonNull Runnable runnable) {
            if (this.f69891e) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f69890d.e(runnable, 0L, TimeUnit.MILLISECONDS, this.f69887a);
        }

        @Override // io.reactivex.h0.c
        @NonNull
        public io.reactivex.disposables.b c(@NonNull Runnable runnable, long j4, @NonNull TimeUnit timeUnit) {
            if (this.f69891e) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f69890d.e(runnable, j4, timeUnit, this.f69888b);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f69891e) {
                return;
            }
            this.f69891e = true;
            this.f69889c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69891e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputationScheduler.java */
    /* loaded from: classes5.dex */
    public static final class b implements i {

        /* renamed from: a  reason: collision with root package name */
        final int f69892a;

        /* renamed from: b  reason: collision with root package name */
        final c[] f69893b;

        /* renamed from: c  reason: collision with root package name */
        long f69894c;

        b(int i2, ThreadFactory threadFactory) {
            this.f69892a = i2;
            this.f69893b = new c[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                this.f69893b[i4] = new c(threadFactory);
            }
        }

        @Override // io.reactivex.internal.schedulers.i
        public void a(int i2, i.a aVar) {
            int i4 = this.f69892a;
            if (i4 == 0) {
                for (int i5 = 0; i5 < i2; i5++) {
                    aVar.a(i5, a.f69883i);
                }
                return;
            }
            int i6 = ((int) this.f69894c) % i4;
            for (int i7 = 0; i7 < i2; i7++) {
                aVar.a(i7, new C0468a(this.f69893b[i6]));
                i6++;
                if (i6 == i4) {
                    i6 = 0;
                }
            }
            this.f69894c = i6;
        }

        public c b() {
            int i2 = this.f69892a;
            if (i2 == 0) {
                return a.f69883i;
            }
            c[] cVarArr = this.f69893b;
            long j4 = this.f69894c;
            this.f69894c = 1 + j4;
            return cVarArr[(int) (j4 % i2)];
        }

        public void c() {
            for (c cVar : this.f69893b) {
                cVar.dispose();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ComputationScheduler.java */
    /* loaded from: classes5.dex */
    public static final class c extends g {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        c cVar = new c(new RxThreadFactory("RxComputationShutdown"));
        f69883i = cVar;
        cVar.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory(f69879e, Math.max(1, Math.min(10, Integer.getInteger(f69884j, 5).intValue())), true);
        f69880f = rxThreadFactory;
        b bVar = new b(0, rxThreadFactory);
        f69878d = bVar;
        bVar.c();
    }

    public a() {
        this(f69880f);
    }

    static int k(int i2, int i4) {
        return (i4 <= 0 || i4 > i2) ? i2 : i4;
    }

    @Override // io.reactivex.internal.schedulers.i
    public void a(int i2, i.a aVar) {
        io.reactivex.internal.functions.a.h(i2, "number > 0 required");
        this.f69886c.get().a(i2, aVar);
    }

    @Override // io.reactivex.h0
    @NonNull
    public h0.c c() {
        return new C0468a(this.f69886c.get().b());
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b f(@NonNull Runnable runnable, long j4, TimeUnit timeUnit) {
        return this.f69886c.get().b().f(runnable, j4, timeUnit);
    }

    @Override // io.reactivex.h0
    @NonNull
    public io.reactivex.disposables.b g(@NonNull Runnable runnable, long j4, long j5, TimeUnit timeUnit) {
        return this.f69886c.get().b().g(runnable, j4, j5, timeUnit);
    }

    @Override // io.reactivex.h0
    public void h() {
        b bVar;
        b bVar2;
        do {
            bVar = this.f69886c.get();
            bVar2 = f69878d;
            if (bVar == bVar2) {
                return;
            }
        } while (!this.f69886c.compareAndSet(bVar, bVar2));
        bVar.c();
    }

    @Override // io.reactivex.h0
    public void i() {
        b bVar = new b(f69882h, this.f69885b);
        if (this.f69886c.compareAndSet(f69878d, bVar)) {
            return;
        }
        bVar.c();
    }

    public a(ThreadFactory threadFactory) {
        this.f69885b = threadFactory;
        this.f69886c = new AtomicReference<>(f69878d);
        i();
    }
}
