package io.reactivex.internal.operators.completable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableObserveOn extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66012a;

    /* renamed from: b  reason: collision with root package name */
    final h0 f66013b;

    /* loaded from: classes5.dex */
    static final class ObserveOnCompletableObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 8571289934935992137L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f66014a;

        /* renamed from: b  reason: collision with root package name */
        final h0 f66015b;

        /* renamed from: c  reason: collision with root package name */
        Throwable f66016c;

        ObserveOnCompletableObserver(io.reactivex.d dVar, h0 h0Var) {
            this.f66014a = dVar;
            this.f66015b = h0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            DisposableHelper.replace(this, this.f66015b.e(this));
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f66016c = th;
            DisposableHelper.replace(this, this.f66015b.e(this));
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f66014a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f66016c;
            if (th != null) {
                this.f66016c = null;
                this.f66014a.onError(th);
                return;
            }
            this.f66014a.onComplete();
        }
    }

    public CompletableObserveOn(io.reactivex.g gVar, h0 h0Var) {
        this.f66012a = gVar;
        this.f66013b = h0Var;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f66012a.a(new ObserveOnCompletableObserver(dVar, this.f66013b));
    }
}
