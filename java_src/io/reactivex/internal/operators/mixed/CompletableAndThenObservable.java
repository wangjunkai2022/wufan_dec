package io.reactivex.internal.operators.mixed;

import io.reactivex.d;
import io.reactivex.disposables.b;
import io.reactivex.e0;
import io.reactivex.g;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableAndThenObservable<R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final g f67908a;

    /* renamed from: b  reason: collision with root package name */
    final e0<? extends R> f67909b;

    /* loaded from: classes5.dex */
    static final class AndThenObservableObserver<R> extends AtomicReference<b> implements g0<R>, d, b {
        private static final long serialVersionUID = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f67910a;

        /* renamed from: b  reason: collision with root package name */
        e0<? extends R> f67911b;

        AndThenObservableObserver(g0<? super R> g0Var, e0<? extends R> e0Var) {
            this.f67911b = e0Var;
            this.f67910a = g0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            e0<? extends R> e0Var = this.f67911b;
            if (e0Var == null) {
                this.f67910a.onComplete();
                return;
            }
            this.f67911b = null;
            e0Var.a(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f67910a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(R r3) {
            this.f67910a.onNext(r3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(b bVar) {
            DisposableHelper.replace(this, bVar);
        }
    }

    public CompletableAndThenObservable(g gVar, e0<? extends R> e0Var) {
        this.f67908a = gVar;
        this.f67909b = e0Var;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super R> g0Var) {
        AndThenObservableObserver andThenObservableObserver = new AndThenObservableObserver(g0Var, this.f67909b);
        g0Var.onSubscribe(andThenObservableObserver);
        this.f67908a.a(andThenObservableObserver);
    }
}
