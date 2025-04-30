package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeConcatIterable<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.w<? extends T>> f67622b;

    /* loaded from: classes5.dex */
    static final class ConcatMaybeObserver<T> extends AtomicInteger implements io.reactivex.t<T>, l3.d {
        private static final long serialVersionUID = 3520831347801429610L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67623a;

        /* renamed from: e  reason: collision with root package name */
        final Iterator<? extends io.reactivex.w<? extends T>> f67627e;

        /* renamed from: f  reason: collision with root package name */
        long f67628f;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f67624b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f67626d = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<Object> f67625c = new AtomicReference<>(NotificationLite.COMPLETE);

        ConcatMaybeObserver(l3.c<? super T> cVar, Iterator<? extends io.reactivex.w<? extends T>> it2) {
            this.f67623a = cVar;
            this.f67627e = it2;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f67625c;
            l3.c<? super T> cVar = this.f67623a;
            SequentialDisposable sequentialDisposable = this.f67626d;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z3 = true;
                    if (obj != NotificationLite.COMPLETE) {
                        long j4 = this.f67628f;
                        if (j4 != this.f67624b.get()) {
                            this.f67628f = j4 + 1;
                            atomicReference.lazySet(null);
                            cVar.onNext(obj);
                        } else {
                            z3 = false;
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (z3 && !sequentialDisposable.isDisposed()) {
                        try {
                            if (this.f67627e.hasNext()) {
                                try {
                                    ((io.reactivex.w) io.reactivex.internal.functions.a.g(this.f67627e.next(), "The source Iterator returned a null MaybeSource")).a(this);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    cVar.onError(th);
                                    return;
                                }
                            } else {
                                cVar.onComplete();
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            cVar.onError(th2);
                            return;
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
            this.f67626d.dispose();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67625c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67623a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f67626d.a(bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67625c.lazySet(t3);
            a();
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67624b, j4);
                a();
            }
        }
    }

    public MaybeConcatIterable(Iterable<? extends io.reactivex.w<? extends T>> iterable) {
        this.f67622b = iterable;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        try {
            ConcatMaybeObserver concatMaybeObserver = new ConcatMaybeObserver(cVar, (Iterator) io.reactivex.internal.functions.a.g(this.f67622b.iterator(), "The sources Iterable returned a null Iterator"));
            cVar.onSubscribe(concatMaybeObserver);
            concatMaybeObserver.a();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
