package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
/* compiled from: ObservableFilter.java */
/* loaded from: classes5.dex */
public final class h0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f69080b;

    /* compiled from: ObservableFilter.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.r<? super T> f69081f;

        a(io.reactivex.g0<? super T> g0Var, w2.r<? super T> rVar) {
            super(g0Var);
            this.f69081f = rVar;
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f65896e == 0) {
                try {
                    if (this.f69081f.test(t3)) {
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
            } while (!this.f69081f.test(poll));
            return poll;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }
    }

    public h0(io.reactivex.e0<T> e0Var, w2.r<? super T> rVar) {
        super(e0Var);
        this.f69080b = rVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69080b));
    }
}
