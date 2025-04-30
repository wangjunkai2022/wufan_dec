package io.reactivex.subscribers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
/* compiled from: SafeSubscriber.java */
/* loaded from: classes5.dex */
public final class d<T> implements o<T>, l3.d {

    /* renamed from: a  reason: collision with root package name */
    final l3.c<? super T> f70398a;

    /* renamed from: b  reason: collision with root package name */
    l3.d f70399b;

    /* renamed from: c  reason: collision with root package name */
    boolean f70400c;

    public d(l3.c<? super T> cVar) {
        this.f70398a = cVar;
    }

    void a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f70398a.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f70398a.onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th2));
        }
    }

    void b() {
        this.f70400c = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f70398a.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f70398a.onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th2));
        }
    }

    @Override // l3.d
    public void cancel() {
        try {
            this.f70399b.cancel();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // l3.c
    public void onComplete() {
        if (this.f70400c) {
            return;
        }
        this.f70400c = true;
        if (this.f70399b == null) {
            a();
            return;
        }
        try {
            this.f70398a.onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        if (this.f70400c) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f70400c = true;
        if (this.f70399b == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f70398a.onSubscribe(EmptySubscription.INSTANCE);
                try {
                    this.f70398a.onError(new CompositeException(th, nullPointerException));
                    return;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    io.reactivex.plugins.a.Y(new CompositeException(th, nullPointerException, th2));
                    return;
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(new CompositeException(th, nullPointerException, th3));
                return;
            }
        }
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        try {
            this.f70398a.onError(th);
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            io.reactivex.plugins.a.Y(new CompositeException(th, th4));
        }
    }

    @Override // l3.c
    public void onNext(T t3) {
        if (this.f70400c) {
            return;
        }
        if (this.f70399b == null) {
            b();
        } else if (t3 == null) {
            NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            try {
                this.f70399b.cancel();
                onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(new CompositeException(nullPointerException, th));
            }
        } else {
            try {
                this.f70398a.onNext(t3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f70399b.cancel();
                    onError(th2);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    onError(new CompositeException(th2, th3));
                }
            }
        }
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.validate(this.f70399b, dVar)) {
            this.f70399b = dVar;
            try {
                this.f70398a.onSubscribe(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f70400c = true;
                try {
                    dVar.cancel();
                    io.reactivex.plugins.a.Y(th);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                }
            }
        }
    }

    @Override // l3.d
    public void request(long j4) {
        try {
            this.f70399b.request(j4);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            try {
                this.f70399b.cancel();
                io.reactivex.plugins.a.Y(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                io.reactivex.plugins.a.Y(new CompositeException(th, th2));
            }
        }
    }
}
