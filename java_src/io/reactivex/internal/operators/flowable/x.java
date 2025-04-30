package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
/* compiled from: FlowableDoOnEach.java */
/* loaded from: classes5.dex */
public final class x<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super T> f67553c;

    /* renamed from: d  reason: collision with root package name */
    final w2.g<? super Throwable> f67554d;

    /* renamed from: e  reason: collision with root package name */
    final w2.a f67555e;

    /* renamed from: f  reason: collision with root package name */
    final w2.a f67556f;

    /* compiled from: FlowableDoOnEach.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.g<? super T> f67557f;

        /* renamed from: g  reason: collision with root package name */
        final w2.g<? super Throwable> f67558g;

        /* renamed from: h  reason: collision with root package name */
        final w2.a f67559h;

        /* renamed from: i  reason: collision with root package name */
        final w2.a f67560i;

        a(x2.a<? super T> aVar, w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar2, w2.a aVar3) {
            super(aVar);
            this.f67557f = gVar;
            this.f67558g = gVar2;
            this.f67559h = aVar2;
            this.f67560i = aVar3;
        }

        @Override // io.reactivex.internal.subscribers.a, l3.c
        public void onComplete() {
            if (this.f70007d) {
                return;
            }
            try {
                this.f67559h.run();
                this.f70007d = true;
                this.f70004a.onComplete();
                try {
                    this.f67560i.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                c(th2);
            }
        }

        @Override // io.reactivex.internal.subscribers.a, l3.c
        public void onError(Throwable th) {
            if (this.f70007d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            boolean z3 = true;
            this.f70007d = true;
            try {
                this.f67558g.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f70004a.onError(new CompositeException(th, th2));
                z3 = false;
            }
            if (z3) {
                this.f70004a.onError(th);
            }
            try {
                this.f67560i.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(th3);
            }
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
                this.f67557f.accept(t3);
                this.f70004a.onNext(t3);
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            try {
                T poll = this.f70006c.poll();
                if (poll != null) {
                    try {
                        this.f67557f.accept(poll);
                    } catch (Throwable th) {
                        try {
                            io.reactivex.exceptions.a.b(th);
                            this.f67558g.accept(th);
                            throw ExceptionHelper.d(th);
                        } finally {
                            this.f67560i.run();
                        }
                    }
                } else if (this.f70008e == 1) {
                    this.f67559h.run();
                }
                return poll;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f67558g.accept(th2);
                    throw ExceptionHelper.d(th2);
                } catch (Throwable th3) {
                    throw new CompositeException(th2, th3);
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
            try {
                this.f67557f.accept(t3);
                return this.f70004a.v0(t3);
            } catch (Throwable th) {
                c(th);
                return false;
            }
        }
    }

    /* compiled from: FlowableDoOnEach.java */
    /* loaded from: classes5.dex */
    static final class b<T> extends io.reactivex.internal.subscribers.b<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final w2.g<? super T> f67561f;

        /* renamed from: g  reason: collision with root package name */
        final w2.g<? super Throwable> f67562g;

        /* renamed from: h  reason: collision with root package name */
        final w2.a f67563h;

        /* renamed from: i  reason: collision with root package name */
        final w2.a f67564i;

        b(l3.c<? super T> cVar, w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.a aVar2) {
            super(cVar);
            this.f67561f = gVar;
            this.f67562g = gVar2;
            this.f67563h = aVar;
            this.f67564i = aVar2;
        }

        @Override // io.reactivex.internal.subscribers.b, l3.c
        public void onComplete() {
            if (this.f70012d) {
                return;
            }
            try {
                this.f67563h.run();
                this.f70012d = true;
                this.f70009a.onComplete();
                try {
                    this.f67564i.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                c(th2);
            }
        }

        @Override // io.reactivex.internal.subscribers.b, l3.c
        public void onError(Throwable th) {
            if (this.f70012d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            boolean z3 = true;
            this.f70012d = true;
            try {
                this.f67562g.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f70009a.onError(new CompositeException(th, th2));
                z3 = false;
            }
            if (z3) {
                this.f70009a.onError(th);
            }
            try {
                this.f67564i.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(th3);
            }
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
                this.f67561f.accept(t3);
                this.f70009a.onNext(t3);
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            try {
                T poll = this.f70011c.poll();
                if (poll != null) {
                    try {
                        this.f67561f.accept(poll);
                    } catch (Throwable th) {
                        try {
                            io.reactivex.exceptions.a.b(th);
                            this.f67562g.accept(th);
                            throw ExceptionHelper.d(th);
                        } finally {
                            this.f67564i.run();
                        }
                    }
                } else if (this.f70013e == 1) {
                    this.f67563h.run();
                }
                return poll;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f67562g.accept(th2);
                    throw ExceptionHelper.d(th2);
                } catch (Throwable th3) {
                    throw new CompositeException(th2, th3);
                }
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }
    }

    public x(io.reactivex.j<T> jVar, w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.a aVar2) {
        super(jVar);
        this.f67553c = gVar;
        this.f67554d = gVar2;
        this.f67555e = aVar;
        this.f67556f = aVar2;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        if (cVar instanceof x2.a) {
            this.f67288b.g6(new a((x2.a) cVar, this.f67553c, this.f67554d, this.f67555e, this.f67556f));
        } else {
            this.f67288b.g6(new b(cVar, this.f67553c, this.f67554d, this.f67555e, this.f67556f));
        }
    }
}
