package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import w2.r;
/* compiled from: ParallelFilter.java */
/* loaded from: classes5.dex */
public final class c<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f69525a;

    /* renamed from: b  reason: collision with root package name */
    final r<? super T> f69526b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelFilter.java */
    /* loaded from: classes5.dex */
    public static abstract class a<T> implements x2.a<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final r<? super T> f69527a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f69528b;

        /* renamed from: c  reason: collision with root package name */
        boolean f69529c;

        a(r<? super T> rVar) {
            this.f69527a = rVar;
        }

        @Override // l3.d
        public final void cancel() {
            this.f69528b.cancel();
        }

        @Override // l3.c
        public final void onNext(T t3) {
            if (v0(t3) || this.f69529c) {
                return;
            }
            this.f69528b.request(1L);
        }

        @Override // l3.d
        public final void request(long j4) {
            this.f69528b.request(j4);
        }
    }

    /* compiled from: ParallelFilter.java */
    /* loaded from: classes5.dex */
    static final class b<T> extends a<T> {

        /* renamed from: d  reason: collision with root package name */
        final x2.a<? super T> f69530d;

        b(x2.a<? super T> aVar, r<? super T> rVar) {
            super(rVar);
            this.f69530d = aVar;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69529c) {
                return;
            }
            this.f69529c = true;
            this.f69530d.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69529c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69529c = true;
            this.f69530d.onError(th);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69528b, dVar)) {
                this.f69528b = dVar;
                this.f69530d.onSubscribe(this);
            }
        }

        @Override // x2.a
        public boolean v0(T t3) {
            if (!this.f69529c) {
                try {
                    if (this.f69527a.test(t3)) {
                        return this.f69530d.v0(t3);
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }
    }

    /* compiled from: ParallelFilter.java */
    /* renamed from: io.reactivex.internal.operators.parallel.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0463c<T> extends a<T> {

        /* renamed from: d  reason: collision with root package name */
        final l3.c<? super T> f69531d;

        C0463c(l3.c<? super T> cVar, r<? super T> rVar) {
            super(rVar);
            this.f69531d = cVar;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69529c) {
                return;
            }
            this.f69529c = true;
            this.f69531d.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69529c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69529c = true;
            this.f69531d.onError(th);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69528b, dVar)) {
                this.f69528b = dVar;
                this.f69531d.onSubscribe(this);
            }
        }

        @Override // x2.a
        public boolean v0(T t3) {
            if (!this.f69529c) {
                try {
                    if (this.f69527a.test(t3)) {
                        this.f69531d.onNext(t3);
                        return true;
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }
    }

    public c(io.reactivex.parallel.a<T> aVar, r<? super T> rVar) {
        this.f69525a = aVar;
        this.f69526b = rVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69525a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super T>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new l3.c[length];
            for (int i2 = 0; i2 < length; i2++) {
                Subscriber<? super T> subscriber = subscriberArr[i2];
                if (subscriber instanceof x2.a) {
                    subscriberArr2[i2] = new b((x2.a) subscriber, this.f69526b);
                } else {
                    subscriberArr2[i2] = new C0463c(subscriber, this.f69526b);
                }
            }
            this.f69525a.Q(subscriberArr2);
        }
    }
}
