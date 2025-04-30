package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* compiled from: ObservableScan.java */
/* loaded from: classes5.dex */
public final class g1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.c<T, T, T> f69068b;

    /* compiled from: ObservableScan.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69069a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<T, T, T> f69070b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69071c;

        /* renamed from: d  reason: collision with root package name */
        T f69072d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69073e;

        a(io.reactivex.g0<? super T> g0Var, w2.c<T, T, T> cVar) {
            this.f69069a = g0Var;
            this.f69070b = cVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69071c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69071c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69073e) {
                return;
            }
            this.f69073e = true;
            this.f69069a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69073e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69073e = true;
            this.f69069a.onError(th);
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Object] */
        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69073e) {
                return;
            }
            io.reactivex.g0<? super T> g0Var = this.f69069a;
            T t4 = this.f69072d;
            if (t4 == null) {
                this.f69072d = t3;
                g0Var.onNext(t3);
                return;
            }
            try {
                ?? r4 = (T) io.reactivex.internal.functions.a.g(this.f69070b.apply(t4, t3), "The value returned by the accumulator is null");
                this.f69072d = r4;
                g0Var.onNext(r4);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69071c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69071c, bVar)) {
                this.f69071c = bVar;
                this.f69069a.onSubscribe(this);
            }
        }
    }

    public g1(io.reactivex.e0<T> e0Var, w2.c<T, T, T> cVar) {
        super(e0Var);
        this.f69068b = cVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69068b));
    }
}
