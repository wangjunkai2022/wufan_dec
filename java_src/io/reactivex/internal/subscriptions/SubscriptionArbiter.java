package io.reactivex.internal.subscriptions;

import io.reactivex.internal.functions.a;
import io.reactivex.internal.util.b;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.d;
/* loaded from: classes5.dex */
public class SubscriptionArbiter extends AtomicInteger implements d {
    private static final long serialVersionUID = -2189523197179400958L;

    /* renamed from: a  reason: collision with root package name */
    d f70077a;

    /* renamed from: b  reason: collision with root package name */
    long f70078b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<d> f70079c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    final AtomicLong f70080d = new AtomicLong();

    /* renamed from: e  reason: collision with root package name */
    final AtomicLong f70081e = new AtomicLong();

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f70082f;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f70083g;

    final void c() {
        if (getAndIncrement() != 0) {
            return;
        }
        d();
    }

    public void cancel() {
        if (this.f70082f) {
            return;
        }
        this.f70082f = true;
        c();
    }

    final void d() {
        int i2 = 1;
        d dVar = null;
        long j4 = 0;
        do {
            d dVar2 = this.f70079c.get();
            if (dVar2 != null) {
                dVar2 = this.f70079c.getAndSet(null);
            }
            long j5 = this.f70080d.get();
            if (j5 != 0) {
                j5 = this.f70080d.getAndSet(0L);
            }
            long j6 = this.f70081e.get();
            if (j6 != 0) {
                j6 = this.f70081e.getAndSet(0L);
            }
            d dVar3 = this.f70077a;
            if (this.f70082f) {
                if (dVar3 != null) {
                    dVar3.cancel();
                    this.f70077a = null;
                }
                if (dVar2 != null) {
                    dVar2.cancel();
                }
            } else {
                long j7 = this.f70078b;
                if (j7 != Long.MAX_VALUE) {
                    j7 = b.c(j7, j5);
                    if (j7 != Long.MAX_VALUE) {
                        j7 -= j6;
                        if (j7 < 0) {
                            SubscriptionHelper.reportMoreProduced(j7);
                            j7 = 0;
                        }
                    }
                    this.f70078b = j7;
                }
                if (dVar2 != null) {
                    if (dVar3 != null) {
                        dVar3.cancel();
                    }
                    this.f70077a = dVar2;
                    if (j7 != 0) {
                        j4 = b.c(j4, j7);
                        dVar = dVar2;
                    }
                } else if (dVar3 != null && j5 != 0) {
                    j4 = b.c(j4, j5);
                    dVar = dVar3;
                }
            }
            i2 = addAndGet(-i2);
        } while (i2 != 0);
        if (j4 != 0) {
            dVar.request(j4);
        }
    }

    public final boolean e() {
        return this.f70082f;
    }

    public final boolean f() {
        return this.f70083g;
    }

    public final void g(long j4) {
        if (this.f70083g) {
            return;
        }
        if (get() == 0 && compareAndSet(0, 1)) {
            long j5 = this.f70078b;
            if (j5 != Long.MAX_VALUE) {
                long j6 = j5 - j4;
                if (j6 < 0) {
                    SubscriptionHelper.reportMoreProduced(j6);
                    j6 = 0;
                }
                this.f70078b = j6;
            }
            if (decrementAndGet() == 0) {
                return;
            }
            d();
            return;
        }
        b.a(this.f70081e, j4);
        c();
    }

    public final void h(d dVar) {
        if (this.f70082f) {
            dVar.cancel();
            return;
        }
        a.g(dVar, "s is null");
        if (get() == 0 && compareAndSet(0, 1)) {
            d dVar2 = this.f70077a;
            if (dVar2 != null) {
                dVar2.cancel();
            }
            this.f70077a = dVar;
            long j4 = this.f70078b;
            if (decrementAndGet() != 0) {
                d();
            }
            if (j4 != 0) {
                dVar.request(j4);
                return;
            }
            return;
        }
        d andSet = this.f70079c.getAndSet(dVar);
        if (andSet != null) {
            andSet.cancel();
        }
        c();
    }

    @Override // l3.d
    public final void request(long j4) {
        if (!SubscriptionHelper.validate(j4) || this.f70083g) {
            return;
        }
        if (get() == 0 && compareAndSet(0, 1)) {
            long j5 = this.f70078b;
            if (j5 != Long.MAX_VALUE) {
                long c4 = b.c(j5, j4);
                this.f70078b = c4;
                if (c4 == Long.MAX_VALUE) {
                    this.f70083g = true;
                }
            }
            d dVar = this.f70077a;
            if (decrementAndGet() != 0) {
                d();
            }
            if (dVar != null) {
                dVar.request(j4);
                return;
            }
            return;
        }
        b.a(this.f70080d, j4);
        c();
    }
}
