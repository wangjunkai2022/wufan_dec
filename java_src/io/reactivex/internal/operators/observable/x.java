package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;
/* compiled from: ObservableDistinct.java */
/* loaded from: classes5.dex */
public final class x<T, K> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, K> f69344b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<? extends Collection<? super K>> f69345c;

    /* compiled from: ObservableDistinct.java */
    /* loaded from: classes5.dex */
    static final class a<T, K> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final Collection<? super K> f69346f;

        /* renamed from: g  reason: collision with root package name */
        final w2.o<? super T, K> f69347g;

        a(io.reactivex.g0<? super T> g0Var, w2.o<? super T, K> oVar, Collection<? super K> collection) {
            super(g0Var);
            this.f69347g = oVar;
            this.f69346f = collection;
        }

        @Override // io.reactivex.internal.observers.a, x2.o
        public void clear() {
            this.f69346f.clear();
            super.clear();
        }

        @Override // io.reactivex.internal.observers.a, io.reactivex.g0
        public void onComplete() {
            if (this.f65895d) {
                return;
            }
            this.f65895d = true;
            this.f69346f.clear();
            this.f65892a.onComplete();
        }

        @Override // io.reactivex.internal.observers.a, io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f65895d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f65895d = true;
            this.f69346f.clear();
            this.f65892a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f65895d) {
                return;
            }
            if (this.f65896e == 0) {
                try {
                    if (this.f69346f.add(io.reactivex.internal.functions.a.g(this.f69347g.apply(t3), "The keySelector returned a null key"))) {
                        this.f65892a.onNext(t3);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    c(th);
                    return;
                }
            }
            this.f65892a.onNext(null);
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T poll;
            do {
                poll = this.f65894c.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f69346f.add((Object) io.reactivex.internal.functions.a.g(this.f69347g.apply(poll), "The keySelector returned a null key")));
            return poll;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }
    }

    public x(io.reactivex.e0<T> e0Var, w2.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        super(e0Var);
        this.f69344b = oVar;
        this.f69345c = callable;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        try {
            this.f68961a.a(new a(g0Var, this.f69344b, (Collection) io.reactivex.internal.functions.a.g(this.f69345c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
