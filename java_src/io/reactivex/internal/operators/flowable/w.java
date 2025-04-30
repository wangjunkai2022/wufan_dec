package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
/* compiled from: FlowableDoAfterNext.java */
/* loaded from: classes5.dex */
public final class w<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super T> f67548c;

    /* compiled from: FlowableDoAfterNext.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.g<? super T> f67549f;

        a(x2.a<? super T> aVar, w2.g<? super T> gVar) {
            super(aVar);
            this.f67549f = gVar;
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f70004a.onNext(t3);
            if (this.f70008e == 0) {
                try {
                    this.f67549f.accept(t3);
                } catch (Throwable th) {
                    c(th);
                }
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T poll = this.f70006c.poll();
            if (poll != null) {
                this.f67549f.accept(poll);
            }
            return poll;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }

        @Override // x2.a
        public boolean v0(T t3) {
            boolean v02 = this.f70004a.v0(t3);
            try {
                this.f67549f.accept(t3);
            } catch (Throwable th) {
                c(th);
            }
            return v02;
        }
    }

    /* compiled from: FlowableDoAfterNext.java */
    /* loaded from: classes5.dex */
    static final class b<T> extends io.reactivex.internal.subscribers.b<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.g<? super T> f67550f;

        b(l3.c<? super T> cVar, w2.g<? super T> gVar) {
            super(cVar);
            this.f67550f = gVar;
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f70012d) {
                return;
            }
            this.f70009a.onNext(t3);
            if (this.f70013e == 0) {
                try {
                    this.f67550f.accept(t3);
                } catch (Throwable th) {
                    c(th);
                }
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T poll = this.f70011c.poll();
            if (poll != null) {
                this.f67550f.accept(poll);
            }
            return poll;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }
    }

    public w(io.reactivex.j<T> jVar, w2.g<? super T> gVar) {
        super(jVar);
        this.f67548c = gVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        if (cVar instanceof x2.a) {
            this.f67288b.g6(new a((x2.a) cVar, this.f67548c));
        } else {
            this.f67288b.g6(new b(cVar, this.f67548c));
        }
    }
}
