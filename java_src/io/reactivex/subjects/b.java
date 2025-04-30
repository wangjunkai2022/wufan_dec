package io.reactivex.subjects;

import io.reactivex.annotations.Nullable;
import io.reactivex.g0;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SerializedSubject.java */
/* loaded from: classes5.dex */
public final class b<T> extends c<T> implements a.InterfaceC0469a<Object> {

    /* renamed from: a  reason: collision with root package name */
    final c<T> f70384a;

    /* renamed from: b  reason: collision with root package name */
    boolean f70385b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.internal.util.a<Object> f70386c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f70387d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(c<T> cVar) {
        this.f70384a = cVar;
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super T> g0Var) {
        this.f70384a.a(g0Var);
    }

    @Override // io.reactivex.subjects.c
    @Nullable
    public Throwable f8() {
        return this.f70384a.f8();
    }

    @Override // io.reactivex.subjects.c
    public boolean g8() {
        return this.f70384a.g8();
    }

    @Override // io.reactivex.subjects.c
    public boolean h8() {
        return this.f70384a.h8();
    }

    @Override // io.reactivex.subjects.c
    public boolean i8() {
        return this.f70384a.i8();
    }

    void k8() {
        io.reactivex.internal.util.a<Object> aVar;
        while (true) {
            synchronized (this) {
                aVar = this.f70386c;
                if (aVar == null) {
                    this.f70385b = false;
                    return;
                }
                this.f70386c = null;
            }
            aVar.d(this);
        }
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f70387d) {
            return;
        }
        synchronized (this) {
            if (this.f70387d) {
                return;
            }
            this.f70387d = true;
            if (this.f70385b) {
                io.reactivex.internal.util.a<Object> aVar = this.f70386c;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f70386c = aVar;
                }
                aVar.c(NotificationLite.complete());
                return;
            }
            this.f70385b = true;
            this.f70384a.onComplete();
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (this.f70387d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        synchronized (this) {
            boolean z3 = true;
            if (!this.f70387d) {
                this.f70387d = true;
                if (this.f70385b) {
                    io.reactivex.internal.util.a<Object> aVar = this.f70386c;
                    if (aVar == null) {
                        aVar = new io.reactivex.internal.util.a<>(4);
                        this.f70386c = aVar;
                    }
                    aVar.f(NotificationLite.error(th));
                    return;
                }
                this.f70385b = true;
                z3 = false;
            }
            if (z3) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f70384a.onError(th);
            }
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        if (this.f70387d) {
            return;
        }
        synchronized (this) {
            if (this.f70387d) {
                return;
            }
            if (this.f70385b) {
                io.reactivex.internal.util.a<Object> aVar = this.f70386c;
                if (aVar == null) {
                    aVar = new io.reactivex.internal.util.a<>(4);
                    this.f70386c = aVar;
                }
                aVar.c(NotificationLite.next(t3));
                return;
            }
            this.f70385b = true;
            this.f70384a.onNext(t3);
            k8();
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        boolean z3 = true;
        if (!this.f70387d) {
            synchronized (this) {
                if (!this.f70387d) {
                    if (this.f70385b) {
                        io.reactivex.internal.util.a<Object> aVar = this.f70386c;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f70386c = aVar;
                        }
                        aVar.c(NotificationLite.disposable(bVar));
                        return;
                    }
                    this.f70385b = true;
                    z3 = false;
                }
            }
        }
        if (z3) {
            bVar.dispose();
            return;
        }
        this.f70384a.onSubscribe(bVar);
        k8();
    }

    @Override // io.reactivex.internal.util.a.InterfaceC0469a, w2.r
    public boolean test(Object obj) {
        return NotificationLite.acceptFull(obj, this.f70384a);
    }
}
