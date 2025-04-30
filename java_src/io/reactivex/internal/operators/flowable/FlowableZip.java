package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
/* loaded from: classes5.dex */
public final class FlowableZip<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final Publisher<? extends T>[] f67268b;

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends l3.b<? extends T>> f67269c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super Object[], ? extends R> f67270d;

    /* renamed from: e  reason: collision with root package name */
    final int f67271e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f67272f;

    /* loaded from: classes5.dex */
    static final class ZipCoordinator<T, R> extends AtomicInteger implements l3.d {
        private static final long serialVersionUID = -2434867452883857743L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f67273a;

        /* renamed from: b  reason: collision with root package name */
        final ZipSubscriber<T, R>[] f67274b;

        /* renamed from: c  reason: collision with root package name */
        final w2.o<? super Object[], ? extends R> f67275c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f67276d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f67277e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f67278f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f67279g;

        /* renamed from: h  reason: collision with root package name */
        final Object[] f67280h;

        ZipCoordinator(l3.c<? super R> cVar, w2.o<? super Object[], ? extends R> oVar, int i2, int i4, boolean z3) {
            this.f67273a = cVar;
            this.f67275c = oVar;
            this.f67278f = z3;
            ZipSubscriber<T, R>[] zipSubscriberArr = new ZipSubscriber[i2];
            for (int i5 = 0; i5 < i2; i5++) {
                zipSubscriberArr[i5] = new ZipSubscriber<>(this, i4);
            }
            this.f67280h = new Object[i2];
            this.f67274b = zipSubscriberArr;
            this.f67276d = new AtomicLong();
            this.f67277e = new AtomicThrowable();
        }

        void a() {
            for (ZipSubscriber<T, R> zipSubscriber : this.f67274b) {
                zipSubscriber.cancel();
            }
        }

        void b() {
            boolean z3;
            T poll;
            boolean z4;
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super R> cVar = this.f67273a;
            ZipSubscriber<T, R>[] zipSubscriberArr = this.f67274b;
            int length = zipSubscriberArr.length;
            Object[] objArr = this.f67280h;
            int i2 = 1;
            do {
                long j4 = this.f67276d.get();
                long j5 = 0;
                while (j4 != j5) {
                    if (this.f67279g) {
                        return;
                    }
                    if (!this.f67278f && this.f67277e.get() != null) {
                        a();
                        cVar.onError(this.f67277e.c());
                        return;
                    }
                    boolean z5 = false;
                    for (int i4 = 0; i4 < length; i4++) {
                        ZipSubscriber<T, R> zipSubscriber = zipSubscriberArr[i4];
                        if (objArr[i4] == null) {
                            try {
                                z3 = zipSubscriber.f67286f;
                                x2.o<T> oVar = zipSubscriber.f67284d;
                                poll = oVar != null ? oVar.poll() : null;
                                z4 = poll == null;
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                this.f67277e.a(th);
                                if (!this.f67278f) {
                                    a();
                                    cVar.onError(this.f67277e.c());
                                    return;
                                }
                            }
                            if (z3 && z4) {
                                a();
                                if (this.f67277e.get() != null) {
                                    cVar.onError(this.f67277e.c());
                                    return;
                                } else {
                                    cVar.onComplete();
                                    return;
                                }
                            }
                            if (!z4) {
                                objArr[i4] = poll;
                            }
                            z5 = true;
                        }
                    }
                    if (z5) {
                        break;
                    }
                    try {
                        cVar.onNext((Object) io.reactivex.internal.functions.a.g(this.f67275c.apply(objArr.clone()), "The zipper returned a null value"));
                        j5++;
                        Arrays.fill(objArr, (Object) null);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        a();
                        this.f67277e.a(th2);
                        cVar.onError(this.f67277e.c());
                        return;
                    }
                }
                if (j4 == j5) {
                    if (this.f67279g) {
                        return;
                    }
                    if (!this.f67278f && this.f67277e.get() != null) {
                        a();
                        cVar.onError(this.f67277e.c());
                        return;
                    }
                    for (int i5 = 0; i5 < length; i5++) {
                        ZipSubscriber<T, R> zipSubscriber2 = zipSubscriberArr[i5];
                        if (objArr[i5] == null) {
                            try {
                                boolean z6 = zipSubscriber2.f67286f;
                                x2.o<T> oVar2 = zipSubscriber2.f67284d;
                                T poll2 = oVar2 != null ? oVar2.poll() : null;
                                boolean z7 = poll2 == null;
                                if (z6 && z7) {
                                    a();
                                    if (this.f67277e.get() != null) {
                                        cVar.onError(this.f67277e.c());
                                        return;
                                    } else {
                                        cVar.onComplete();
                                        return;
                                    }
                                } else if (!z7) {
                                    objArr[i5] = poll2;
                                }
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                this.f67277e.a(th3);
                                if (!this.f67278f) {
                                    a();
                                    cVar.onError(this.f67277e.c());
                                    return;
                                }
                            }
                        }
                    }
                }
                if (j5 != 0) {
                    for (ZipSubscriber<T, R> zipSubscriber3 : zipSubscriberArr) {
                        zipSubscriber3.request(j5);
                    }
                    if (j4 != Long.MAX_VALUE) {
                        this.f67276d.addAndGet(-j5);
                    }
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        void c(ZipSubscriber<T, R> zipSubscriber, Throwable th) {
            if (this.f67277e.a(th)) {
                zipSubscriber.f67286f = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.d
        public void cancel() {
            if (this.f67279g) {
                return;
            }
            this.f67279g = true;
            a();
        }

        void d(Publisher<? extends T>[] publisherArr, int i2) {
            ZipSubscriber<T, R>[] zipSubscriberArr = this.f67274b;
            for (int i4 = 0; i4 < i2 && !this.f67279g; i4++) {
                if (!this.f67278f && this.f67277e.get() != null) {
                    return;
                }
                publisherArr[i4].c(zipSubscriberArr[i4]);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67276d, j4);
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ZipSubscriber<T, R> extends AtomicReference<l3.d> implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -4627193790118206028L;

        /* renamed from: a  reason: collision with root package name */
        final ZipCoordinator<T, R> f67281a;

        /* renamed from: b  reason: collision with root package name */
        final int f67282b;

        /* renamed from: c  reason: collision with root package name */
        final int f67283c;

        /* renamed from: d  reason: collision with root package name */
        x2.o<T> f67284d;

        /* renamed from: e  reason: collision with root package name */
        long f67285e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f67286f;

        /* renamed from: g  reason: collision with root package name */
        int f67287g;

        ZipSubscriber(ZipCoordinator<T, R> zipCoordinator, int i2) {
            this.f67281a = zipCoordinator;
            this.f67282b = i2;
            this.f67283c = i2 - (i2 >> 2);
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // l3.c
        public void onComplete() {
            this.f67286f = true;
            this.f67281a.b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67281a.c(this, th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67287g != 2) {
                this.f67284d.offer(t3);
            }
            this.f67281a.b();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f67287g = requestFusion;
                        this.f67284d = lVar;
                        this.f67286f = true;
                        this.f67281a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f67287g = requestFusion;
                        this.f67284d = lVar;
                        dVar.request(this.f67282b);
                        return;
                    }
                }
                this.f67284d = new SpscArrayQueue(this.f67282b);
                dVar.request(this.f67282b);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (this.f67287g != 1) {
                long j5 = this.f67285e + j4;
                if (j5 >= this.f67283c) {
                    this.f67285e = 0L;
                    get().request(j5);
                    return;
                }
                this.f67285e = j5;
            }
        }
    }

    public FlowableZip(Publisher<? extends T>[] publisherArr, Iterable<? extends l3.b<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar, int i2, boolean z3) {
        this.f67268b = publisherArr;
        this.f67269c = iterable;
        this.f67270d = oVar;
        this.f67271e = i2;
        this.f67272f = z3;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super R> cVar) {
        int length;
        l3.b[] bVarArr = this.f67268b;
        if (bVarArr == null) {
            bVarArr = new l3.b[8];
            length = 0;
            for (l3.b<? extends T> bVar : this.f67269c) {
                if (length == bVarArr.length) {
                    l3.b[] bVarArr2 = new l3.b[(length >> 2) + length];
                    System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                    bVarArr = bVarArr2;
                }
                bVarArr[length] = bVar;
                length++;
            }
        } else {
            length = bVarArr.length;
        }
        int i2 = length;
        if (i2 == 0) {
            EmptySubscription.complete(cVar);
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(cVar, this.f67270d, i2, this.f67271e, this.f67272f);
        cVar.onSubscribe(zipCoordinator);
        zipCoordinator.d(bVarArr, i2);
    }
}
