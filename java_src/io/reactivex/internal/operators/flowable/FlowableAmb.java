package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
/* loaded from: classes5.dex */
public final class FlowableAmb<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Publisher<? extends T>[] f66140b;

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends l3.b<? extends T>> f66141c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class AmbInnerSubscriber<T> extends AtomicReference<l3.d> implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -1185974347409665484L;

        /* renamed from: a  reason: collision with root package name */
        final a<T> f66142a;

        /* renamed from: b  reason: collision with root package name */
        final int f66143b;

        /* renamed from: c  reason: collision with root package name */
        final l3.c<? super T> f66144c;

        /* renamed from: d  reason: collision with root package name */
        boolean f66145d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f66146e = new AtomicLong();

        AmbInnerSubscriber(a<T> aVar, int i2, l3.c<? super T> cVar) {
            this.f66142a = aVar;
            this.f66143b = i2;
            this.f66144c = cVar;
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66145d) {
                this.f66144c.onComplete();
            } else if (this.f66142a.b(this.f66143b)) {
                this.f66145d = true;
                this.f66144c.onComplete();
            } else {
                get().cancel();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66145d) {
                this.f66144c.onError(th);
            } else if (this.f66142a.b(this.f66143b)) {
                this.f66145d = true;
                this.f66144c.onError(th);
            } else {
                get().cancel();
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66145d) {
                this.f66144c.onNext(t3);
            } else if (this.f66142a.b(this.f66143b)) {
                this.f66145d = true;
                this.f66144c.onNext(t3);
            } else {
                get().cancel();
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.deferredSetOnce(this, this.f66146e, dVar);
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this, this.f66146e, j4);
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66147a;

        /* renamed from: b  reason: collision with root package name */
        final AmbInnerSubscriber<T>[] f66148b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f66149c = new AtomicInteger();

        a(l3.c<? super T> cVar, int i2) {
            this.f66147a = cVar;
            this.f66148b = new AmbInnerSubscriber[i2];
        }

        public void a(Publisher<? extends T>[] publisherArr) {
            AmbInnerSubscriber<T>[] ambInnerSubscriberArr = this.f66148b;
            int length = ambInnerSubscriberArr.length;
            int i2 = 0;
            while (i2 < length) {
                int i4 = i2 + 1;
                ambInnerSubscriberArr[i2] = new AmbInnerSubscriber<>(this, i4, this.f66147a);
                i2 = i4;
            }
            this.f66149c.lazySet(0);
            this.f66147a.onSubscribe(this);
            for (int i5 = 0; i5 < length && this.f66149c.get() == 0; i5++) {
                publisherArr[i5].c(ambInnerSubscriberArr[i5]);
            }
        }

        public boolean b(int i2) {
            int i4 = 0;
            if (this.f66149c.get() == 0 && this.f66149c.compareAndSet(0, i2)) {
                AmbInnerSubscriber<T>[] ambInnerSubscriberArr = this.f66148b;
                int length = ambInnerSubscriberArr.length;
                while (i4 < length) {
                    int i5 = i4 + 1;
                    if (i5 != i2) {
                        ambInnerSubscriberArr[i4].cancel();
                    }
                    i4 = i5;
                }
                return true;
            }
            return false;
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66149c.get() != -1) {
                this.f66149c.lazySet(-1);
                for (AmbInnerSubscriber<T> ambInnerSubscriber : this.f66148b) {
                    ambInnerSubscriber.cancel();
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                int i2 = this.f66149c.get();
                if (i2 > 0) {
                    this.f66148b[i2 - 1].request(j4);
                } else if (i2 == 0) {
                    for (AmbInnerSubscriber<T> ambInnerSubscriber : this.f66148b) {
                        ambInnerSubscriber.request(j4);
                    }
                }
            }
        }
    }

    public FlowableAmb(Publisher<? extends T>[] publisherArr, Iterable<? extends l3.b<? extends T>> iterable) {
        this.f66140b = publisherArr;
        this.f66141c = iterable;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        int length;
        l3.b[] bVarArr = this.f66140b;
        if (bVarArr == null) {
            bVarArr = new l3.b[8];
            try {
                length = 0;
                for (l3.b<? extends T> bVar : this.f66141c) {
                    if (bVar == null) {
                        EmptySubscription.error(new NullPointerException("One of the sources is null"), cVar);
                        return;
                    }
                    if (length == bVarArr.length) {
                        l3.b[] bVarArr2 = new l3.b[(length >> 2) + length];
                        System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                        bVarArr = bVarArr2;
                    }
                    int i2 = length + 1;
                    bVarArr[length] = bVar;
                    length = i2;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptySubscription.error(th, cVar);
                return;
            }
        } else {
            length = bVarArr.length;
        }
        if (length == 0) {
            EmptySubscription.complete(cVar);
        } else if (length == 1) {
            bVarArr[0].c(cVar);
        } else {
            new a(cVar, length).a(bVarArr);
        }
    }
}
