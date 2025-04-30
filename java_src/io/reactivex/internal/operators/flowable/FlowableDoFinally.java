package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* loaded from: classes5.dex */
public final class FlowableDoFinally<T> extends a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.a f66358c;

    /* loaded from: classes5.dex */
    static final class DoFinallyConditionalSubscriber<T> extends BasicIntQueueSubscription<T> implements x2.a<T> {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final x2.a<? super T> f66359a;

        /* renamed from: b  reason: collision with root package name */
        final w2.a f66360b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f66361c;

        /* renamed from: d  reason: collision with root package name */
        x2.l<T> f66362d;

        /* renamed from: e  reason: collision with root package name */
        boolean f66363e;

        DoFinallyConditionalSubscriber(x2.a<? super T> aVar, w2.a aVar2) {
            this.f66359a = aVar;
            this.f66360b = aVar2;
        }

        @Override // l3.d
        public void cancel() {
            this.f66361c.cancel();
            d();
        }

        @Override // x2.o
        public void clear() {
            this.f66362d.clear();
        }

        void d() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f66360b.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f66362d.isEmpty();
        }

        @Override // l3.c
        public void onComplete() {
            this.f66359a.onComplete();
            d();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66359a.onError(th);
            d();
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66359a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66361c, dVar)) {
                this.f66361c = dVar;
                if (dVar instanceof x2.l) {
                    this.f66362d = (x2.l) dVar;
                }
                this.f66359a.onSubscribe(this);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T poll = this.f66362d.poll();
            if (poll == null && this.f66363e) {
                d();
            }
            return poll;
        }

        @Override // l3.d
        public void request(long j4) {
            this.f66361c.request(j4);
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            x2.l<T> lVar = this.f66362d;
            if (lVar == null || (i2 & 4) != 0) {
                return 0;
            }
            int requestFusion = lVar.requestFusion(i2);
            if (requestFusion != 0) {
                this.f66363e = requestFusion == 1;
            }
            return requestFusion;
        }

        @Override // x2.a
        public boolean v0(T t3) {
            return this.f66359a.v0(t3);
        }
    }

    /* loaded from: classes5.dex */
    static final class DoFinallySubscriber<T> extends BasicIntQueueSubscription<T> implements io.reactivex.o<T> {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66364a;

        /* renamed from: b  reason: collision with root package name */
        final w2.a f66365b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f66366c;

        /* renamed from: d  reason: collision with root package name */
        x2.l<T> f66367d;

        /* renamed from: e  reason: collision with root package name */
        boolean f66368e;

        DoFinallySubscriber(l3.c<? super T> cVar, w2.a aVar) {
            this.f66364a = cVar;
            this.f66365b = aVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f66366c.cancel();
            d();
        }

        @Override // x2.o
        public void clear() {
            this.f66367d.clear();
        }

        void d() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f66365b.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f66367d.isEmpty();
        }

        @Override // l3.c
        public void onComplete() {
            this.f66364a.onComplete();
            d();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f66364a.onError(th);
            d();
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f66364a.onNext(t3);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66366c, dVar)) {
                this.f66366c = dVar;
                if (dVar instanceof x2.l) {
                    this.f66367d = (x2.l) dVar;
                }
                this.f66364a.onSubscribe(this);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T poll = this.f66367d.poll();
            if (poll == null && this.f66368e) {
                d();
            }
            return poll;
        }

        @Override // l3.d
        public void request(long j4) {
            this.f66366c.request(j4);
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            x2.l<T> lVar = this.f66367d;
            if (lVar == null || (i2 & 4) != 0) {
                return 0;
            }
            int requestFusion = lVar.requestFusion(i2);
            if (requestFusion != 0) {
                this.f66368e = requestFusion == 1;
            }
            return requestFusion;
        }
    }

    public FlowableDoFinally(io.reactivex.j<T> jVar, w2.a aVar) {
        super(jVar);
        this.f66358c = aVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        if (cVar instanceof x2.a) {
            this.f67288b.g6(new DoFinallyConditionalSubscriber((x2.a) cVar, this.f66358c));
        } else {
            this.f67288b.g6(new DoFinallySubscriber(cVar, this.f66358c));
        }
    }
}
