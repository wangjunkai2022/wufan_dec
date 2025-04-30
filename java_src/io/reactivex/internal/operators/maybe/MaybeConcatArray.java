package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeConcatArray<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T>[] f67605b;

    /* loaded from: classes5.dex */
    static final class ConcatMaybeObserver<T> extends AtomicInteger implements io.reactivex.t<T>, l3.d {
        private static final long serialVersionUID = 3520831347801429610L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67606a;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.w<? extends T>[] f67610e;

        /* renamed from: f  reason: collision with root package name */
        int f67611f;

        /* renamed from: g  reason: collision with root package name */
        long f67612g;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f67607b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f67609d = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<Object> f67608c = new AtomicReference<>(NotificationLite.COMPLETE);

        ConcatMaybeObserver(l3.c<? super T> cVar, io.reactivex.w<? extends T>[] wVarArr) {
            this.f67606a = cVar;
            this.f67610e = wVarArr;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f67608c;
            l3.c<? super T> cVar = this.f67606a;
            SequentialDisposable sequentialDisposable = this.f67609d;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z3 = true;
                    if (obj != NotificationLite.COMPLETE) {
                        long j4 = this.f67612g;
                        if (j4 != this.f67607b.get()) {
                            this.f67612g = j4 + 1;
                            atomicReference.lazySet(null);
                            cVar.onNext(obj);
                        } else {
                            z3 = false;
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (z3 && !sequentialDisposable.isDisposed()) {
                        int i2 = this.f67611f;
                        io.reactivex.w<? extends T>[] wVarArr = this.f67610e;
                        if (i2 == wVarArr.length) {
                            cVar.onComplete();
                            return;
                        } else {
                            this.f67611f = i2 + 1;
                            wVarArr[i2].a(this);
                        }
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
            this.f67609d.dispose();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67608c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67606a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f67609d.a(bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67608c.lazySet(t3);
            a();
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67607b, j4);
                a();
            }
        }
    }

    public MaybeConcatArray(io.reactivex.w<? extends T>[] wVarArr) {
        this.f67605b = wVarArr;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        ConcatMaybeObserver concatMaybeObserver = new ConcatMaybeObserver(cVar, this.f67605b);
        cVar.onSubscribe(concatMaybeObserver);
        concatMaybeObserver.a();
    }
}
