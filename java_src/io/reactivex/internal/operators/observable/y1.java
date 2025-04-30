package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;
/* compiled from: ObservableZipIterable.java */
/* loaded from: classes5.dex */
public final class y1<T, U, V> extends io.reactivex.z<V> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.z<? extends T> f69404a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<U> f69405b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<? super T, ? super U, ? extends V> f69406c;

    /* compiled from: ObservableZipIterable.java */
    /* loaded from: classes5.dex */
    static final class a<T, U, V> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super V> f69407a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<U> f69408b;

        /* renamed from: c  reason: collision with root package name */
        final w2.c<? super T, ? super U, ? extends V> f69409c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f69410d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69411e;

        a(io.reactivex.g0<? super V> g0Var, Iterator<U> it2, w2.c<? super T, ? super U, ? extends V> cVar) {
            this.f69407a = g0Var;
            this.f69408b = it2;
            this.f69409c = cVar;
        }

        void a(Throwable th) {
            this.f69411e = true;
            this.f69410d.dispose();
            this.f69407a.onError(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69410d.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69410d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69411e) {
                return;
            }
            this.f69411e = true;
            this.f69407a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69411e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69411e = true;
            this.f69407a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69411e) {
                return;
            }
            try {
                try {
                    this.f69407a.onNext(io.reactivex.internal.functions.a.g(this.f69409c.apply(t3, io.reactivex.internal.functions.a.g(this.f69408b.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                    try {
                        if (this.f69408b.hasNext()) {
                            return;
                        }
                        this.f69411e = true;
                        this.f69410d.dispose();
                        this.f69407a.onComplete();
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        a(th);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    a(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                a(th3);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69410d, bVar)) {
                this.f69410d = bVar;
                this.f69407a.onSubscribe(this);
            }
        }
    }

    public y1(io.reactivex.z<? extends T> zVar, Iterable<U> iterable, w2.c<? super T, ? super U, ? extends V> cVar) {
        this.f69404a = zVar;
        this.f69405b = iterable;
        this.f69406c = cVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super V> g0Var) {
        try {
            Iterator it2 = (Iterator) io.reactivex.internal.functions.a.g(this.f69405b.iterator(), "The iterator returned by other is null");
            try {
                if (!it2.hasNext()) {
                    EmptyDisposable.complete(g0Var);
                } else {
                    this.f69404a.a(new a(g0Var, it2, this.f69406c));
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, g0Var);
        }
    }
}
