package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import org.reactivestreams.Subscriber;
import w2.q;
/* compiled from: ParallelPeek.java */
/* loaded from: classes5.dex */
public final class i<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f69572a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super T> f69573b;

    /* renamed from: c  reason: collision with root package name */
    final w2.g<? super T> f69574c;

    /* renamed from: d  reason: collision with root package name */
    final w2.g<? super Throwable> f69575d;

    /* renamed from: e  reason: collision with root package name */
    final w2.a f69576e;

    /* renamed from: f  reason: collision with root package name */
    final w2.a f69577f;

    /* renamed from: g  reason: collision with root package name */
    final w2.g<? super l3.d> f69578g;

    /* renamed from: h  reason: collision with root package name */
    final q f69579h;

    /* renamed from: i  reason: collision with root package name */
    final w2.a f69580i;

    /* compiled from: ParallelPeek.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f69581a;

        /* renamed from: b  reason: collision with root package name */
        final i<T> f69582b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f69583c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69584d;

        a(l3.c<? super T> cVar, i<T> iVar) {
            this.f69581a = cVar;
            this.f69582b = iVar;
        }

        @Override // l3.d
        public void cancel() {
            try {
                this.f69582b.f69580i.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f69583c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69584d) {
                return;
            }
            this.f69584d = true;
            try {
                this.f69582b.f69576e.run();
                this.f69581a.onComplete();
                try {
                    this.f69582b.f69577f.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f69581a.onError(th2);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69584d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69584d = true;
            try {
                this.f69582b.f69575d.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f69581a.onError(th);
            try {
                this.f69582b.f69577f.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(th3);
            }
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f69584d) {
                return;
            }
            try {
                this.f69582b.f69573b.accept(t3);
                this.f69581a.onNext(t3);
                try {
                    this.f69582b.f69574c.accept(t3);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69583c, dVar)) {
                this.f69583c = dVar;
                try {
                    this.f69582b.f69578g.accept(dVar);
                    this.f69581a.onSubscribe(this);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    dVar.cancel();
                    this.f69581a.onSubscribe(EmptySubscription.INSTANCE);
                    onError(th);
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            try {
                this.f69582b.f69579h.a(j4);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f69583c.request(j4);
        }
    }

    public i(io.reactivex.parallel.a<T> aVar, w2.g<? super T> gVar, w2.g<? super T> gVar2, w2.g<? super Throwable> gVar3, w2.a aVar2, w2.a aVar3, w2.g<? super l3.d> gVar4, q qVar, w2.a aVar4) {
        this.f69572a = aVar;
        this.f69573b = (w2.g) io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        this.f69574c = (w2.g) io.reactivex.internal.functions.a.g(gVar2, "onAfterNext is null");
        this.f69575d = (w2.g) io.reactivex.internal.functions.a.g(gVar3, "onError is null");
        this.f69576e = (w2.a) io.reactivex.internal.functions.a.g(aVar2, "onComplete is null");
        this.f69577f = (w2.a) io.reactivex.internal.functions.a.g(aVar3, "onAfterTerminated is null");
        this.f69578g = (w2.g) io.reactivex.internal.functions.a.g(gVar4, "onSubscribe is null");
        this.f69579h = (q) io.reactivex.internal.functions.a.g(qVar, "onRequest is null");
        this.f69580i = (w2.a) io.reactivex.internal.functions.a.g(aVar4, "onCancel is null");
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69572a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super T>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new l3.c[length];
            for (int i2 = 0; i2 < length; i2++) {
                subscriberArr2[i2] = new a(subscriberArr[i2], this);
            }
            this.f69572a.Q(subscriberArr2);
        }
    }
}
