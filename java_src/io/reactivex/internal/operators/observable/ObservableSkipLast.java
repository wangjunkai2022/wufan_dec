package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
/* loaded from: classes5.dex */
public final class ObservableSkipLast<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final int f68718b;

    /* loaded from: classes5.dex */
    static final class SkipLastObserver<T> extends ArrayDeque<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -3807491841935125653L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68719a;

        /* renamed from: b  reason: collision with root package name */
        final int f68720b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f68721c;

        SkipLastObserver(io.reactivex.g0<? super T> g0Var, int i2) {
            super(i2);
            this.f68719a = g0Var;
            this.f68720b = i2;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68721c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68721c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68719a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68719a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68720b == size()) {
                this.f68719a.onNext((T) poll());
            }
            offer(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68721c, bVar)) {
                this.f68721c = bVar;
                this.f68719a.onSubscribe(this);
            }
        }
    }

    public ObservableSkipLast(io.reactivex.e0<T> e0Var, int i2) {
        super(e0Var);
        this.f68718b = i2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new SkipLastObserver(g0Var, this.f68718b));
    }
}
