package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeConcatArrayDelayError<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T>[] f67613b;

    /* loaded from: classes5.dex */
    static final class ConcatMaybeObserver<T> extends AtomicInteger implements io.reactivex.t<T>, l3.d {
        private static final long serialVersionUID = 3520831347801429610L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67614a;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.w<? extends T>[] f67618e;

        /* renamed from: g  reason: collision with root package name */
        int f67620g;

        /* renamed from: h  reason: collision with root package name */
        long f67621h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f67615b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f67617d = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<Object> f67616c = new AtomicReference<>(NotificationLite.COMPLETE);

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f67619f = new AtomicThrowable();

        ConcatMaybeObserver(l3.c<? super T> cVar, io.reactivex.w<? extends T>[] wVarArr) {
            this.f67614a = cVar;
            this.f67618e = wVarArr;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f67616c;
            l3.c<? super T> cVar = this.f67614a;
            SequentialDisposable sequentialDisposable = this.f67617d;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z3 = true;
                    if (obj != NotificationLite.COMPLETE) {
                        long j4 = this.f67621h;
                        if (j4 != this.f67615b.get()) {
                            this.f67621h = j4 + 1;
                            atomicReference.lazySet(null);
                            cVar.onNext(obj);
                        } else {
                            z3 = false;
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (z3 && !sequentialDisposable.isDisposed()) {
                        int i2 = this.f67620g;
                        io.reactivex.w<? extends T>[] wVarArr = this.f67618e;
                        if (i2 == wVarArr.length) {
                            if (this.f67619f.get() != null) {
                                cVar.onError(this.f67619f.c());
                                return;
                            } else {
                                cVar.onComplete();
                                return;
                            }
                        }
                        this.f67620g = i2 + 1;
                        wVarArr[i2].a(this);
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // l3.d
        public void cancel() {
            this.f67617d.dispose();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67616c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67616c.lazySet(NotificationLite.COMPLETE);
            if (this.f67619f.a(th)) {
                a();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f67617d.a(bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67616c.lazySet(t3);
            a();
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67615b, j4);
                a();
            }
        }
    }

    public MaybeConcatArrayDelayError(io.reactivex.w<? extends T>[] wVarArr) {
        this.f67613b = wVarArr;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        ConcatMaybeObserver concatMaybeObserver = new ConcatMaybeObserver(cVar, this.f67613b);
        cVar.onSubscribe(concatMaybeObserver);
        concatMaybeObserver.a();
    }
}
