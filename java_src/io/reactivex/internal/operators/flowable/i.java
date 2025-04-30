package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: FlowableBufferBoundarySupplier.java */
/* loaded from: classes5.dex */
public final class i<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final Callable<? extends l3.b<B>> f67390c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<U> f67391d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableBufferBoundarySupplier.java */
    /* loaded from: classes5.dex */
    public static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, U, B> f67392b;

        /* renamed from: c  reason: collision with root package name */
        boolean f67393c;

        a(b<T, U, B> bVar) {
            this.f67392b = bVar;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67393c) {
                return;
            }
            this.f67393c = true;
            this.f67392b.n();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67393c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67393c = true;
            this.f67392b.onError(th);
        }

        @Override // l3.c
        public void onNext(B b4) {
            if (this.f67393c) {
                return;
            }
            this.f67393c = true;
            a();
            this.f67392b.n();
        }
    }

    /* compiled from: FlowableBufferBoundarySupplier.java */
    /* loaded from: classes5.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.subscribers.h<T, U, U> implements io.reactivex.o<T>, l3.d, io.reactivex.disposables.b {
        final Callable<U> C0;
        final Callable<? extends l3.b<B>> D0;
        l3.d E0;
        final AtomicReference<io.reactivex.disposables.b> F0;
        U G0;

        b(l3.c<? super U> cVar, Callable<U> callable, Callable<? extends l3.b<B>> callable2) {
            super(cVar, new MpscLinkedQueue());
            this.F0 = new AtomicReference<>();
            this.C0 = callable;
            this.D0 = callable2;
        }

        @Override // l3.d
        public void cancel() {
            if (this.f70023z0) {
                return;
            }
            this.f70023z0 = true;
            this.E0.cancel();
            m();
            if (b()) {
                this.f70022y0.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.E0.cancel();
            m();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.F0.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.m
        /* renamed from: l */
        public boolean f(l3.c<? super U> cVar, U u3) {
            this.f70021x0.onNext(u3);
            return true;
        }

        void m() {
            DisposableHelper.dispose(this.F0);
        }

        void n() {
            try {
                U u3 = (U) io.reactivex.internal.functions.a.g(this.C0.call(), "The buffer supplied is null");
                try {
                    l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.D0.call(), "The boundary publisher supplied is null");
                    a aVar = new a(this);
                    if (DisposableHelper.replace(this.F0, aVar)) {
                        synchronized (this) {
                            U u4 = this.G0;
                            if (u4 == null) {
                                return;
                            }
                            this.G0 = u3;
                            bVar.c(aVar);
                            i(u4, false, this);
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f70023z0 = true;
                    this.E0.cancel();
                    this.f70021x0.onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                this.f70021x0.onError(th2);
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
                l3.c<? super V> cVar = this.f70021x0;
                try {
                    this.G0 = (U) io.reactivex.internal.functions.a.g(this.C0.call(), "The buffer supplied is null");
                    try {
                        l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.D0.call(), "The boundary publisher supplied is null");
                        a aVar = new a(this);
                        this.F0.set(aVar);
                        cVar.onSubscribe(this);
                        if (this.f70023z0) {
                            return;
                        }
                        dVar.request(Long.MAX_VALUE);
                        bVar.c(aVar);
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f70023z0 = true;
                        dVar.cancel();
                        EmptySubscription.error(th, cVar);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f70023z0 = true;
                    dVar.cancel();
                    EmptySubscription.error(th2, cVar);
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            k(j4);
        }
    }

    public i(io.reactivex.j<T> jVar, Callable<? extends l3.b<B>> callable, Callable<U> callable2) {
        super(jVar);
        this.f67390c = callable;
        this.f67391d = callable2;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super U> cVar) {
        this.f67288b.g6(new b(new io.reactivex.subscribers.e(cVar), this.f67391d, this.f67390c));
    }
}
