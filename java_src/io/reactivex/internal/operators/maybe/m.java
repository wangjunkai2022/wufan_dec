package io.reactivex.internal.operators.maybe;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.Iterator;
/* compiled from: MaybeFlatMapIterableObservable.java */
/* loaded from: classes5.dex */
public final class m<T, R> extends io.reactivex.z<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f67874a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends Iterable<? extends R>> f67875b;

    /* compiled from: MaybeFlatMapIterableObservable.java */
    /* loaded from: classes5.dex */
    static final class a<T, R> extends io.reactivex.internal.observers.b<R> implements io.reactivex.t<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f67876a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends Iterable<? extends R>> f67877b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67878c;

        /* renamed from: d  reason: collision with root package name */
        volatile Iterator<? extends R> f67879d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f67880e;

        /* renamed from: f  reason: collision with root package name */
        boolean f67881f;

        a(io.reactivex.g0<? super R> g0Var, w2.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f67876a = g0Var;
            this.f67877b = oVar;
        }

        @Override // x2.o
        public void clear() {
            this.f67879d = null;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67880e = true;
            this.f67878c.dispose();
            this.f67878c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67880e;
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f67879d == null;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67876a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67878c = DisposableHelper.DISPOSED;
            this.f67876a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67878c, bVar)) {
                this.f67878c = bVar;
                this.f67876a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            io.reactivex.g0<? super R> g0Var = this.f67876a;
            try {
                Iterator<? extends R> it2 = this.f67877b.apply(t3).iterator();
                if (!it2.hasNext()) {
                    g0Var.onComplete();
                    return;
                }
                this.f67879d = it2;
                if (this.f67881f) {
                    g0Var.onNext(null);
                    g0Var.onComplete();
                    return;
                }
                while (!this.f67880e) {
                    try {
                        g0Var.onNext((R) it2.next());
                        if (this.f67880e) {
                            return;
                        }
                        try {
                            if (!it2.hasNext()) {
                                g0Var.onComplete();
                                return;
                            }
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            g0Var.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        g0Var.onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                g0Var.onError(th3);
            }
        }

        @Override // x2.o
        @Nullable
        public R poll() throws Exception {
            Iterator<? extends R> it2 = this.f67879d;
            if (it2 != null) {
                R r3 = (R) io.reactivex.internal.functions.a.g(it2.next(), "The iterator returned a null value");
                if (!it2.hasNext()) {
                    this.f67879d = null;
                }
                return r3;
            }
            return null;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                this.f67881f = true;
                return 2;
            }
            return 0;
        }
    }

    public m(io.reactivex.w<T> wVar, w2.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f67874a = wVar;
        this.f67875b = oVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super R> g0Var) {
        this.f67874a.a(new a(g0Var, this.f67875b));
    }
}
