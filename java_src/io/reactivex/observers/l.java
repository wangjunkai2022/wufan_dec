package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
/* compiled from: SerializedObserver.java */
/* loaded from: classes5.dex */
public final class l<T> implements g0<T>, io.reactivex.disposables.b {

    /* renamed from: g  reason: collision with root package name */
    static final int f70141g = 4;

    /* renamed from: a  reason: collision with root package name */
    final g0<? super T> f70142a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f70143b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.disposables.b f70144c;

    /* renamed from: d  reason: collision with root package name */
    boolean f70145d;

    /* renamed from: e  reason: collision with root package name */
    io.reactivex.internal.util.a<Object> f70146e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f70147f;

    public l(@NonNull g0<? super T> g0Var) {
        this(g0Var, false);
    }

    void a() {
        io.reactivex.internal.util.a<Object> aVar;
        do {
            synchronized (this) {
                aVar = this.f70146e;
                if (aVar == null) {
                    this.f70145d = false;
                    return;
                }
                this.f70146e = null;
            }
        } while (!aVar.a((g0<? super T>) this.f70142a));
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        this.f70144c.dispose();
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f70144c.isDisposed();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f70147f) {
            return;
        }
        synchronized (this) {
            if (this.f70147f) {
                return;
            }
            if (this.f70145d) {
                io.reactivex.internal.util.a<Object> aVar = this.f70146e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f70146e = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f70147f = true;
            this.f70145d = true;
            this.f70142a.onComplete();
        }
    }

    @Override // io.reactivex.g0
    public void onError(@NonNull Throwable th) {
        if (this.f70147f) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        synchronized (this) {
            boolean z3 = true;
            if (!this.f70147f) {
                if (this.f70145d) {
                    this.f70147f = true;
                    io.reactivex.internal.util.a<Object> aVar = this.f70146e;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f70146e = aVar;
                    }
                    Object error = NotificationLite.error(th);
                    if (this.f70143b) {
                        aVar.c(error);
                    } else {
                        aVar.f(error);
                    }
                    return;
                }
                this.f70147f = true;
                this.f70145d = true;
                z3 = false;
            }
            if (z3) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f70142a.onError(th);
            }
        }
    }

    @Override // io.reactivex.g0
    public void onNext(@NonNull T t3) {
        if (this.f70147f) {
            return;
        }
        if (t3 == null) {
            this.f70144c.dispose();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            if (this.f70147f) {
                return;
            }
            if (this.f70145d) {
                io.reactivex.internal.util.a<Object> aVar = this.f70146e;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f70146e = aVar;
                }
                aVar.c(NotificationLite.next(t3));
                return;
            }
            this.f70145d = true;
            this.f70142a.onNext(t3);
            a();
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (DisposableHelper.validate(this.f70144c, bVar)) {
            this.f70144c = bVar;
            this.f70142a.onSubscribe(this);
        }
    }

    public l(@NonNull g0<? super T> g0Var, boolean z3) {
        this.f70142a = g0Var;
        this.f70143b = z3;
    }
}
