package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
/* compiled from: BasicFuseableSubscriber.java */
/* loaded from: classes5.dex */
public abstract class b<T, R> implements o<T>, x2.l<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final l3.c<? super R> f70009a;

    /* renamed from: b  reason: collision with root package name */
    protected l3.d f70010b;

    /* renamed from: c  reason: collision with root package name */
    protected x2.l<T> f70011c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f70012d;

    /* renamed from: e  reason: collision with root package name */
    protected int f70013e;

    public b(l3.c<? super R> cVar) {
        this.f70009a = cVar;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(Throwable th) {
        io.reactivex.exceptions.a.b(th);
        this.f70010b.cancel();
        onError(th);
    }

    @Override // l3.d
    public void cancel() {
        this.f70010b.cancel();
    }

    public void clear() {
        this.f70011c.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int d(int i2) {
        x2.l<T> lVar = this.f70011c;
        if (lVar == null || (i2 & 4) != 0) {
            return 0;
        }
        int requestFusion = lVar.requestFusion(i2);
        if (requestFusion != 0) {
            this.f70013e = requestFusion;
        }
        return requestFusion;
    }

    @Override // x2.o
    public boolean isEmpty() {
        return this.f70011c.isEmpty();
    }

    @Override // x2.o
    public final boolean offer(R r3) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // l3.c
    public void onComplete() {
        if (this.f70012d) {
            return;
        }
        this.f70012d = true;
        this.f70009a.onComplete();
    }

    @Override // l3.c
    public void onError(Throwable th) {
        if (this.f70012d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f70012d = true;
        this.f70009a.onError(th);
    }

    @Override // io.reactivex.o, l3.c
    public final void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.validate(this.f70010b, dVar)) {
            this.f70010b = dVar;
            if (dVar instanceof x2.l) {
                this.f70011c = (x2.l) dVar;
            }
            if (b()) {
                this.f70009a.onSubscribe(this);
                a();
            }
        }
    }

    @Override // l3.d
    public void request(long j4) {
        this.f70010b.request(j4);
    }

    @Override // x2.o
    public final boolean offer(R r3, R r4) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
