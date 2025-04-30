package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
/* compiled from: ObservableDelaySubscriptionOther.java */
/* loaded from: classes5.dex */
public final class u<T, U> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f69296a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<U> f69297b;

    /* compiled from: ObservableDelaySubscriptionOther.java */
    /* loaded from: classes5.dex */
    final class a implements io.reactivex.g0<U> {

        /* renamed from: a  reason: collision with root package name */
        final SequentialDisposable f69298a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69299b;

        /* renamed from: c  reason: collision with root package name */
        boolean f69300c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableDelaySubscriptionOther.java */
        /* renamed from: io.reactivex.internal.operators.observable.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public final class C0460a implements io.reactivex.g0<T> {
            C0460a() {
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                a.this.f69299b.onComplete();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                a.this.f69299b.onError(th);
            }

            @Override // io.reactivex.g0
            public void onNext(T t3) {
                a.this.f69299b.onNext(t3);
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                a.this.f69298a.update(bVar);
            }
        }

        a(SequentialDisposable sequentialDisposable, io.reactivex.g0<? super T> g0Var) {
            this.f69298a = sequentialDisposable;
            this.f69299b = g0Var;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69300c) {
                return;
            }
            this.f69300c = true;
            u.this.f69296a.a(new C0460a());
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69300c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69300c = true;
            this.f69299b.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(U u3) {
            onComplete();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69298a.update(bVar);
        }
    }

    public u(io.reactivex.e0<? extends T> e0Var, io.reactivex.e0<U> e0Var2) {
        this.f69296a = e0Var;
        this.f69297b = e0Var2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        g0Var.onSubscribe(sequentialDisposable);
        this.f69297b.a(new a(sequentialDisposable, g0Var));
    }
}
