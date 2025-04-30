package io.reactivex.internal.operators.single;

import io.reactivex.annotations.Nullable;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.l0;
import io.reactivex.o0;
import io.reactivex.z;
import java.util.Iterator;
/* loaded from: classes5.dex */
public final class SingleFlatMapIterableObservable<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69647a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends Iterable<? extends R>> f69648b;

    /* loaded from: classes5.dex */
    static final class FlatMapIterableObserver<T, R> extends BasicIntQueueDisposable<R> implements l0<T> {
        private static final long serialVersionUID = -8938804753851907758L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f69649a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends Iterable<? extends R>> f69650b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69651c;

        /* renamed from: d  reason: collision with root package name */
        volatile Iterator<? extends R> f69652d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f69653e;

        /* renamed from: f  reason: collision with root package name */
        boolean f69654f;

        FlatMapIterableObserver(g0<? super R> g0Var, w2.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f69649a = g0Var;
            this.f69650b = oVar;
        }

        @Override // x2.o
        public void clear() {
            this.f69652d = null;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69653e = true;
            this.f69651c.dispose();
            this.f69651c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69653e;
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f69652d == null;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69651c = DisposableHelper.DISPOSED;
            this.f69649a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69651c, bVar)) {
                this.f69651c = bVar;
                this.f69649a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            g0<? super R> g0Var = this.f69649a;
            try {
                Iterator<? extends R> it2 = this.f69650b.apply(t3).iterator();
                if (!it2.hasNext()) {
                    g0Var.onComplete();
                } else if (this.f69654f) {
                    this.f69652d = it2;
                    g0Var.onNext(null);
                    g0Var.onComplete();
                } else {
                    while (!this.f69653e) {
                        try {
                            g0Var.onNext((R) it2.next());
                            if (this.f69653e) {
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
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f69649a.onError(th3);
            }
        }

        @Override // x2.o
        @Nullable
        public R poll() throws Exception {
            Iterator<? extends R> it2 = this.f69652d;
            if (it2 != null) {
                R r3 = (R) io.reactivex.internal.functions.a.g(it2.next(), "The iterator returned a null value");
                if (!it2.hasNext()) {
                    this.f69652d = null;
                }
                return r3;
            }
            return null;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                this.f69654f = true;
                return 2;
            }
            return 0;
        }
    }

    public SingleFlatMapIterableObservable(o0<T> o0Var, w2.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f69647a = o0Var;
        this.f69648b = oVar;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super R> g0Var) {
        this.f69647a.a(new FlatMapIterableObserver(g0Var, this.f69648b));
    }
}
