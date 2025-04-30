package io.reactivex.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.o;
/* compiled from: SerializedSubscriber.java */
/* loaded from: classes5.dex */
public final class e<T> implements o<T>, l3.d {

    /* renamed from: g  reason: collision with root package name */
    static final int f70401g = 4;

    /* renamed from: a  reason: collision with root package name */
    final l3.c<? super T> f70402a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f70403b;

    /* renamed from: c  reason: collision with root package name */
    l3.d f70404c;

    /* renamed from: d  reason: collision with root package name */
    boolean f70405d;

    /* renamed from: e  reason: collision with root package name */
    io.reactivex.internal.util.a<Object> f70406e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f70407f;

    public e(l3.c<? super T> cVar) {
        this(cVar, false);
    }

    void a() {
        io.reactivex.internal.util.a<Object> aVar;
        do {
            synchronized (this) {
                aVar = this.f70406e;
                if (aVar == null) {
                    this.f70405d = false;
                    return;
                }
                this.f70406e = null;
            }
        } while (!aVar.b((l3.c<? super T>) this.f70402a));
    }

    @Override // l3.d
    public void cancel() {
        this.f70404c.cancel();
    }

    @Override // l3.c
    public void onComplete() {
        if (this.f70407f) {
            return;
        }
        synchronized (this) {
            if (this.f70407f) {
                return;
            }
            if (this.f70405d) {
                io.reactivex.internal.util.a<Object> aVar = this.f70406e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f70406e = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f70407f = true;
            this.f70405d = true;
            this.f70402a.onComplete();
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        if (this.f70407f) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        synchronized (this) {
            boolean z3 = true;
            if (!this.f70407f) {
                if (this.f70405d) {
                    this.f70407f = true;
                    io.reactivex.internal.util.a<Object> aVar = this.f70406e;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f70406e = aVar;
                    }
                    Object error = NotificationLite.error(th);
                    if (this.f70403b) {
                        aVar.c(error);
                    } else {
                        aVar.f(error);
                    }
                    return;
                }
                this.f70407f = true;
                this.f70405d = true;
                z3 = false;
            }
            if (z3) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f70402a.onError(th);
            }
        }
    }

    @Override // l3.c
    public void onNext(T t3) {
        if (this.f70407f) {
            return;
        }
        if (t3 == null) {
            this.f70404c.cancel();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            if (this.f70407f) {
                return;
            }
            if (this.f70405d) {
                io.reactivex.internal.util.a<Object> aVar = this.f70406e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f70406e = aVar;
                }
                aVar.c(NotificationLite.next(t3));
                return;
            }
            this.f70405d = true;
            this.f70402a.onNext(t3);
            a();
        }
    }

    @Override // io.reactivex.o, l3.c
    public void onSubscribe(l3.d dVar) {
        if (SubscriptionHelper.validate(this.f70404c, dVar)) {
            this.f70404c = dVar;
            this.f70402a.onSubscribe(this);
        }
    }

    @Override // l3.d
    public void request(long j4) {
        this.f70404c.request(j4);
    }

    public e(l3.c<? super T> cVar, boolean z3) {
        this.f70402a = cVar;
        this.f70403b = z3;
    }
}
