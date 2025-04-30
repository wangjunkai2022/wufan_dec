package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
/* compiled from: ObservableDoAfterNext.java */
/* loaded from: classes5.dex */
public final class z<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super T> f69412b;

    /* compiled from: ObservableDoAfterNext.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.g<? super T> f69413f;

        a(io.reactivex.g0<? super T> g0Var, w2.g<? super T> gVar) {
            super(g0Var);
            this.f69413f = gVar;
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f65892a.onNext(t3);
            if (this.f65896e == 0) {
                try {
                    this.f69413f.accept(t3);
                } catch (Throwable th) {
                    c(th);
                }
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T poll = this.f65894c.poll();
            if (poll != null) {
                this.f69413f.accept(poll);
            }
            return poll;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }
    }

    public z(io.reactivex.e0<T> e0Var, w2.g<? super T> gVar) {
        super(e0Var);
        this.f69412b = gVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69412b));
    }
}
