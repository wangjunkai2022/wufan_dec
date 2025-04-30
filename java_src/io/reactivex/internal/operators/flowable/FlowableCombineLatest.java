package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.operators.flowable.q0;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
/* loaded from: classes5.dex */
public final class FlowableCombineLatest<T, R> extends io.reactivex.j<R> {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    final Publisher<? extends T>[] f66226b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends l3.b<? extends T>> f66227c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super Object[], ? extends R> f66228d;

    /* renamed from: e  reason: collision with root package name */
    final int f66229e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f66230f;

    /* loaded from: classes5.dex */
    static final class CombineLatestCoordinator<T, R> extends BasicIntQueueSubscription<R> {
        private static final long serialVersionUID = -5082275438355852221L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f66231a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Object[], ? extends R> f66232b;

        /* renamed from: c  reason: collision with root package name */
        final CombineLatestInnerSubscriber<T>[] f66233c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f66234d;

        /* renamed from: e  reason: collision with root package name */
        final Object[] f66235e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f66236f;

        /* renamed from: g  reason: collision with root package name */
        boolean f66237g;

        /* renamed from: h  reason: collision with root package name */
        int f66238h;

        /* renamed from: i  reason: collision with root package name */
        int f66239i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f66240j;

        /* renamed from: k  reason: collision with root package name */
        final AtomicLong f66241k;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f66242l;

        /* renamed from: m  reason: collision with root package name */
        final AtomicReference<Throwable> f66243m;

        CombineLatestCoordinator(l3.c<? super R> cVar, w2.o<? super Object[], ? extends R> oVar, int i2, int i4, boolean z3) {
            this.f66231a = cVar;
            this.f66232b = oVar;
            CombineLatestInnerSubscriber<T>[] combineLatestInnerSubscriberArr = new CombineLatestInnerSubscriber[i2];
            for (int i5 = 0; i5 < i2; i5++) {
                combineLatestInnerSubscriberArr[i5] = new CombineLatestInnerSubscriber<>(this, i5, i4);
            }
            this.f66233c = combineLatestInnerSubscriberArr;
            this.f66235e = new Object[i2];
            this.f66234d = new io.reactivex.internal.queue.a<>(i4);
            this.f66241k = new AtomicLong();
            this.f66243m = new AtomicReference<>();
            this.f66236f = z3;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f66237g) {
                g();
            } else {
                f();
            }
        }

        @Override // l3.d
        public void cancel() {
            this.f66240j = true;
            d();
        }

        @Override // x2.o
        public void clear() {
            this.f66234d.clear();
        }

        void d() {
            for (CombineLatestInnerSubscriber<T> combineLatestInnerSubscriber : this.f66233c) {
                combineLatestInnerSubscriber.a();
            }
        }

