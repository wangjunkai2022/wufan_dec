package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
/* compiled from: ObservableDistinctUntilChanged.java */
/* loaded from: classes5.dex */
public final class y<T, K> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, K> f69390b;

    /* renamed from: c  reason: collision with root package name */
    final w2.d<? super K, ? super K> f69391c;

    /* compiled from: ObservableDistinctUntilChanged.java */
    /* loaded from: classes5.dex */
    static final class a<T, K> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.o<? super T, K> f69392f;

        /* renamed from: g  reason: collision with root package name */
        final w2.d<? super K, ? super K> f69393g;

        /* renamed from: h  reason: collision with root package name */
        K f69394h;

        /* renamed from: i  reason: collision with root package name */
        boolean f69395i;

        a(io.reactivex.g0<? super T> g0Var, w2.o<? super T, K> oVar, w2.d<? super K, ? super K> dVar) {
            super(g0Var);
            this.f69392f = oVar;
            this.f69393g = dVar;
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f65895d) {
                return;
            }
            if (this.f65896e != 0) {
                this.f65892a.onNext(t3);
                return;
            }
            try {
                K apply = this.f69392f.apply(t3);
                if (this.f69395i) {
                    boolean a4 = this.f69393g.a((K) this.f69394h, apply);
                    this.f69394h = apply;
                    if (a4) {
                        return;
                    }
                } else {
                    this.f69395i = true;
                    this.f69394h = apply;
                }
                this.f65892a.onNext(t3);
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            while (true) {
                T poll = this.f65894c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f69392f.apply(poll);
                if (!this.f69395i) {
                    this.f69395i = true;
                    this.f69394h = apply;
                    return poll;
                } else if (!this.f69393g.a((K) this.f69394h, apply)) {
                    this.f69394h = apply;
                    return poll;
                } else {
                    this.f69394h = apply;
                }
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }
    }

    public y(io.reactivex.e0<T> e0Var, w2.o<? super T, K> oVar, w2.d<? super K, ? super K> dVar) {
        super(e0Var);
        this.f69390b = oVar;
        this.f69391c = dVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69390b, this.f69391c));
    }
}
