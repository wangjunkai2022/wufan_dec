package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
/* compiled from: FlowableZipIterable.java */
/* loaded from: classes5.dex */
public final class l1<T, U, V> extends io.reactivex.internal.operators.flowable.a<T, V> {

    /* renamed from: c  reason: collision with root package name */
    final Iterable<U> f67449c;

    /* renamed from: d  reason: collision with root package name */
    final w2.c<? super T, ? super U, ? extends V> f67450d;

    /* compiled from: FlowableZipIterable.java */
    /* loaded from: classes5.dex */
    static final class a<T, U, V> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super V> f67451a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<U> f67452b;

        /* renamed from: c  reason: collision with root package name */
        final w2.c<? super T, ? super U, ? extends V> f67453c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f67454d;

        /* renamed from: e  reason: collision with root package name */
        boolean f67455e;

        a(l3.c<? super V> cVar, Iterator<U> it2, w2.c<? super T, ? super U, ? extends V> cVar2) {
            this.f67451a = cVar;
            this.f67452b = it2;
            this.f67453c = cVar2;
        }

        void a(Throwable th) {
            io.reactivex.exceptions.a.b(th);
            this.f67455e = true;
            this.f67454d.cancel();
            this.f67451a.onError(th);
        }

        @Override // l3.d
        public void cancel() {
            this.f67454d.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67455e) {
                return;
            }
            this.f67455e = true;
            this.f67451a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67455e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67455e = true;
            this.f67451a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67455e) {
                return;
            }
            try {
                try {
                    this.f67451a.onNext(io.reactivex.internal.functions.a.g(this.f67453c.apply(t3, io.reactivex.internal.functions.a.g(this.f67452b.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                    try {
                        if (this.f67452b.hasNext()) {
                            return;
                        }
                        this.f67455e = true;
                        this.f67454d.cancel();
                        this.f67451a.onComplete();
                    } catch (Throwable th) {
                        a(th);
                    }
                } catch (Throwable th2) {
                    a(th2);
                }
            } catch (Throwable th3) {
                a(th3);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67454d, dVar)) {
                this.f67454d = dVar;
                this.f67451a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67454d.request(j4);
        }
    }

    public l1(io.reactivex.j<T> jVar, Iterable<U> iterable, w2.c<? super T, ? super U, ? extends V> cVar) {
        super(jVar);
        this.f67449c = iterable;
        this.f67450d = cVar;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super V> cVar) {
        try {
            Iterator it2 = (Iterator) io.reactivex.internal.functions.a.g(this.f67449c.iterator(), "The iterator returned by other is null");
            try {
                if (!it2.hasNext()) {
                    EmptySubscription.complete(cVar);
                } else {
                    this.f67288b.g6(new a(cVar, it2, this.f67450d));
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptySubscription.error(th, cVar);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptySubscription.error(th2, cVar);
        }
    }
}
