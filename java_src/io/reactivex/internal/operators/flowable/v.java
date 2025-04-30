package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
/* compiled from: FlowableDistinctUntilChanged.java */
/* loaded from: classes5.dex */
public final class v<T, K> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, K> f67535c;

    /* renamed from: d  reason: collision with root package name */
    final w2.d<? super K, ? super K> f67536d;

    /* compiled from: FlowableDistinctUntilChanged.java */
    /* loaded from: classes5.dex */
    static final class a<T, K> extends io.reactivex.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.o<? super T, K> f67537f;

        /* renamed from: g  reason: collision with root package name */
        final w2.d<? super K, ? super K> f67538g;

        /* renamed from: h  reason: collision with root package name */
        K f67539h;

        /* renamed from: i  reason: collision with root package name */
        boolean f67540i;

        a(x2.a<? super T> aVar, w2.o<? super T, K> oVar, w2.d<? super K, ? super K> dVar) {
            super(aVar);
            this.f67537f = oVar;
            this.f67538g = dVar;
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
            while (true) {
                T poll = this.f70006c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f67537f.apply(poll);
                if (!this.f67540i) {
                    this.f67540i = true;
                    this.f67539h = apply;
                    return poll;
                } else if (!this.f67538g.a((K) this.f67539h, apply)) {
                    this.f67539h = apply;
                    return poll;
                } else {
                    this.f67539h = apply;
                    if (this.f70008e != 1) {
                        this.f70005b.request(1L);
                    }
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
                return this.f70004a.v0(t3);
            }
            try {
                K apply = this.f67537f.apply(t3);
                if (this.f67540i) {
                    boolean a4 = this.f67538g.a((K) this.f67539h, apply);
                    this.f67539h = apply;
                    if (a4) {
                        return false;
                    }
                } else {
                    this.f67540i = true;
                    this.f67539h = apply;
                }
                this.f70004a.onNext(t3);
                return true;
            } catch (Throwable th) {
                c(th);
                return true;
            }
        }
    }

    /* compiled from: FlowableDistinctUntilChanged.java */
    /* loaded from: classes5.dex */
    static final class b<T, K> extends io.reactivex.internal.subscribers.b<T, T> implements x2.a<T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.o<? super T, K> f67541f;

        /* renamed from: g  reason: collision with root package name */
        final w2.d<? super K, ? super K> f67542g;

        /* renamed from: h  reason: collision with root package name */
        K f67543h;

        /* renamed from: i  reason: collision with root package name */
        boolean f67544i;

        b(l3.c<? super T> cVar, w2.o<? super T, K> oVar, w2.d<? super K, ? super K> dVar) {
            super(cVar);
            this.f67541f = oVar;
            this.f67542g = dVar;
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
            while (true) {
                T poll = this.f70011c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f67541f.apply(poll);
                if (!this.f67544i) {
                    this.f67544i = true;
                    this.f67543h = apply;
                    return poll;
                } else if (!this.f67542g.a((K) this.f67543h, apply)) {
                    this.f67543h = apply;
                    return poll;
                } else {
                    this.f67543h = apply;
                    if (this.f70013e != 1) {
                        this.f70010b.request(1L);
                    }
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
                this.f70009a.onNext(t3);
                return true;
            }
            try {
                K apply = this.f67541f.apply(t3);
                if (this.f67544i) {
                    boolean a4 = this.f67542g.a((K) this.f67543h, apply);
                    this.f67543h = apply;
                    if (a4) {
                        return false;
                    }
                } else {
                    this.f67544i = true;
                    this.f67543h = apply;
                }
                this.f70009a.onNext(t3);
                return true;
            } catch (Throwable th) {
                c(th);
                return true;
            }
        }
    }

    public v(io.reactivex.j<T> jVar, w2.o<? super T, K> oVar, w2.d<? super K, ? super K> dVar) {
        super(jVar);
        this.f67535c = oVar;
        this.f67536d = dVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        if (cVar instanceof x2.a) {
            this.f67288b.g6(new a((x2.a) cVar, this.f67535c, this.f67536d));
        } else {
            this.f67288b.g6(new b(cVar, this.f67535c, this.f67536d));
        }
    }
}
