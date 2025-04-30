package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
/* compiled from: FlowableMap.java */
/* loaded from: classes5.dex */
public final class q0<T, U> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends U> f67497c;

    /* compiled from: FlowableMap.java */
    /* loaded from: classes5.dex */
    static final class a<T, U> extends io.reactivex.internal.subscribers.a<T, U> {

        /* renamed from: f  reason: collision with root package name */
        final w2.o<? super T, ? extends U> f67498f;

        a(x2.a<? super U> aVar, w2.o<? super T, ? extends U> oVar) {
            super(aVar);
            this.f67498f = oVar;
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f70007d) {
                return;
            }
            if (this.f70008e != 0) {
                this.f70004a.onNext(null);
                return;
            }
            try {
                this.f70004a.onNext(io.reactivex.internal.functions.a.g(this.f67498f.apply(t3), "The mapper function returned a null value."));
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override // x2.o
        @Nullable
        public U poll() throws Exception {
            T poll = this.f70006c.poll();
            if (poll != null) {
                return (U) io.reactivex.internal.functions.a.g(this.f67498f.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }

        @Override // x2.a
        public boolean v0(T t3) {
            if (this.f70007d) {
                return false;
            }
            try {
                return this.f70004a.v0(io.reactivex.internal.functions.a.g(this.f67498f.apply(t3), "The mapper function returned a null value."));
            } catch (Throwable th) {
                c(th);
                return true;
            }
        }
    }

    /* compiled from: FlowableMap.java */
    /* loaded from: classes5.dex */
    static final class b<T, U> extends io.reactivex.internal.subscribers.b<T, U> {

        /* renamed from: f  reason: collision with root package name */
        final w2.o<? super T, ? extends U> f67499f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(l3.c<? super U> cVar, w2.o<? super T, ? extends U> oVar) {
            super(cVar);
            this.f67499f = oVar;
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f70012d) {
                return;
            }
            if (this.f70013e != 0) {
                this.f70009a.onNext(null);
                return;
            }
            try {
                this.f70009a.onNext(io.reactivex.internal.functions.a.g(this.f67499f.apply(t3), "The mapper function returned a null value."));
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override // x2.o
        @Nullable
        public U poll() throws Exception {
            T poll = this.f70011c.poll();
            if (poll != null) {
                return (U) io.reactivex.internal.functions.a.g(this.f67499f.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }
    }

    public q0(io.reactivex.j<T> jVar, w2.o<? super T, ? extends U> oVar) {
        super(jVar);
        this.f67497c = oVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.j
    public void h6(l3.c<? super U> cVar) {
        if (cVar instanceof x2.a) {
            this.f67288b.g6(new a((x2.a) cVar, this.f67497c));
        } else {
            this.f67288b.g6(new b(cVar, this.f67497c));
        }
    }
}
