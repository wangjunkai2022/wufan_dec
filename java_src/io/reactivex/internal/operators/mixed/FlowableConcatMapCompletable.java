package io.reactivex.internal.operators.mixed;

import io.reactivex.d;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.j;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import w2.o;
import x2.n;
/* loaded from: classes5.dex */
public final class FlowableConcatMapCompletable<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f67918a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends g> f67919b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f67920c;

    /* renamed from: d  reason: collision with root package name */
    final int f67921d;

    /* loaded from: classes5.dex */
    static final class ConcatMapCompletableObserver<T> extends AtomicInteger implements io.reactivex.o<T>, b {
        private static final long serialVersionUID = 3610901111000061034L;

        /* renamed from: a  reason: collision with root package name */
        final d f67922a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends g> f67923b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorMode f67924c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f67925d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final ConcatMapInnerObserver f67926e = new ConcatMapInnerObserver(this);

        /* renamed from: f  reason: collision with root package name */
        final int f67927f;

        /* renamed from: g  reason: collision with root package name */
        final n<T> f67928g;

        /* renamed from: h  reason: collision with root package name */
        l3.d f67929h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f67930i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f67931j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f67932k;

        /* renamed from: l  reason: collision with root package name */
        int f67933l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static final class ConcatMapInnerObserver extends AtomicReference<b> implements d {
            private static final long serialVersionUID = 5638352172918776687L;

            /* renamed from: a  reason: collision with root package name */
            final ConcatMapCompletableObserver<?> f67934a;

            ConcatMapInnerObserver(ConcatMapCompletableObserver<?> concatMapCompletableObserver) {
                this.f67934a = concatMapCompletableObserver;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f67934a.b();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f67934a.c(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(b bVar) {
                DisposableHelper.replace(this, bVar);
            }
        }

        ConcatMapCompletableObserver(d dVar, o<? super T, ? extends g> oVar, ErrorMode errorMode, int i2) {
            this.f67922a = dVar;
            this.f67923b = oVar;
            this.f67924c = errorMode;
            this.f67927f = i2;
            this.f67928g = new SpscArrayQueue(i2);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f67932k) {
                if (!this.f67930i) {
                    if (this.f67924c == ErrorMode.BOUNDARY && this.f67925d.get() != null) {
                        this.f67928g.clear();
                        this.f67922a.onError(this.f67925d.c());
                        return;
                    }
                    boolean z3 = this.f67931j;
                    T poll = this.f67928g.poll();
                    boolean z4 = poll == null;
                    if (z3 && z4) {
                        Throwable c4 = this.f67925d.c();
                        if (c4 != null) {
                            this.f67922a.onError(c4);
                            return;
                        } else {
                            this.f67922a.onComplete();
                            return;
                        }
                    } else if (!z4) {
                        int i2 = this.f67927f;
                        int i4 = i2 - (i2 >> 1);
                        int i5 = this.f67933l + 1;
                        if (i5 == i4) {
                            this.f67933l = 0;
                            this.f67929h.request(i4);
                        } else {
                            this.f67933l = i5;
                        }
                        try {
                            g gVar = (g) io.reactivex.internal.functions.a.g(this.f67923b.apply(poll), "The mapper returned a null CompletableSource");
                            this.f67930i = true;
                            gVar.a(this.f67926e);
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.f67928g.clear();
                            this.f67929h.cancel();
                            this.f67925d.a(th);
                            this.f67922a.onError(this.f67925d.c());
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f67928g.clear();
        }

        void b() {
            this.f67930i = false;
            a();
        }

        void c(Throwable th) {
            if (this.f67925d.a(th)) {
                if (this.f67924c == ErrorMode.IMMEDIATE) {
                    this.f67929h.cancel();
                    Throwable c4 = this.f67925d.c();
                    if (c4 != ExceptionHelper.f70084a) {
                        this.f67922a.onError(c4);
                    }
                    if (getAndIncrement() == 0) {
                        this.f67928g.clear();
                        return;
                    }
                    return;
                }
                this.f67930i = false;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67932k = true;
            this.f67929h.cancel();
            this.f67926e.a();
            if (getAndIncrement() == 0) {
                this.f67928g.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67932k;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67931j = true;
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67925d.a(th)) {
                if (this.f67924c == ErrorMode.IMMEDIATE) {
                    this.f67926e.a();
                    Throwable c4 = this.f67925d.c();
                    if (c4 != ExceptionHelper.f70084a) {
                        this.f67922a.onError(c4);
                    }
                    if (getAndIncrement() == 0) {
                        this.f67928g.clear();
                        return;
                    }
                    return;
                }
                this.f67931j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67928g.offer(t3)) {
                a();
                return;
            }
            this.f67929h.cancel();
            onError(new MissingBackpressureException("Queue full?!"));
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67929h, dVar)) {
                this.f67929h = dVar;
                this.f67922a.onSubscribe(this);
                dVar.request(this.f67927f);
            }
        }
    }

    public FlowableConcatMapCompletable(j<T> jVar, o<? super T, ? extends g> oVar, ErrorMode errorMode, int i2) {
        this.f67918a = jVar;
        this.f67919b = oVar;
        this.f67920c = errorMode;
        this.f67921d = i2;
    }

    @Override // io.reactivex.a
    protected void F0(d dVar) {
        this.f67918a.g6(new ConcatMapCompletableObserver(dVar, this.f67919b, this.f67920c, this.f67921d));
    }
}
