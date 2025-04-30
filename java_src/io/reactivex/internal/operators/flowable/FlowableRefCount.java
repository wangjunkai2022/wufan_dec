package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableRefCount<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.flowables.a<T> f66815b;

    /* renamed from: c  reason: collision with root package name */
    final int f66816c;

    /* renamed from: d  reason: collision with root package name */
    final long f66817d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f66818e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.h0 f66819f;

    /* renamed from: g  reason: collision with root package name */
    RefConnection f66820g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class RefConnection extends AtomicReference<io.reactivex.disposables.b> implements Runnable, w2.g<io.reactivex.disposables.b> {
        private static final long serialVersionUID = -4552101107598366241L;

        /* renamed from: a  reason: collision with root package name */
        final FlowableRefCount<?> f66821a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f66822b;

        /* renamed from: c  reason: collision with root package name */
        long f66823c;

        /* renamed from: d  reason: collision with root package name */
        boolean f66824d;

        RefConnection(FlowableRefCount<?> flowableRefCount) {
            this.f66821a = flowableRefCount;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(io.reactivex.disposables.b bVar) throws Exception {
            DisposableHelper.replace(this, bVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f66821a.L8(this);
        }
    }

    /* loaded from: classes5.dex */
    static final class RefCountSubscriber<T> extends AtomicBoolean implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -7419642935409022375L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66825a;

        /* renamed from: b  reason: collision with root package name */
        final FlowableRefCount<T> f66826b;

        /* renamed from: c  reason: collision with root package name */
        final RefConnection f66827c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f66828d;

        RefCountSubscriber(l3.c<? super T> cVar, FlowableRefCount<T> flowableRefCount, RefConnection refConnection) {
            this.f66825a = cVar;
            this.f66826b = flowableRefCount;
            this.f66827c = refConnection;
        }

        @Override // l3.d
        public void cancel() {
            this.f66828d.cancel();
            if (compareAndSet(false, true)) {
                this.f66826b.J8(this.f66827c);
            }
        }

        @Override // l3.c
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.f66826b.K8(this.f66827c);
                this.f66825a.onComplete();
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.f66826b.K8(this.f66827c);
                this.f66825a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66825a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66828d, dVar)) {
                this.f66828d = dVar;
                this.f66825a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f66828d.request(j4);
        }
    }

    public FlowableRefCount(io.reactivex.flowables.a<T> aVar) {
        this(aVar, 1, 0L, TimeUnit.NANOSECONDS, io.reactivex.schedulers.b.h());
    }

    void J8(RefConnection refConnection) {
        synchronized (this) {
            RefConnection refConnection2 = this.f66820g;
            if (refConnection2 != null && refConnection2 == refConnection) {
                long j4 = refConnection.f66823c - 1;
                refConnection.f66823c = j4;
                if (j4 == 0 && refConnection.f66824d) {
                    if (this.f66817d == 0) {
                        L8(refConnection);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    refConnection.f66822b = sequentialDisposable;
                    sequentialDisposable.a(this.f66819f.f(refConnection, this.f66817d, this.f66818e));
                }
            }
        }
    }

    void K8(RefConnection refConnection) {
        synchronized (this) {
            RefConnection refConnection2 = this.f66820g;
            if (refConnection2 != null && refConnection2 == refConnection) {
                this.f66820g = null;
                io.reactivex.disposables.b bVar = refConnection.f66822b;
                if (bVar != null) {
                    bVar.dispose();
                }
            }
            long j4 = refConnection.f66823c - 1;
            refConnection.f66823c = j4;
            if (j4 == 0) {
                io.reactivex.flowables.a<T> aVar = this.f66815b;
                if (aVar instanceof io.reactivex.disposables.b) {
                    ((io.reactivex.disposables.b) aVar).dispose();
                } else if (aVar instanceof io.reactivex.internal.disposables.c) {
                    ((io.reactivex.internal.disposables.c) aVar).b(refConnection.get());
                }
            }
        }
    }

    void L8(RefConnection refConnection) {
        synchronized (this) {
            if (refConnection.f66823c == 0 && refConnection == this.f66820g) {
                this.f66820g = null;
                io.reactivex.disposables.b bVar = refConnection.get();
                DisposableHelper.dispose(refConnection);
                io.reactivex.flowables.a<T> aVar = this.f66815b;
                if (aVar instanceof io.reactivex.disposables.b) {
                    ((io.reactivex.disposables.b) aVar).dispose();
                } else if (aVar instanceof io.reactivex.internal.disposables.c) {
                    ((io.reactivex.internal.disposables.c) aVar).b(bVar);
                }
            }
        }
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        RefConnection refConnection;
        boolean z3;
        io.reactivex.disposables.b bVar;
        synchronized (this) {
            refConnection = this.f66820g;
            if (refConnection == null) {
                refConnection = new RefConnection(this);
                this.f66820g = refConnection;
            }
            long j4 = refConnection.f66823c;
            if (j4 == 0 && (bVar = refConnection.f66822b) != null) {
                bVar.dispose();
            }
            long j5 = j4 + 1;
            refConnection.f66823c = j5;
            z3 = true;
            if (refConnection.f66824d || j5 != this.f66816c) {
                z3 = false;
            } else {
                refConnection.f66824d = true;
            }
        }
        this.f66815b.g6(new RefCountSubscriber(cVar, this, refConnection));
        if (z3) {
            this.f66815b.N8(refConnection);
        }
    }

    public FlowableRefCount(io.reactivex.flowables.a<T> aVar, int i2, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f66815b = aVar;
        this.f66816c = i2;
        this.f66817d = j4;
        this.f66818e = timeUnit;
        this.f66819f = h0Var;
    }
}
