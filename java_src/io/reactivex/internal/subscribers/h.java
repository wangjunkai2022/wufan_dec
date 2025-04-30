package io.reactivex.internal.subscribers;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import x2.n;
/* compiled from: QueueDrainSubscriber.java */
/* loaded from: classes5.dex */
public abstract class h<T, U, V> extends l implements o<T>, io.reactivex.internal.util.m<U, V> {
    protected volatile boolean A0;
    protected Throwable B0;

    /* renamed from: x0  reason: collision with root package name */
    protected final l3.c<? super V> f70021x0;

    /* renamed from: y0  reason: collision with root package name */
    protected final n<U> f70022y0;

    /* renamed from: z0  reason: collision with root package name */
    protected volatile boolean f70023z0;

    public h(l3.c<? super V> cVar, n<U> nVar) {
        this.f70021x0 = cVar;
        this.f70022y0 = nVar;
    }

    @Override // io.reactivex.internal.util.m
    public final int a(int i2) {
        return this.f70059p.addAndGet(i2);
    }

    @Override // io.reactivex.internal.util.m
    public final boolean b() {
        return this.f70059p.getAndIncrement() == 0;
    }

    @Override // io.reactivex.internal.util.m
    public final boolean c() {
        return this.A0;
    }

    @Override // io.reactivex.internal.util.m
    public final boolean cancelled() {
        return this.f70023z0;
    }

    @Override // io.reactivex.internal.util.m
    public final long d() {
        return this.F.get();
    }

    @Override // io.reactivex.internal.util.m
    public final Throwable e() {
        return this.B0;
    }

    public boolean f(l3.c<? super V> cVar, U u3) {
        return false;
    }

    @Override // io.reactivex.internal.util.m
    public final long g(long j4) {
        return this.F.addAndGet(-j4);
    }

    public final boolean h() {
        return this.f70059p.get() == 0 && this.f70059p.compareAndSet(0, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i(U u3, boolean z3, io.reactivex.disposables.b bVar) {
        l3.c<? super V> cVar = this.f70021x0;
        n<U> nVar = this.f70022y0;
        if (h()) {
            long j4 = this.F.get();
            if (j4 != 0) {
                if (f(cVar, u3) && j4 != Long.MAX_VALUE) {
                    g(1L);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                bVar.dispose();
                cVar.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            }
        } else {
            nVar.offer(u3);
            if (!b()) {
                return;
            }
        }
        io.reactivex.internal.util.n.e(nVar, cVar, z3, bVar, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j(U u3, boolean z3, io.reactivex.disposables.b bVar) {
        l3.c<? super V> cVar = this.f70021x0;
        n<U> nVar = this.f70022y0;
        if (h()) {
            long j4 = this.F.get();
            if (j4 != 0) {
                if (nVar.isEmpty()) {
                    if (f(cVar, u3) && j4 != Long.MAX_VALUE) {
                        g(1L);
                    }
                    if (a(-1) == 0) {
                        return;
                    }
                } else {
                    nVar.offer(u3);
                }
            } else {
                this.f70023z0 = true;
                bVar.dispose();
                cVar.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            }
        } else {
            nVar.offer(u3);
            if (!b()) {
                return;
            }
        }
        io.reactivex.internal.util.n.e(nVar, cVar, z3, bVar, this);
    }

    public final void k(long j4) {
        if (SubscriptionHelper.validate(j4)) {
            io.reactivex.internal.util.b.a(this.F, j4);
        }
    }
}