        boolean e(boolean z3, boolean z4, l3.c<?> cVar, io.reactivex.internal.queue.a<?> aVar) {
            if (this.f66240j) {
                d();
                aVar.clear();
                return true;
            } else if (z3) {
                if (this.f66236f) {
                    if (z4) {
                        d();
                        Throwable c4 = ExceptionHelper.c(this.f66243m);
                        if (c4 != null && c4 != ExceptionHelper.f70084a) {
                            cVar.onError(c4);
                        } else {
                            cVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable c5 = ExceptionHelper.c(this.f66243m);
                if (c5 != null && c5 != ExceptionHelper.f70084a) {
                    d();
                    aVar.clear();
                    cVar.onError(c5);
                    return true;
                } else if (z4) {
                    d();
                    cVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void f() {
            l3.c<? super R> cVar = this.f66231a;
            io.reactivex.internal.queue.a<?> aVar = this.f66234d;
            int i2 = 1;
            do {
                long j4 = this.f66241k.get();
                long j5 = 0;
                while (j5 != j4) {
                    boolean z3 = this.f66242l;
                    Object poll = aVar.poll();
                    boolean z4 = poll == null;
                    if (e(z3, z4, cVar, aVar)) {
                        return;
                    }
                    if (z4) {
                        break;
                    }
                    try {
                        cVar.onNext((Object) io.reactivex.internal.functions.a.g(this.f66232b.apply((Object[]) aVar.poll()), "The combiner returned a null value"));
                        ((CombineLatestInnerSubscriber) poll).b();
                        j5++;
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        d();
                        ExceptionHelper.a(this.f66243m, th);
                        cVar.onError(ExceptionHelper.c(this.f66243m));
                        return;
                    }
                }
                if (j5 == j4 && e(this.f66242l, aVar.isEmpty(), cVar, aVar)) {
                    return;
                }
                if (j5 != 0 && j4 != Long.MAX_VALUE) {
                    this.f66241k.addAndGet(-j5);
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        void g() {
            l3.c<? super R> cVar = this.f66231a;
            io.reactivex.internal.queue.a<Object> aVar = this.f66234d;
            int i2 = 1;
            while (!this.f66240j) {
                Throwable th = this.f66243m.get();
                if (th != null) {
                    aVar.clear();
                    cVar.onError(th);
                    return;
                }
                boolean z3 = this.f66242l;
                boolean isEmpty = aVar.isEmpty();
                if (!isEmpty) {
                    cVar.onNext(null);
                }
                if (z3 && isEmpty) {
                    cVar.onComplete();
                    return;
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
            aVar.clear();
        }

        void h(int i2) {
            synchronized (this) {
                Object[] objArr = this.f66235e;
                if (objArr[i2] != null) {
                    int i4 = this.f66239i + 1;
                    if (i4 == objArr.length) {
                        this.f66242l = true;
                    } else {
                        this.f66239i = i4;
                        return;
                    }
                } else {
                    this.f66242l = true;
                }
                b();
            }
        }

        void i(int i2, Throwable th) {
            if (ExceptionHelper.a(this.f66243m, th)) {
                if (!this.f66236f) {
                    d();
                    this.f66242l = true;
                    b();
                    return;
                }
                h(i2);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f66234d.isEmpty();
        }

        void j(int i2, T t3) {
            boolean z3;
            synchronized (this) {
                Object[] objArr = this.f66235e;
                int i4 = this.f66238h;
                if (objArr[i2] == null) {
                    i4++;
                    this.f66238h = i4;
                }
                objArr[i2] = t3;
                if (objArr.length == i4) {
                    this.f66234d.offer(this.f66233c[i2], objArr.clone());
                    z3 = false;
                } else {
                    z3 = true;
                }
            }
            if (z3) {
                this.f66233c[i2].b();
            } else {
                b();
            }
        }

        void k(Publisher<? extends T>[] publisherArr, int i2) {
            CombineLatestInnerSubscriber<T>[] combineLatestInnerSubscriberArr = this.f66233c;
            for (int i4 = 0; i4 < i2 && !this.f66242l && !this.f66240j; i4++) {
                publisherArr[i4].c(combineLatestInnerSubscriberArr[i4]);
            }
        }

        @Override // x2.o
        @Nullable
        public R poll() throws Exception {
            Object poll = this.f66234d.poll();
            if (poll == null) {
                return null;
            }
            R r3 = (R) io.reactivex.internal.functions.a.g(this.f66232b.apply((Object[]) this.f66234d.poll()), "The combiner returned a null value");
            ((CombineLatestInnerSubscriber) poll).b();
            return r3;
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66241k, j4);
                b();
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 4) != 0) {
                return 0;
            }
            int i4 = i2 & 2;
            this.f66237g = i4 != 0;
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class CombineLatestInnerSubscriber<T> extends AtomicReference<l3.d> implements io.reactivex.o<T> {
        private static final long serialVersionUID = -8730235182291002949L;

        /* renamed from: a  reason: collision with root package name */
        final CombineLatestCoordinator<T, ?> f66244a;

        /* renamed from: b  reason: collision with root package name */
        final int f66245b;

        /* renamed from: c  reason: collision with root package name */
        final int f66246c;

        /* renamed from: d  reason: collision with root package name */
        final int f66247d;

        /* renamed from: e  reason: collision with root package name */
        int f66248e;

        CombineLatestInnerSubscriber(CombineLatestCoordinator<T, ?> combineLatestCoordinator, int i2, int i4) {
            this.f66244a = combineLatestCoordinator;
            this.f66245b = i2;
            this.f66246c = i4;
            this.f66247d = i4 - (i4 >> 2);
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        public void b() {
            int i2 = this.f66248e + 1;
            if (i2 == this.f66247d) {
                this.f66248e = 0;
                get().request(i2);
                return;
            }
            this.f66248e = i2;
        }

        @Override // l3.c
        public void onComplete() {
            this.f66244a.h(this.f66245b);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66244a.i(this.f66245b, th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66244a.j(this.f66245b, t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, this.f66246c);
        }
    }

    /* loaded from: classes5.dex */
    final class a implements w2.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // w2.o
        public R apply(T t3) throws Exception {
            return FlowableCombineLatest.this.f66228d.apply(new Object[]{t3});
        }
    }

    public FlowableCombineLatest(@NonNull Publisher<? extends T>[] publisherArr, @NonNull w2.o<? super Object[], ? extends R> oVar, int i2, boolean z3) {
        this.f66226b = publisherArr;
        this.f66227c = null;
        this.f66228d = oVar;
        this.f66229e = i2;
        this.f66230f = z3;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super R> cVar) {
        int length;
        l3.b[] bVarArr = this.f66226b;
        if (bVarArr == null) {
            bVarArr = new l3.b[8];
            try {
                Iterator it2 = (Iterator) io.reactivex.internal.functions.a.g(this.f66227c.iterator(), "The iterator returned is null");
                length = 0;
                while (it2.hasNext()) {
                    try {
                        try {
                            l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(it2.next(), "The publisher returned by the iterator is null");
                            if (length == bVarArr.length) {
                                l3.b[] bVarArr2 = new l3.b[(length >> 2) + length];
                                System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                                bVarArr = bVarArr2;
                            }
                            bVarArr[length] = bVar;
                            length++;
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            EmptySubscription.error(th, cVar);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        EmptySubscription.error(th2, cVar);
                        return;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                EmptySubscription.error(th3, cVar);
                return;
            }
        } else {
            length = bVarArr.length;
        }
        int i2 = length;
        if (i2 == 0) {
            EmptySubscription.complete(cVar);
        } else if (i2 == 1) {
            bVarArr[0].c(new q0.b(cVar, new a()));
        } else {
            CombineLatestCoordinator combineLatestCoordinator = new CombineLatestCoordinator(cVar, this.f66228d, i2, this.f66229e, this.f66230f);
            cVar.onSubscribe(combineLatestCoordinator);
            combineLatestCoordinator.k(bVarArr, i2);
        }
    }

    public FlowableCombineLatest(@NonNull Iterable<? extends l3.b<? extends T>> iterable, @NonNull w2.o<? super Object[], ? extends R> oVar, int i2, boolean z3) {
        this.f66226b = null;
        this.f66227c = iterable;
        this.f66228d = oVar;
        this.f66229e = i2;
        this.f66230f = z3;
    }
}
