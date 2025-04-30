package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowablePublish<T> extends io.reactivex.flowables.a<T> implements x2.h<T> {

    /* renamed from: f  reason: collision with root package name */
    static final long f66756f = Long.MIN_VALUE;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.j<T> f66757b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<PublishSubscriber<T>> f66758c;

    /* renamed from: d  reason: collision with root package name */
    final int f66759d;

    /* renamed from: e  reason: collision with root package name */
    final l3.b<T> f66760e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class InnerSubscriber<T> extends AtomicLong implements l3.d {
        private static final long serialVersionUID = -4453897557930727610L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66761a;

        /* renamed from: b  reason: collision with root package name */
        volatile PublishSubscriber<T> f66762b;

        /* renamed from: c  reason: collision with root package name */
        long f66763c;

        InnerSubscriber(l3.c<? super T> cVar) {
            this.f66761a = cVar;
        }

        @Override // l3.d
        public void cancel() {
            PublishSubscriber<T> publishSubscriber;
            if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE || (publishSubscriber = this.f66762b) == null) {
                return;
            }
            publishSubscriber.d(this);
            publishSubscriber.c();
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.b(this, j4);
                PublishSubscriber<T> publishSubscriber = this.f66762b;
                if (publishSubscriber != null) {
                    publishSubscriber.c();
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class PublishSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: i  reason: collision with root package name */
        static final InnerSubscriber[] f66764i = new InnerSubscriber[0];

        /* renamed from: j  reason: collision with root package name */
        static final InnerSubscriber[] f66765j = new InnerSubscriber[0];
        private static final long serialVersionUID = -202316842419149694L;

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<PublishSubscriber<T>> f66766a;

        /* renamed from: b  reason: collision with root package name */
        final int f66767b;

        /* renamed from: f  reason: collision with root package name */
        volatile Object f66771f;

        /* renamed from: g  reason: collision with root package name */
        int f66772g;

        /* renamed from: h  reason: collision with root package name */
        volatile x2.o<T> f66773h;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<l3.d> f66770e = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<InnerSubscriber<T>[]> f66768c = new AtomicReference<>(f66764i);

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f66769d = new AtomicBoolean();

        PublishSubscriber(AtomicReference<PublishSubscriber<T>> atomicReference, int i2) {
            this.f66766a = atomicReference;
            this.f66767b = i2;
        }

        boolean a(InnerSubscriber<T> innerSubscriber) {
            InnerSubscriber<T>[] innerSubscriberArr;
            InnerSubscriber<T>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.f66768c.get();
                if (innerSubscriberArr == f66765j) {
                    return false;
                }
                int length = innerSubscriberArr.length;
                innerSubscriberArr2 = new InnerSubscriber[length + 1];
                System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, length);
                innerSubscriberArr2[length] = innerSubscriber;
            } while (!this.f66768c.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
            return true;
        }

        boolean b(Object obj, boolean z3) {
            int i2 = 0;
            if (obj != null) {
                if (!NotificationLite.isComplete(obj)) {
                    Throwable error = NotificationLite.getError(obj);
                    this.f66766a.compareAndSet(this, null);
                    InnerSubscriber<T>[] andSet = this.f66768c.getAndSet(f66765j);
                    if (andSet.length != 0) {
                        int length = andSet.length;
                        while (i2 < length) {
                            andSet[i2].f66761a.onError(error);
                            i2++;
                        }
                    } else {
                        io.reactivex.plugins.a.Y(error);
                    }
                    return true;
                } else if (z3) {
                    this.f66766a.compareAndSet(this, null);
                    InnerSubscriber<T>[] andSet2 = this.f66768c.getAndSet(f66765j);
                    int length2 = andSet2.length;
                    while (i2 < length2) {
                        andSet2[i2].f66761a.onComplete();
                        i2++;
                    }
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:106:0x0014, code lost:
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x011e, code lost:
            r4 = r0;
            r3 = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x0122, code lost:
            if (r11 <= 0) goto L79;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x0124, code lost:
            r3 = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0127, code lost:
            if (r25.f66772g == 1) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0129, code lost:
            r25.f66770e.get().request(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0135, code lost:
            r3 = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x013a, code lost:
            if (r14 == 0) goto L78;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x013c, code lost:
            if (r8 != false) goto L70;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void c() {
            /*
                Method dump skipped, instructions count: 337
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowablePublish.PublishSubscriber.c():void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        void d(InnerSubscriber<T> innerSubscriber) {
            InnerSubscriber<T>[] innerSubscriberArr;
            InnerSubscriber[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.f66768c.get();
                int length = innerSubscriberArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = -1;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    } else if (innerSubscriberArr[i4].equals(innerSubscriber)) {
                        i2 = i4;
                        break;
                    } else {
                        i4++;
                    }
                }
                if (i2 < 0) {
                    return;
                }
                if (length == 1) {
                    innerSubscriberArr2 = f66764i;
                } else {
                    InnerSubscriber[] innerSubscriberArr3 = new InnerSubscriber[length - 1];
                    System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr3, 0, i2);
                    System.arraycopy(innerSubscriberArr, i2 + 1, innerSubscriberArr3, i2, (length - i2) - 1);
                    innerSubscriberArr2 = innerSubscriberArr3;
                }
            } while (!this.f66768c.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            InnerSubscriber<T>[] innerSubscriberArr = this.f66768c.get();
            InnerSubscriber<T>[] innerSubscriberArr2 = f66765j;
            if (innerSubscriberArr == innerSubscriberArr2 || this.f66768c.getAndSet(innerSubscriberArr2) == innerSubscriberArr2) {
                return;
            }
            this.f66766a.compareAndSet(this, null);
            SubscriptionHelper.cancel(this.f66770e);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66768c.get() == f66765j;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66771f == null) {
                this.f66771f = NotificationLite.complete();
                c();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66771f == null) {
                this.f66771f = NotificationLite.error(th);
                c();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66772g == 0 && !this.f66773h.offer(t3)) {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            } else {
                c();
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this.f66770e, dVar)) {
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f66772g = requestFusion;
                        this.f66773h = lVar;
                        this.f66771f = NotificationLite.complete();
                        c();
                        return;
                    } else if (requestFusion == 2) {
                        this.f66772g = requestFusion;
                        this.f66773h = lVar;
                        dVar.request(this.f66767b);
                        return;
                    }
                }
                this.f66773h = new SpscArrayQueue(this.f66767b);
                dVar.request(this.f66767b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T> implements l3.b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<PublishSubscriber<T>> f66774a;

        /* renamed from: b  reason: collision with root package name */
        private final int f66775b;

        a(AtomicReference<PublishSubscriber<T>> atomicReference, int i2) {
            this.f66774a = atomicReference;
            this.f66775b = i2;
        }

        @Override // l3.b
        public void c(l3.c<? super T> cVar) {
            PublishSubscriber<T> publishSubscriber;
            InnerSubscriber<T> innerSubscriber = new InnerSubscriber<>(cVar);
            cVar.onSubscribe(innerSubscriber);
            while (true) {
                publishSubscriber = this.f66774a.get();
                if (publishSubscriber == null || publishSubscriber.isDisposed()) {
                    PublishSubscriber<T> publishSubscriber2 = new PublishSubscriber<>(this.f66774a, this.f66775b);
                    if (this.f66774a.compareAndSet(publishSubscriber, publishSubscriber2)) {
                        publishSubscriber = publishSubscriber2;
                    } else {
                        continue;
                    }
                }
                if (publishSubscriber.a(innerSubscriber)) {
                    break;
                }
            }
            if (innerSubscriber.get() == Long.MIN_VALUE) {
                publishSubscriber.d(innerSubscriber);
            } else {
                innerSubscriber.f66762b = publishSubscriber;
            }
            publishSubscriber.c();
        }
    }

    private FlowablePublish(l3.b<T> bVar, io.reactivex.j<T> jVar, AtomicReference<PublishSubscriber<T>> atomicReference, int i2) {
        this.f66760e = bVar;
        this.f66757b = jVar;
        this.f66758c = atomicReference;
        this.f66759d = i2;
    }

    public static <T> io.reactivex.flowables.a<T> U8(io.reactivex.j<T> jVar, int i2) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.plugins.a.T(new FlowablePublish(new a(atomicReference, i2), jVar, atomicReference, i2));
    }

    @Override // io.reactivex.flowables.a
    public void N8(w2.g<? super io.reactivex.disposables.b> gVar) {
        PublishSubscriber<T> publishSubscriber;
        while (true) {
            publishSubscriber = this.f66758c.get();
            if (publishSubscriber != null && !publishSubscriber.isDisposed()) {
                break;
            }
            PublishSubscriber<T> publishSubscriber2 = new PublishSubscriber<>(this.f66758c, this.f66759d);
            if (this.f66758c.compareAndSet(publishSubscriber, publishSubscriber2)) {
                publishSubscriber = publishSubscriber2;
                break;
            }
        }
        boolean z3 = true;
        z3 = (publishSubscriber.f66769d.get() || !publishSubscriber.f66769d.compareAndSet(false, true)) ? false : false;
        try {
            gVar.accept(publishSubscriber);
            if (z3) {
                this.f66757b.g6(publishSubscriber);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.e(th);
        }
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f66760e.c(cVar);
    }

    @Override // x2.h
    public l3.b<T> source() {
        return this.f66757b;
    }
}
