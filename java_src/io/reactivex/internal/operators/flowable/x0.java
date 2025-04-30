package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: FlowableScan.java */
/* loaded from: classes5.dex */
public final class x0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.c<T, T, T> f67565c;

    /* compiled from: FlowableScan.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67566a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<T, T, T> f67567b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f67568c;

        /* renamed from: d  reason: collision with root package name */
        T f67569d;

        /* renamed from: e  reason: collision with root package name */
        boolean f67570e;

        a(l3.c<? super T> cVar, w2.c<T, T, T> cVar2) {
            this.f67566a = cVar;
            this.f67567b = cVar2;
        }

        @Override // l3.d
        public void cancel() {
            this.f67568c.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67570e) {
                return;
            }
            this.f67570e = true;
            this.f67566a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67570e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67570e = true;
            this.f67566a.onError(th);
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Object] */
        @Override // l3.c
        public void onNext(T t3) {
            if (this.f67570e) {
                return;
            }
            l3.c<? super T> cVar = this.f67566a;
            T t4 = this.f67569d;
            if (t4 == null) {
                this.f67569d = t3;
                cVar.onNext(t3);
                return;
            }
            try {
                ?? r4 = (T) io.reactivex.internal.functions.a.g(this.f67567b.apply(t4, t3), "The value returned by the accumulator is null");
                this.f67569d = r4;
                cVar.onNext(r4);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67568c.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f67568c, dVar)) {
                this.f67568c = dVar;
                this.f67566a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f67568c.request(j4);
        }
    }

    public x0(io.reactivex.j<T> jVar, w2.c<T, T, T> cVar) {
        super(jVar);
        this.f67565c = cVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f67288b.g6(new a(cVar, this.f67565c));
    }
}
