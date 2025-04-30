package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableSkipUntil.java */
/* loaded from: classes5.dex */
public final class m1<T, U> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<U> f69178b;

    /* compiled from: ObservableSkipUntil.java */
    /* loaded from: classes5.dex */
    final class a implements io.reactivex.g0<U> {

        /* renamed from: a  reason: collision with root package name */
        final ArrayCompositeDisposable f69179a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f69180b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.observers.l<T> f69181c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f69182d;

        a(ArrayCompositeDisposable arrayCompositeDisposable, b<T> bVar, io.reactivex.observers.l<T> lVar) {
            this.f69179a = arrayCompositeDisposable;
            this.f69180b = bVar;
            this.f69181c = lVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69180b.f69187d = true;
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69179a.dispose();
            this.f69181c.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(U u3) {
            this.f69182d.dispose();
            this.f69180b.f69187d = true;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69182d, bVar)) {
                this.f69182d = bVar;
                this.f69179a.b(1, bVar);
            }
        }
    }

    /* compiled from: ObservableSkipUntil.java */
    /* loaded from: classes5.dex */
    static final class b<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69184a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayCompositeDisposable f69185b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69186c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f69187d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69188e;

        b(io.reactivex.g0<? super T> g0Var, ArrayCompositeDisposable arrayCompositeDisposable) {
            this.f69184a = g0Var;
            this.f69185b = arrayCompositeDisposable;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f69185b.dispose();
            this.f69184a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f69185b.dispose();
            this.f69184a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69188e) {
                this.f69184a.onNext(t3);
            } else if (this.f69187d) {
                this.f69188e = true;
                this.f69184a.onNext(t3);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69186c, bVar)) {
                this.f69186c = bVar;
                this.f69185b.b(0, bVar);
            }
        }
    }

    public m1(io.reactivex.e0<T> e0Var, io.reactivex.e0<U> e0Var2) {
        super(e0Var);
        this.f69178b = e0Var2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.observers.l lVar = new io.reactivex.observers.l(g0Var);
        ArrayCompositeDisposable arrayCompositeDisposable = new ArrayCompositeDisposable(2);
        lVar.onSubscribe(arrayCompositeDisposable);
        b bVar = new b(lVar, arrayCompositeDisposable);
        this.f69178b.a(new a(arrayCompositeDisposable, bVar, lVar));
        this.f68961a.a(bVar);
    }
}
