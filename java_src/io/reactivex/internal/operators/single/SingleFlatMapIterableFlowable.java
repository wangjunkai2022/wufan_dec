package io.reactivex.internal.operators.single;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class SingleFlatMapIterableFlowable<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final o0<T> f69638b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends Iterable<? extends R>> f69639c;

    /* loaded from: classes5.dex */
    static final class FlatMapIterableObserver<T, R> extends BasicIntQueueSubscription<R> implements l0<T> {
        private static final long serialVersionUID = -8938804753851907758L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f69640a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends Iterable<? extends R>> f69641b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f69642c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f69643d;

        /* renamed from: e  reason: collision with root package name */
        volatile Iterator<? extends R> f69644e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f69645f;

        /* renamed from: g  reason: collision with root package name */
        boolean f69646g;

        FlatMapIterableObserver(l3.c<? super R> cVar, w2.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f69640a = cVar;
            this.f69641b = oVar;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super R> cVar = this.f69640a;
            Iterator<? extends R> it2 = this.f69644e;
            if (this.f69646g && it2 != null) {
                cVar.onNext(null);
                cVar.onComplete();
                return;
            }
            int i2 = 1;
            while (true) {
                if (it2 != null) {
                    long j4 = this.f69642c.get();
                    if (j4 == Long.MAX_VALUE) {
                        d(cVar, it2);
                        return;
                    }
                    long j5 = 0;
                    while (j5 != j4) {
                        if (this.f69645f) {
                            return;
                        }
                        try {
                            cVar.onNext((Object) io.reactivex.internal.functions.a.g(it2.next(), "The iterator returned a null value"));
                            if (this.f69645f) {
                                return;
                            }
                            j5++;
                            try {
                                if (!it2.hasNext()) {
                                    cVar.onComplete();
                                    return;
                                }
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                cVar.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            cVar.onError(th2);
                            return;
                        }
                    }
                    if (j5 != 0) {
                        io.reactivex.internal.util.b.e(this.f69642c, j5);
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
                if (it2 == null) {
                    it2 = this.f69644e;
                }
            }
        }

        @Override // l3.d
        public void cancel() {
            this.f69645f = true;
            this.f69643d.dispose();
            this.f69643d = DisposableHelper.DISPOSED;
        }

        @Override // x2.o
        public void clear() {
            this.f69644e = null;
        }

        void d(l3.c<? super R> cVar, Iterator<? extends R> it2) {
            while (!this.f69645f) {
                try {
                    cVar.onNext((R) it2.next());
                    if (this.f69645f) {
                        return;
                    }
                    try {
                        if (!it2.hasNext()) {
                            cVar.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        cVar.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cVar.onError(th2);
                    return;
                }
            }
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f69644e == null;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69643d = DisposableHelper.DISPOSED;
            this.f69640a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69643d, bVar)) {
                this.f69643d = bVar;
                this.f69640a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            try {
                Iterator<? extends R> it2 = this.f69641b.apply(t3).iterator();
                if (!it2.hasNext()) {
                    this.f69640a.onComplete();
                    return;
                }
                this.f69644e = it2;
                b();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69640a.onError(th);
            }
        }

        @Override // x2.o
        @Nullable
        public R poll() throws Exception {
            Iterator<? extends R> it2 = this.f69644e;
            if (it2 != null) {
                R r3 = (R) io.reactivex.internal.functions.a.g(it2.next(), "The iterator returned a null value");
                if (!it2.hasNext()) {
                    this.f69644e = null;
                }
                return r3;
            }
            return null;
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f69642c, j4);
                b();
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                this.f69646g = true;
                return 2;
            }
            return 0;
        }
    }

    public SingleFlatMapIterableFlowable(o0<T> o0Var, w2.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f69638b = o0Var;
        this.f69639c = oVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        this.f69638b.a(new FlatMapIterableObserver(cVar, this.f69639c));
    }
}
