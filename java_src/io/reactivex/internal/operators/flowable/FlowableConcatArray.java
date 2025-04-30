package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
/* loaded from: classes5.dex */
public final class FlowableConcatArray<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Publisher<? extends T>[] f66250b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f66251c;

    /* loaded from: classes5.dex */
    static final class ConcatArraySubscriber<T> extends SubscriptionArbiter implements io.reactivex.o<T> {
        private static final long serialVersionUID = -8158322871608889516L;

        /* renamed from: h  reason: collision with root package name */
        final l3.c<? super T> f66252h;

        /* renamed from: i  reason: collision with root package name */
        final Publisher<? extends T>[] f66253i;

        /* renamed from: j  reason: collision with root package name */
        final boolean f66254j;

        /* renamed from: k  reason: collision with root package name */
        final AtomicInteger f66255k = new AtomicInteger();

        /* renamed from: l  reason: collision with root package name */
        int f66256l;

        /* renamed from: m  reason: collision with root package name */
        List<Throwable> f66257m;

        /* renamed from: n  reason: collision with root package name */
        long f66258n;

        ConcatArraySubscriber(Publisher<? extends T>[] publisherArr, boolean z3, l3.c<? super T> cVar) {
            this.f66252h = cVar;
            this.f66253i = publisherArr;
            this.f66254j = z3;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66255k.getAndIncrement() == 0) {
                l3.b[] bVarArr = this.f66253i;
                int length = bVarArr.length;
                int i2 = this.f66256l;
                while (i2 != length) {
                    l3.b bVar = bVarArr[i2];
                    if (bVar == null) {
                        NullPointerException nullPointerException = new NullPointerException("A Publisher entry is null");
                        if (this.f66254j) {
                            List list = this.f66257m;
                            if (list == null) {
                                list = new ArrayList((length - i2) + 1);
                                this.f66257m = list;
                            }
                            list.add(nullPointerException);
                            i2++;
                        } else {
                            this.f66252h.onError(nullPointerException);
                            return;
                        }
                    } else {
                        long j4 = this.f66258n;
                        if (j4 != 0) {
                            this.f66258n = 0L;
                            g(j4);
                        }
                        bVar.c(this);
                        i2++;
                        this.f66256l = i2;
                        if (this.f66255k.decrementAndGet() == 0) {
                            return;
                        }
                    }
                }
                List<Throwable> list2 = this.f66257m;
                if (list2 != null) {
                    if (list2.size() == 1) {
                        this.f66252h.onError(list2.get(0));
                        return;
                    } else {
                        this.f66252h.onError(new CompositeException(list2));
                        return;
                    }
                }
                this.f66252h.onComplete();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66254j) {
                List list = this.f66257m;
                if (list == null) {
                    list = new ArrayList((this.f66253i.length - this.f66256l) + 1);
                    this.f66257m = list;
                }
                list.add(th);
                onComplete();
                return;
            }
            this.f66252h.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66258n++;
            this.f66252h.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            h(dVar);
        }
    }

    public FlowableConcatArray(Publisher<? extends T>[] publisherArr, boolean z3) {
        this.f66250b = publisherArr;
        this.f66251c = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        ConcatArraySubscriber concatArraySubscriber = new ConcatArraySubscriber(this.f66250b, this.f66251c, cVar);
        cVar.onSubscribe(concatArraySubscriber);
        concatArraySubscriber.onComplete();
    }
}
