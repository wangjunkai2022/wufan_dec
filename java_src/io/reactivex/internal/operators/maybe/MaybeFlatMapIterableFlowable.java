package io.reactivex.internal.operators.maybe;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class MaybeFlatMapIterableFlowable<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<T> f67682b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends Iterable<? extends R>> f67683c;

    /* loaded from: classes5.dex */
    static final class FlatMapIterableObserver<T, R> extends BasicIntQueueSubscription<R> implements io.reactivex.t<T> {
        private static final long serialVersionUID = -8938804753851907758L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f67684a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends Iterable<? extends R>> f67685b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f67686c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.b f67687d;

        /* renamed from: e  reason: collision with root package name */
        volatile Iterator<? extends R> f67688e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f67689f;

        /* renamed from: g  reason: collision with root package name */
        boolean f67690g;

        FlatMapIterableObserver(l3.c<? super R> cVar, w2.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f67684a = cVar;
            this.f67685b = oVar;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super R> cVar = this.f67684a;
            Iterator<? extends R> it2 = this.f67688e;
            if (this.f67690g && it2 != null) {
                cVar.onNext(null);
                cVar.onComplete();
                return;
            }
            int i2 = 1;
            while (true) {
                if (it2 != null) {
                    long j4 = this.f67686c.get();
                    if (j4 == Long.MAX_VALUE) {
                        d(cVar, it2);
                        return;
                    }
                    long j5 = 0;
                    while (j5 != j4) {
                        if (this.f67689f) {
                            return;
                        }
                        try {
                            cVar.onNext((Object) io.reactivex.internal.functions.a.g(it2.next(), "The iterator returned a null value"));
                            if (this.f67689f) {
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
                        io.reactivex.internal.util.b.e(this.f67686c, j5);
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
                if (it2 == null) {
                    it2 = this.f67688e;
                }
            }
        }

        @Override // l3.d
        public void cancel() {
            this.f67689f = true;
            this.f67687d.dispose();
            this.f67687d = DisposableHelper.DISPOSED;
        }

        @Override // x2.o
        public void clear() {
            this.f67688e = null;
        }

        void d(l3.c<? super R> cVar, Iterator<? extends R> it2) {
            while (!this.f67689f) {
                try {
                    cVar.onNext((R) it2.next());
                    if (this.f67689f) {
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
            return this.f67688e == null;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67684a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67687d = DisposableHelper.DISPOSED;
            this.f67684a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67687d, bVar)) {
                this.f67687d = bVar;
                this.f67684a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                Iterator<? extends R> it2 = this.f67685b.apply(t3).iterator();
                if (!it2.hasNext()) {
                    this.f67684a.onComplete();
                    return;
                }
                this.f67688e = it2;
                b();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67684a.onError(th);
            }
        }

        @Override // x2.o
        @Nullable
        public R poll() throws Exception {
            Iterator<? extends R> it2 = this.f67688e;
            if (it2 != null) {
                R r3 = (R) io.reactivex.internal.functions.a.g(it2.next(), "The iterator returned a null value");
                if (!it2.hasNext()) {
                    this.f67688e = null;
                }
                return r3;
            }
            return null;
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67686c, j4);
                b();
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                this.f67690g = true;
                return 2;
            }
            return 0;
        }
    }

    public MaybeFlatMapIterableFlowable(io.reactivex.w<T> wVar, w2.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f67682b = wVar;
        this.f67683c = oVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        this.f67682b.a(new FlatMapIterableObserver(cVar, this.f67683c));
    }
}
