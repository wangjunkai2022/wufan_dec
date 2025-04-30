package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;
/* compiled from: FlowableBufferExactBoundary.java */
/* loaded from: classes5.dex */
public final class j<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final l3.b<B> f67400c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<U> f67401d;

    /* compiled from: FlowableBufferExactBoundary.java */
    /* loaded from: classes5.dex */
    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, U, B> f67402b;

        a(b<T, U, B> bVar) {
            this.f67402b = bVar;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67402b.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67402b.onError(th);
        }

        @Override // l3.c
        public void onNext(B b4) {
            this.f67402b.m();
        }
    }

    /* compiled from: FlowableBufferExactBoundary.java */
    /* loaded from: classes5.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.subscribers.h<T, U, U> implements io.reactivex.o<T>, l3.d, io.reactivex.disposables.b {
        final Callable<U> C0;
        final l3.b<B> D0;
        l3.d E0;
        io.reactivex.disposables.b F0;
        U G0;

        b(l3.c<? super U> cVar, Callable<U> callable, l3.b<B> bVar) {
            super(cVar, new MpscLinkedQueue());
            this.C0 = callable;
            this.D0 = bVar;
        }

        @Override // l3.d
        public void cancel() {
            if (this.f70023z0) {
                return;
            }
            this.f70023z0 = true;
            this.F0.dispose();
            this.E0.cancel();
            if (b()) {
                this.f70022y0.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f70023z0;
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.m
        /* renamed from: l */
        public boolean f(l3.c<? super U> cVar, U u3) {
            this.f70021x0.onNext(u3);
            return true;
        }

        void m() {
            try {
                U u3 = (U) io.reactivex.internal.functions.a.g(this.C0.call(), "The buffer supplied is null");
                synchronized (this) {
                    U u4 = this.G0;
                    if (u4 == null) {
                        return;
                    }
                    this.G0 = u3;
                    i(u4, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                this.f70021x0.onError(th);
            }
        }

        @Override // l3.c
        public void onComplete() {
            synchronized (this) {
                U u3 = this.G0;
                if (u3 == null) {
                    return;
                }
                this.G0 = null;
                this.f70022y0.offer(u3);
                this.A0 = true;
                if (b()) {
                    io.reactivex.internal.util.n.e(this.f70022y0, this.f70021x0, false, this, this);
                }
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            cancel();
            this.f70021x0.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            synchronized (this) {
                U u3 = this.G0;
                if (u3 == null) {
                    return;
                }
                u3.add(t3);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.E0, dVar)) {
                this.E0 = dVar;
                try {
                    this.G0 = (U) io.reactivex.internal.functions.a.g(this.C0.call(), "The buffer supplied is null");
                    a aVar = new a(this);
                    this.F0 = aVar;
                    this.f70021x0.onSubscribe(this);
                    if (this.f70023z0) {
                        return;
                    }
                    dVar.request(Long.MAX_VALUE);
                    this.D0.c(aVar);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f70023z0 = true;
                    dVar.cancel();
                    EmptySubscription.error(th, this.f70021x0);
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            k(j4);
        }
    }

    public j(io.reactivex.j<T> jVar, l3.b<B> bVar, Callable<U> callable) {
        super(jVar);
        this.f67400c = bVar;
        this.f67401d = callable;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super U> cVar) {
        this.f67288b.g6(new b(new io.reactivex.subscribers.e(cVar), this.f67401d, this.f67400c));
    }
}
