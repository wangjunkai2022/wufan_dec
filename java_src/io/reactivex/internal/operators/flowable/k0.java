package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableIgnoreElements.java */
/* loaded from: classes5.dex */
public final class k0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableIgnoreElements.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, x2.l<T> {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67423a;

        /* renamed from: b  reason: collision with root package name */
        l3.d f67424b;

        a(l3.c<? super T> cVar) {
            this.f67423a = cVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f67424b.cancel();
        }

        @Override // x2.o
        public void clear() {
        }

        @Override // x2.o
        public boolean isEmpty() {
            return true;
        }

        @Override // x2.o
        public boolean offer(T t3) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // l3.c
        public void onComplete() {
            this.f67423a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67423a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67424b, dVar)) {
                this.f67424b = dVar;
                this.f67423a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() {
            return null;
        }

        @Override // l3.d
        public void request(long j4) {
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return i2 & 2;
        }

        @Override // x2.o
        public boolean offer(T t3, T t4) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    public k0(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(cVar));
    }
}
