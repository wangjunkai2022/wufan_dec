package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableOnBackpressureLatest<T> extends a<T, T> {

    /* loaded from: classes5.dex */
    static final class BackpressureLatestSubscriber<T> extends AtomicInteger implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = 163080509307634843L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66739a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f66740b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f66741c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f66742d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f66743e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f66744f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<T> f66745g = new AtomicReference<>();

        BackpressureLatestSubscriber(l3.c<? super T> cVar) {
            this.f66739a = cVar;
        }

        boolean a(boolean z3, boolean z4, l3.c<?> cVar, AtomicReference<T> atomicReference) {
            if (this.f66743e) {
                atomicReference.lazySet(null);
                return true;
            } else if (z3) {
                Throwable th = this.f66742d;
                if (th != null) {
                    atomicReference.lazySet(null);
                    cVar.onError(th);
                    return true;
                } else if (z4) {
                    cVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            l3.c<? super T> cVar = this.f66739a;
            AtomicLong atomicLong = this.f66744f;
            AtomicReference<T> atomicReference = this.f66745g;
            int i2 = 1;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 == atomicLong.get()) {
                        break;
                    }
                    boolean z3 = this.f66741c;
                    Object obj = (T) atomicReference.getAndSet(null);
                    boolean z4 = obj == null;
                    if (a(z3, z4, cVar, atomicReference)) {
                        return;
                    }
                    if (z4) {
                        break;
                    }
                    cVar.onNext(obj);
                    j4++;
                }
                if (j4 == atomicLong.get()) {
                    if (a(this.f66741c, atomicReference.get() == null, cVar, atomicReference)) {
                        return;
                    }
                }
                if (j4 != 0) {
                    io.reactivex.internal.util.b.e(atomicLong, j4);
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66743e) {
                return;
            }
            this.f66743e = true;
            this.f66740b.cancel();
            if (getAndIncrement() == 0) {
                this.f66745g.lazySet(null);
            }
        }

        @Override // l3.c
        public void onComplete() {
            this.f66741c = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66742d = th;
            this.f66741c = true;
            b();
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66745g.lazySet(t3);
            b();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66740b, dVar)) {
                this.f66740b = dVar;
                this.f66739a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66744f, j4);
                b();
            }
        }
    }

    public FlowableOnBackpressureLatest(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new BackpressureLatestSubscriber(cVar));
    }
}
