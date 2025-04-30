package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
/* compiled from: ObservableElementAtSingle.java */
/* loaded from: classes5.dex */
public final class e0<T> extends io.reactivex.i0<T> implements x2.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69036a;

    /* renamed from: b  reason: collision with root package name */
    final long f69037b;

    /* renamed from: c  reason: collision with root package name */
    final T f69038c;

    /* compiled from: ObservableElementAtSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f69039a;

        /* renamed from: b  reason: collision with root package name */
        final long f69040b;

        /* renamed from: c  reason: collision with root package name */
        final T f69041c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f69042d;

        /* renamed from: e  reason: collision with root package name */
        long f69043e;

        /* renamed from: f  reason: collision with root package name */
        boolean f69044f;

        a(io.reactivex.l0<? super T> l0Var, long j4, T t3) {
            this.f69039a = l0Var;
            this.f69040b = j4;
            this.f69041c = t3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69042d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69042d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69044f) {
                return;
            }
            this.f69044f = true;
            T t3 = this.f69041c;
            if (t3 != null) {
                this.f69039a.onSuccess(t3);
            } else {
                this.f69039a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69044f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69044f = true;
            this.f69039a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69044f) {
                return;
            }
            long j4 = this.f69043e;
            if (j4 == this.f69040b) {
                this.f69044f = true;
                this.f69042d.dispose();
                this.f69039a.onSuccess(t3);
                return;
            }
            this.f69043e = j4 + 1;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69042d, bVar)) {
                this.f69042d = bVar;
                this.f69039a.onSubscribe(this);
            }
        }
    }

    public e0(io.reactivex.e0<T> e0Var, long j4, T t3) {
        this.f69036a = e0Var;
        this.f69037b = j4;
        this.f69038c = t3;
    }

    @Override // io.reactivex.i0
    public void Y0(io.reactivex.l0<? super T> l0Var) {
        this.f69036a.a(new a(l0Var, this.f69037b, this.f69038c));
    }

    @Override // x2.d
    public io.reactivex.z<T> b() {
        return io.reactivex.plugins.a.R(new c0(this.f69036a, this.f69037b, this.f69038c, true));
    }
}
