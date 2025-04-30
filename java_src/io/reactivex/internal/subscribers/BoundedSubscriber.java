package io.reactivex.internal.subscribers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class BoundedSubscriber<T> extends AtomicReference<l3.d> implements o<T>, l3.d, io.reactivex.disposables.b, io.reactivex.observers.f {
    private static final long serialVersionUID = -7251123623727029452L;

    /* renamed from: a  reason: collision with root package name */
    final w2.g<? super T> f69966a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super Throwable> f69967b;

    /* renamed from: c  reason: collision with root package name */
    final w2.a f69968c;

    /* renamed from: d  reason: collision with root package name */
    final w2.g<? super l3.d> f69969d;

    /* renamed from: e  reason: collision with root package name */
    final int f69970e;

    /* renamed from: f  reason: collision with root package name */
    int f69971f;

    /* renamed from: g  reason: collision with root package name */
    final int f69972g;

    public BoundedSubscriber(w2.g<? super T> gVar, w2.g<? super Throwable> gVar2, w2.a aVar, w2.g<? super l3.d> gVar3, int i2) {
        this.f69966a = gVar;
        this.f69967b = gVar2;
        this.f69968c = aVar;
        this.f69969d = gVar3;
        this.f69970e = i2;
        this.f69972g = i2 - (i2 >> 2);
    }

    @Override // io.reactivex.observers.f
    public boolean a() {
        return this.f69967b != Functions.f65827f;
    }

    @Override // l3.d
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        cancel();
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // l3.c
    public void onComplete() {
        l3.d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.f69968c.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        l3.d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.f69967b.accept(th);
                return;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                return;
            }
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // l3.c
    public void onNext(T t3) {
        if (isDisposed()) {
            return;
        }
        try {
            this.f69966a.accept(t3);
            int i2 = this.f69971f + 1;
            if (i2 == this.f69972g) {
                this.f69971f = 0;
                get().request(this.f69972g);
            } else {
                this.f69971f = i2;
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            get().cancel();
            onError(th);
        }
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            try {
                this.f69969d.accept(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dVar.cancel();
                onError(th);
            }
        }
    }

    @Override // l3.d
    public void request(long j4) {
        get().request(j4);
    }
}
