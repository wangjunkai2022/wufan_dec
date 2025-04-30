package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableTakeUntilCompletable extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.a f66027a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f66028b;

    /* loaded from: classes5.dex */
    static final class TakeUntilMainObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b {
        private static final long serialVersionUID = 3533011714830024923L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66029a;

        /* renamed from: b  reason: collision with root package name */
        final OtherObserver f66030b = new OtherObserver(this);

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f66031c = new AtomicBoolean();

        /* loaded from: classes5.dex */
        static final class OtherObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d {
            private static final long serialVersionUID = 5176264485428790318L;

            /* renamed from: a  reason: collision with root package name */
            final TakeUntilMainObserver f66032a;

            OtherObserver(TakeUntilMainObserver takeUntilMainObserver) {
                this.f66032a = takeUntilMainObserver;
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f66032a.a();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f66032a.b(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        TakeUntilMainObserver(io.reactivex.d dVar) {
            this.f66029a = dVar;
        }

        void a() {
            if (this.f66031c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                this.f66029a.onComplete();
            }
        }

        void b(Throwable th) {
            if (this.f66031c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                this.f66029a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f66031c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                DisposableHelper.dispose(this.f66030b);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66031c.get();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f66031c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f66030b);
                this.f66029a.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f66031c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f66030b);
                this.f66029a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public CompletableTakeUntilCompletable(io.reactivex.a aVar, io.reactivex.g gVar) {
        this.f66027a = aVar;
        this.f66028b = gVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        TakeUntilMainObserver takeUntilMainObserver = new TakeUntilMainObserver(dVar);
        dVar.onSubscribe(takeUntilMainObserver);
        this.f66028b.a(takeUntilMainObserver.f66030b);
        this.f66027a.a(takeUntilMainObserver);
    }
}
