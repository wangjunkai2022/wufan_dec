package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
/* compiled from: BasicFuseableConditionalSubscriber.java */
/* loaded from: classes5.dex */
public abstract class a<T, R> implements x2.a<T>, x2.l<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final x2.a<? super R> f70004a;

    /* renamed from: b  reason: collision with root package name */
    protected l3.d f70005b;

    /* renamed from: c  reason: collision with root package name */
    protected x2.l<T> f70006c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f70007d;

    /* renamed from: e  reason: collision with root package name */
    protected int f70008e;

    public a(x2.a<? super R> aVar) {
        this.f70004a = aVar;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(Throwable th) {
        io.reactivex.exceptions.a.b(th);
        this.f70005b.cancel();
        onError(th);
    }

    @Override // l3.d
    public void cancel() {
        this.f70005b.cancel();
    }

    @Override // x2.o
    public void clear() {
        this.f70006c.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int d(int i2) {
        x2.l<T> lVar = this.f70006c;
        if (lVar == null || (i2 & 4) != 0) {
            return 0;
        }
        int requestFusion = lVar.requestFusion(i2);
        if (requestFusion != 0) {
            this.f70008e = requestFusion;
        }
        return requestFusion;
    }

    @Override // x2.o
    public boolean isEmpty() {
        return this.f70006c.isEmpty();
    }

    @Override // x2.o
    public final boolean offer(R r3) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // l3.c
    public void onComplete() {
        if (this.f70007d) {
            return;
        }
        this.f70007d = true;
        this.f70004a.onComplete();
    }

    @Override // l3.c
    public void onError(Throwable th) {
        if (this.f70007d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f70007d = true;
        this.f70004a.onError(th);
    }

    @Override // io.reactivex.o, l3.c
    public final void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.validate(this.f70005b, dVar)) {
            this.f70005b = dVar;
            if (dVar instanceof x2.l) {
                this.f70006c = (x2.l) dVar;
            }
            if (b()) {
                this.f70004a.onSubscribe(this);
                a();
            }
        }
    }

    @Override // l3.d
    public void request(long j4) {
        this.f70005b.request(j4);
    }

    @Override // x2.o
    public final boolean offer(R r3, R r4) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
