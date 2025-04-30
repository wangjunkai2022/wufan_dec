package io.reactivex.internal.operators.completable;

import io.reactivex.h0;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: CompletableTimeout.java */
/* loaded from: classes5.dex */
public final class w extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66104a;

    /* renamed from: b  reason: collision with root package name */
    final long f66105b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f66106c;

    /* renamed from: d  reason: collision with root package name */
    final h0 f66107d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.g f66108e;

    /* compiled from: CompletableTimeout.java */
    /* loaded from: classes5.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f66109a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.a f66110b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.d f66111c;

        /* compiled from: CompletableTimeout.java */
        /* renamed from: io.reactivex.internal.operators.completable.w$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        final class C0452a implements io.reactivex.d {
            C0452a() {
            }

            @Override // io.reactivex.d
            public void onComplete() {
                a.this.f66110b.dispose();
                a.this.f66111c.onComplete();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                a.this.f66110b.dispose();
                a.this.f66111c.onError(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                a.this.f66110b.b(bVar);
            }
        }

        a(AtomicBoolean atomicBoolean, io.reactivex.disposables.a aVar, io.reactivex.d dVar) {
            this.f66109a = atomicBoolean;
            this.f66110b = aVar;
            this.f66111c = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f66109a.compareAndSet(false, true)) {
                this.f66110b.d();
                io.reactivex.g gVar = w.this.f66108e;
                if (gVar == null) {
                    this.f66111c.onError(new TimeoutException());
                } else {
                    gVar.a(new C0452a());
                }
            }
        }
    }

    /* compiled from: CompletableTimeout.java */
    /* loaded from: classes5.dex */
    static final class b implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.disposables.a f66114a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f66115b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.d f66116c;

        b(io.reactivex.disposables.a aVar, AtomicBoolean atomicBoolean, io.reactivex.d dVar) {
            this.f66114a = aVar;
            this.f66115b = atomicBoolean;
            this.f66116c = dVar;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f66115b.compareAndSet(false, true)) {
                this.f66114a.dispose();
                this.f66116c.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f66115b.compareAndSet(false, true)) {
                this.f66114a.dispose();
                this.f66116c.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f66114a.b(bVar);
        }
    }

    public w(io.reactivex.g gVar, long j4, TimeUnit timeUnit, h0 h0Var, io.reactivex.g gVar2) {
        this.f66104a = gVar;
        this.f66105b = j4;
        this.f66106c = timeUnit;
        this.f66107d = h0Var;
        this.f66108e = gVar2;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        io.reactivex.disposables.a aVar = new io.reactivex.disposables.a();
        dVar.onSubscribe(aVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        aVar.b(this.f66107d.f(new a(atomicBoolean, aVar, dVar), this.f66105b, this.f66106c));
        this.f66104a.a(new b(aVar, atomicBoolean, dVar));
    }
}
