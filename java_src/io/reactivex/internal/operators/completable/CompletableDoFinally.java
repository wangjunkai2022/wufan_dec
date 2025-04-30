package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class CompletableDoFinally extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f65989a;

    /* renamed from: b  reason: collision with root package name */
    final w2.a f65990b;

    /* loaded from: classes5.dex */
    static final class DoFinallyObserver extends AtomicInteger implements io.reactivex.d, io.reactivex.disposables.b {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f65991a;

        /* renamed from: b  reason: collision with root package name */
        final w2.a f65992b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f65993c;

        DoFinallyObserver(io.reactivex.d dVar, w2.a aVar) {
            this.f65991a = dVar;
            this.f65992b = aVar;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f65992b.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f65993c.dispose();
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f65993c.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f65991a.onComplete();
            a();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f65991a.onError(th);
            a();
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f65993c, bVar)) {
                this.f65993c = bVar;
                this.f65991a.onSubscribe(this);
            }
        }
    }

    public CompletableDoFinally(io.reactivex.g gVar, w2.a aVar) {
        this.f65989a = gVar;
        this.f65990b = aVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f65989a.a(new DoFinallyObserver(dVar, this.f65990b));
    }
}
