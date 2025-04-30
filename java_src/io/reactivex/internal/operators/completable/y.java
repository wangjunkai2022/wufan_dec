package io.reactivex.internal.operators.completable;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: CompletableToObservable.java */
/* loaded from: classes5.dex */
public final class y<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66118a;

    /* compiled from: CompletableToObservable.java */
    /* loaded from: classes5.dex */
    static final class a extends io.reactivex.internal.observers.b<Void> implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        final g0<?> f66119a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f66120b;

        a(g0<?> g0Var) {
            this.f66119a = g0Var;
        }

        @Override // x2.o
        /* renamed from: a */
        public Void poll() throws Exception {
            return null;
        }

        @Override // x2.o
        public void clear() {
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f66120b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66120b.isDisposed();
        }

        @Override // x2.o
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f66119a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f66119a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f66120b, bVar)) {
                this.f66120b = bVar;
                this.f66119a.onSubscribe(this);
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return i2 & 2;
        }
    }

    public y(io.reactivex.g gVar) {
        this.f66118a = gVar;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super T> g0Var) {
        this.f66118a.a(new a(g0Var));
    }
}
