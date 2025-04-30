package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
/* compiled from: ObservableMap.java */
/* loaded from: classes5.dex */
public final class x0<T, U> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends U> f69348b;

    /* compiled from: ObservableMap.java */
    /* loaded from: classes5.dex */
    static final class a<T, U> extends io.reactivex.internal.observers.a<T, U> {

        /* renamed from: f  reason: collision with root package name */
        final w2.o<? super T, ? extends U> f69349f;

        a(io.reactivex.g0<? super U> g0Var, w2.o<? super T, ? extends U> oVar) {
            super(g0Var);
            this.f69349f = oVar;
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f65895d) {
                return;
            }
            if (this.f65896e != 0) {
                this.f65892a.onNext(null);
                return;
            }
            try {
                this.f65892a.onNext(io.reactivex.internal.functions.a.g(this.f69349f.apply(t3), "The mapper function returned a null value."));
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override // x2.o
        @Nullable
        public U poll() throws Exception {
            T poll = this.f65894c.poll();
            if (poll != null) {
                return (U) io.reactivex.internal.functions.a.g(this.f69349f.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }
    }

    public x0(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends U> oVar) {
        super(e0Var);
        this.f69348b = oVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super U> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69348b));
    }
}
