package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.n;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class InnerQueuedSubscriber<T> extends AtomicReference<l3.d> implements o<T>, l3.d {
    private static final long serialVersionUID = 22876611072430776L;

    /* renamed from: a  reason: collision with root package name */
    final g<T> f69979a;

    /* renamed from: b  reason: collision with root package name */
    final int f69980b;

    /* renamed from: c  reason: collision with root package name */
    final int f69981c;

    /* renamed from: d  reason: collision with root package name */
    volatile x2.o<T> f69982d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f69983e;

    /* renamed from: f  reason: collision with root package name */
    long f69984f;

    /* renamed from: g  reason: collision with root package name */
    int f69985g;

    public InnerQueuedSubscriber(g<T> gVar, int i2) {
        this.f69979a = gVar;
        this.f69980b = i2;
        this.f69981c = i2 - (i2 >> 2);
    }

    public boolean a() {
        return this.f69983e;
    }

    public x2.o<T> b() {
        return this.f69982d;
    }

    public void c() {
        if (this.f69985g != 1) {
            long j4 = this.f69984f + 1;
            if (j4 == this.f69981c) {
                this.f69984f = 0L;
                get().request(j4);
                return;
            }
            this.f69984f = j4;
        }
    }

    @Override // l3.d
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    public void d() {
        this.f69983e = true;
    }

    @Override // l3.c
    public void onComplete() {
        this.f69979a.c(this);
    }

    @Override // l3.c
    public void onError(Throwable th) {
        this.f69979a.d(this, th);
    }

    @Override // l3.c
    public void onNext(T t3) {
        if (this.f69985g == 0) {
            this.f69979a.a(this, t3);
        } else {
            this.f69979a.b();
        }
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            if (dVar instanceof x2.l) {
                x2.l lVar = (x2.l) dVar;
                int requestFusion = lVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.f69985g = requestFusion;
                    this.f69982d = lVar;
                    this.f69983e = true;
                    this.f69979a.c(this);
                    return;
                } else if (requestFusion == 2) {
                    this.f69985g = requestFusion;
                    this.f69982d = lVar;
                    n.j(dVar, this.f69980b);
                    return;
                }
            }
            this.f69982d = n.c(this.f69980b);
            n.j(dVar, this.f69980b);
        }
    }

    @Override // l3.d
    public void request(long j4) {
        if (this.f69985g != 1) {
            long j5 = this.f69984f + j4;
            if (j5 >= this.f69981c) {
                this.f69984f = 0L;
                get().request(j5);
                return;
            }
            this.f69984f = j5;
        }
    }
}
