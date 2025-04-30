package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
/* compiled from: FlowableFilter.java */
/* loaded from: classes5.dex */
public final class d0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.r<? super T> f67335c;

    /* compiled from: FlowableFilter.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.r<? super T> f67336f;

        a(x2.a<? super T> aVar, w2.r<? super T> rVar) {
            super(aVar);
            this.f67336f = rVar;
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (v0(t3)) {
                return;
            }
            this.f70005b.request(1L);
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            x2.l<T> lVar = this.f70006c;
            w2.r<? super T> rVar = this.f67336f;
            while (true) {
                T poll = lVar.poll();
                if (poll == null) {
                    return null;
                }
                if (rVar.test(poll)) {
                    return poll;
                }
                if (this.f70008e == 2) {
                    lVar.request(1L);
                }
            }
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
            if (this.f70008e != 0) {
                return this.f70004a.v0(null);
            }
            try {
                return this.f67336f.test(t3) && this.f70004a.v0(t3);
            } catch (Throwable th) {
                c(th);
                return true;
            }
        }
    }

    /* compiled from: FlowableFilter.java */
    /* loaded from: classes5.dex */
    static final class b<T> extends io.reactivex.internal.subscribers.b<T, T> implements x2.a<T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.r<? super T> f67337f;

        b(l3.c<? super T> cVar, w2.r<? super T> rVar) {
            super(cVar);
            this.f67337f = rVar;
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (v0(t3)) {
                return;
            }
            this.f70010b.request(1L);
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            x2.l<T> lVar = this.f70011c;
            w2.r<? super T> rVar = this.f67337f;
            while (true) {
                T poll = lVar.poll();
                if (poll == null) {
                    return null;
                }
                if (rVar.test(poll)) {
                    return poll;
                }
                if (this.f70013e == 2) {
                    lVar.request(1L);
                }
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }

        @Override // x2.a
        public boolean v0(T t3) {
            if (this.f70012d) {
                return false;
            }
            if (this.f70013e != 0) {
                this.f70009a.onNext(null);
                return true;
            }
            try {
                boolean test2 = this.f67337f.test(t3);
                if (test2) {
                    this.f70009a.onNext(t3);
                }
                return test2;
            } catch (Throwable th) {
                c(th);
                return true;
            }
        }
    }

    public d0(io.reactivex.j<T> jVar, w2.r<? super T> rVar) {
        super(jVar);
        this.f67335c = rVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        if (cVar instanceof x2.a) {
            this.f67288b.g6(new a((x2.a) cVar, this.f67335c));
        } else {
            this.f67288b.g6(new b(cVar, this.f67335c));
        }
    }
}
