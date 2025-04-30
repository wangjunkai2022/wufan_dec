package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
/* loaded from: classes5.dex */
public final class ObservableTakeLast<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final int f68761b;

    /* loaded from: classes5.dex */
    static final class TakeLastObserver<T> extends ArrayDeque<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 7240042530241604978L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68762a;

        /* renamed from: b  reason: collision with root package name */
        final int f68763b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f68764c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f68765d;

        TakeLastObserver(io.reactivex.g0<? super T> g0Var, int i2) {
            this.f68762a = g0Var;
            this.f68763b = i2;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68765d) {
                return;
            }
            this.f68765d = true;
            this.f68764c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68765d;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            io.reactivex.g0<? super T> g0Var = this.f68762a;
            while (!this.f68765d) {
                Object obj = (T) poll();
                if (obj == null) {
                    if (this.f68765d) {
                        return;
                    }
                    g0Var.onComplete();
                    return;
                }
                g0Var.onNext(obj);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68762a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68763b == size()) {
                poll();
            }
            offer(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68764c, bVar)) {
                this.f68764c = bVar;
                this.f68762a.onSubscribe(this);
            }
        }
    }

    public ObservableTakeLast(io.reactivex.e0<T> e0Var, int i2) {
        super(e0Var);
        this.f68761b = i2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new TakeLastObserver(g0Var, this.f68761b));
    }
}
