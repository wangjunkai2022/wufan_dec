package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import java.util.concurrent.Callable;
/* loaded from: classes5.dex */
public final class FlowableMapNotification<T, R> extends a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends R> f66633c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends R> f66634d;

    /* renamed from: e  reason: collision with root package name */
    final Callable<? extends R> f66635e;

    /* loaded from: classes5.dex */
    static final class MapNotificationSubscriber<T, R> extends SinglePostCompleteSubscriber<T, R> {
        private static final long serialVersionUID = 2757120512858778108L;

        /* renamed from: g  reason: collision with root package name */
        final w2.o<? super T, ? extends R> f66636g;

        /* renamed from: h  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends R> f66637h;

        /* renamed from: i  reason: collision with root package name */
        final Callable<? extends R> f66638i;

        MapNotificationSubscriber(l3.c<? super R> cVar, w2.o<? super T, ? extends R> oVar, w2.o<? super Throwable, ? extends R> oVar2, Callable<? extends R> callable) {
            super(cVar);
            this.f66636g = oVar;
            this.f66637h = oVar2;
            this.f66638i = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // l3.c
        public void onComplete() {
            try {
                a(io.reactivex.internal.functions.a.g(this.f66638i.call(), "The onComplete publisher returned is null"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69992a.onError(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // l3.c
        public void onError(Throwable th) {
            try {
                a(io.reactivex.internal.functions.a.g(this.f66637h.apply(th), "The onError publisher returned is null"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f69992a.onError(new CompositeException(th, th2));
            }
        }

        @Override // l3.c
        public void onNext(T t3) {
            try {
                Object g4 = io.reactivex.internal.functions.a.g(this.f66636g.apply(t3), "The onNext publisher returned is null");
                this.f69995d++;
                this.f69992a.onNext(g4);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69992a.onError(th);
            }
        }
    }

    public FlowableMapNotification(io.reactivex.j<T> jVar, w2.o<? super T, ? extends R> oVar, w2.o<? super Throwable, ? extends R> oVar2, Callable<? extends R> callable) {
        super(jVar);
        this.f66633c = oVar;
        this.f66634d = oVar2;
        this.f66635e = callable;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        this.f67288b.g6(new MapNotificationSubscriber(cVar, this.f66633c, this.f66634d, this.f66635e));
    }
}
