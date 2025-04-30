package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
/* compiled from: ObservableSingleSingle.java */
/* loaded from: classes5.dex */
public final class k1<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f69117a;

    /* renamed from: b  reason: collision with root package name */
    final T f69118b;

    /* compiled from: ObservableSingleSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f69119a;

        /* renamed from: b  reason: collision with root package name */
        final T f69120b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69121c;

        /* renamed from: d  reason: collision with root package name */
        T f69122d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69123e;

        a(io.reactivex.l0<? super T> l0Var, T t3) {
            this.f69119a = l0Var;
            this.f69120b = t3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69121c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69121c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69123e) {
                return;
            }
            this.f69123e = true;
            T t3 = this.f69122d;
            this.f69122d = null;
            if (t3 == null) {
                t3 = this.f69120b;
            }
            if (t3 != null) {
                this.f69119a.onSuccess(t3);
            } else {
                this.f69119a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69123e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69123e = true;
            this.f69119a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69123e) {
                return;
            }
            if (this.f69122d != null) {
                this.f69123e = true;
                this.f69121c.dispose();
                this.f69119a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f69122d = t3;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69121c, bVar)) {
                this.f69121c = bVar;
                this.f69119a.onSubscribe(this);
            }
        }
    }

    public k1(io.reactivex.e0<? extends T> e0Var, T t3) {
        this.f69117a = e0Var;
        this.f69118b = t3;
    }

    @Override // io.reactivex.i0
    public void Y0(io.reactivex.l0<? super T> l0Var) {
        this.f69117a.a(new a(l0Var, this.f69118b));
    }
}
