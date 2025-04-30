package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
/* compiled from: ObservableFromArray.java */
/* loaded from: classes5.dex */
public final class j0<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final T[] f69097a;

    /* compiled from: ObservableFromArray.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.internal.observers.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69098a;

        /* renamed from: b  reason: collision with root package name */
        final T[] f69099b;

        /* renamed from: c  reason: collision with root package name */
        int f69100c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69101d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f69102e;

        a(io.reactivex.g0<? super T> g0Var, T[] tArr) {
            this.f69098a = g0Var;
            this.f69099b = tArr;
        }

        void a() {
            T[] tArr = this.f69099b;
            int length = tArr.length;
            for (int i2 = 0; i2 < length && !isDisposed(); i2++) {
                T t3 = tArr[i2];
                if (t3 == null) {
                    io.reactivex.g0<? super T> g0Var = this.f69098a;
                    g0Var.onError(new NullPointerException("The " + i2 + "th element is null"));
                    return;
                }
                this.f69098a.onNext(t3);
            }
            if (isDisposed()) {
                return;
            }
            this.f69098a.onComplete();
        }

        @Override // x2.o
        public void clear() {
            this.f69100c = this.f69099b.length;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69102e = true;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69102e;
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f69100c == this.f69099b.length;
        }

        @Override // x2.o
        @Nullable
        public T poll() {
            int i2 = this.f69100c;
            T[] tArr = this.f69099b;
            if (i2 != tArr.length) {
                this.f69100c = i2 + 1;
                return (T) io.reactivex.internal.functions.a.g(tArr[i2], "The array element is null");
            }
            return null;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 1) != 0) {
                this.f69101d = true;
                return 1;
            }
            return 0;
        }
    }

    public j0(T[] tArr) {
        this.f69097a = tArr;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var, this.f69097a);
        g0Var.onSubscribe(aVar);
        if (aVar.f69101d) {
            return;
        }
        aVar.a();
    }
}
