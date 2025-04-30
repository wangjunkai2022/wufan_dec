package io.reactivex.processors;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.util.NotificationLite;
import l3.c;
import l3.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SerializedProcessor.java */
/* loaded from: classes5.dex */
public final class b<T> extends a<T> {

    /* renamed from: b  reason: collision with root package name */
    final a<T> f70267b;

    /* renamed from: c  reason: collision with root package name */
    boolean f70268c;

    /* renamed from: d  reason: collision with root package name */
    io.reactivex.internal.util.a<Object> f70269d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f70270e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a<T> aVar) {
        this.f70267b = aVar;
    }

    @Override // io.reactivex.processors.a
    @Nullable
    public Throwable J8() {
        return this.f70267b.J8();
    }

    @Override // io.reactivex.processors.a
    public boolean K8() {
        return this.f70267b.K8();
    }

    @Override // io.reactivex.processors.a
    public boolean L8() {
        return this.f70267b.L8();
    }

    @Override // io.reactivex.processors.a
    public boolean M8() {
        return this.f70267b.M8();
    }

    void O8() {
        io.reactivex.internal.util.a<Object> aVar;
        while (true) {
            synchronized (this) {
                aVar = this.f70269d;
                if (aVar == null) {
                    this.f70268c = false;
                    return;
                }
                this.f70269d = null;
            }
            aVar.b(this.f70267b);
        }
    }

    @Override // io.reactivex.j
    protected void h6(c<? super T> cVar) {
        this.f70267b.c(cVar);
    }

    @Override // l3.c
    public void onComplete() {
        if (this.f70270e) {
            return;
        }
        synchronized (this) {
            if (this.f70270e) {
                return;
            }
            this.f70270e = true;
            if (this.f70268c) {
                io.reactivex.internal.util.a<Object> aVar = this.f70269d;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f70269d = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f70268c = true;
            this.f70267b.onComplete();
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        if (this.f70270e) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        synchronized (this) {
            boolean z3 = true;
            if (!this.f70270e) {
                this.f70270e = true;
                if (this.f70268c) {
                    io.reactivex.internal.util.a<Object> aVar = this.f70269d;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f70269d = aVar;
                    }
                    aVar.f(NotificationLite.error(th));
                    return;
                }
                this.f70268c = true;
                z3 = false;
            }
            if (z3) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f70267b.onError(th);
            }
        }
    }

    @Override // l3.c
    public void onNext(T t3) {
        if (this.f70270e) {
            return;
        }
        synchronized (this) {
            if (this.f70270e) {
                return;
            }
            if (this.f70268c) {
                io.reactivex.internal.util.a<Object> aVar = this.f70269d;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f70269d = aVar;
                }
                aVar.c(NotificationLite.next(t3));
                return;
            }
            this.f70268c = true;
            this.f70267b.onNext(t3);
            O8();
        }
    }

    @Override // l3.c
    public void onSubscribe(d dVar) {
        boolean z3 = true;
        if (!this.f70270e) {
            synchronized (this) {
                if (!this.f70270e) {
                    if (this.f70268c) {
                        io.reactivex.internal.util.a<Object> aVar = this.f70269d;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f70269d = aVar;
                        }
                        aVar.c(NotificationLite.subscription(dVar));
                        return;
                    }
                    this.f70268c = true;
                    z3 = false;
                }
            }
        }
        if (z3) {
            dVar.cancel();
            return;
        }
        this.f70267b.onSubscribe(dVar);
        O8();
    }
}
