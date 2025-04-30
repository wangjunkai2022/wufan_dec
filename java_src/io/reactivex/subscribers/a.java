package io.reactivex.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.f;
import io.reactivex.o;
/* compiled from: DefaultSubscriber.java */
/* loaded from: classes5.dex */
public abstract class a<T> implements o<T> {

    /* renamed from: a  reason: collision with root package name */
    l3.d f70393a;

    protected final void a() {
        l3.d dVar = this.f70393a;
        this.f70393a = SubscriptionHelper.CANCELLED;
        dVar.cancel();
    }

    protected void b() {
        c(Long.MAX_VALUE);
    }

    protected final void c(long j4) {
        l3.d dVar = this.f70393a;
        if (dVar != null) {
            dVar.request(j4);
        }
    }

    @Override // io.reactivex.o, l3.c
    public final void onSubscribe(l3.d dVar) {
        if (f.f(this.f70393a, dVar, getClass())) {
            this.f70393a = dVar;
            b();
        }
    }
}
