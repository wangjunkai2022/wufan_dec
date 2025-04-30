package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class FlowableUsing<T, D> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends D> f67164b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super D, ? extends l3.b<? extends T>> f67165c;

    /* renamed from: d  reason: collision with root package name */
    final w2.g<? super D> f67166d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f67167e;

    /* loaded from: classes5.dex */
    static final class UsingSubscriber<T, D> extends AtomicBoolean implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = 5904473792286235046L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67168a;

        /* renamed from: b  reason: collision with root package name */
        final D f67169b;

        /* renamed from: c  reason: collision with root package name */
        final w2.g<? super D> f67170c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f67171d;

        /* renamed from: e  reason: collision with root package name */
        l3.d f67172e;

        UsingSubscriber(l3.c<? super T> cVar, D d4, w2.g<? super D> gVar, boolean z3) {
            this.f67168a = cVar;
            this.f67169b = d4;
            this.f67170c = gVar;
            this.f67171d = z3;
        }

        void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.f67170c.accept((D) this.f67169b);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // l3.d
        public void cancel() {
            a();
            this.f67172e.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67171d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f67170c.accept((D) this.f67169b);
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f67168a.onError(th);
                        return;
                    }
                }
                this.f67172e.cancel();
                this.f67168a.onComplete();
                return;
            }
            this.f67168a.onComplete();
            this.f67172e.cancel();
            a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67171d) {
                Throwable th2 = null;
                if (compareAndSet(false, true)) {
                    try {
                        this.f67170c.accept((D) this.f67169b);
                    } catch (Throwable th3) {
                        th2 = th3;
                        io.reactivex.exceptions.a.b(th2);
                    }
                }
                this.f67172e.cancel();
                if (th2 != null) {
                    this.f67168a.onError(new CompositeException(th, th2));
                    return;
                } else {
                    this.f67168a.onError(th);
                    return;
                }
            }
            this.f67168a.onError(th);
            this.f67172e.cancel();
            a();
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67168a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67172e, dVar)) {
                this.f67172e = dVar;
                this.f67168a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67172e.request(j4);
        }
    }

    public FlowableUsing(Callable<? extends D> callable, w2.o<? super D, ? extends l3.b<? extends T>> oVar, w2.g<? super D> gVar, boolean z3) {
        this.f67164b = callable;
        this.f67165c = oVar;
        this.f67166d = gVar;
        this.f67167e = z3;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        try {
            D call = this.f67164b.call();
            try {
                ((l3.b) io.reactivex.internal.functions.a.g(this.f67165c.apply(call), "The sourceSupplier returned a null Publisher")).c(new UsingSubscriber(cVar, call, this.f67166d, this.f67167e));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                try {
                    this.f67166d.accept(call);
                    EmptySubscription.error(th, cVar);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    EmptySubscription.error(new CompositeException(th, th2), cVar);
                }
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            EmptySubscription.error(th3, cVar);
        }
    }
}
