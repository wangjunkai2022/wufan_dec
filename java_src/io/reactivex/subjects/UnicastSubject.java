package io.reactivex.subjects;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.g0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import x2.o;
/* loaded from: classes5.dex */
public final class UnicastSubject<T> extends c<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.internal.queue.a<T> f70355a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<g0<? super T>> f70356b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Runnable> f70357c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f70358d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f70359e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f70360f;

    /* renamed from: g  reason: collision with root package name */
    Throwable f70361g;

    /* renamed from: h  reason: collision with root package name */
    final AtomicBoolean f70362h;

    /* renamed from: i  reason: collision with root package name */
    final BasicIntQueueDisposable<T> f70363i;

    /* renamed from: j  reason: collision with root package name */
    boolean f70364j;

    /* loaded from: classes5.dex */
    final class UnicastQueueDisposable extends BasicIntQueueDisposable<T> {
        private static final long serialVersionUID = 7926949470189395511L;

        UnicastQueueDisposable() {
        }

        @Override // x2.o
        public void clear() {
            UnicastSubject.this.f70355a.clear();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (UnicastSubject.this.f70359e) {
                return;
            }
            UnicastSubject.this.f70359e = true;
            UnicastSubject.this.p8();
            UnicastSubject.this.f70356b.lazySet(null);
            if (UnicastSubject.this.f70363i.getAndIncrement() == 0) {
                UnicastSubject.this.f70356b.lazySet(null);
                UnicastSubject.this.f70355a.clear();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return UnicastSubject.this.f70359e;
        }

        @Override // x2.o
        public boolean isEmpty() {
            return UnicastSubject.this.f70355a.isEmpty();
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            return UnicastSubject.this.f70355a.poll();
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                UnicastSubject.this.f70364j = true;
                return 2;
            }
            return 0;
        }
    }

    UnicastSubject(int i2, boolean z3) {
        this.f70355a = new io.reactivex.internal.queue.a<>(io.reactivex.internal.functions.a.h(i2, "capacityHint"));
        this.f70357c = new AtomicReference<>();
        this.f70358d = z3;
        this.f70356b = new AtomicReference<>();
        this.f70362h = new AtomicBoolean();
        this.f70363i = new UnicastQueueDisposable();
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastSubject<T> k8() {
        return new UnicastSubject<>(z.S(), true);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastSubject<T> l8(int i2) {
        return new UnicastSubject<>(i2, true);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastSubject<T> m8(int i2, Runnable runnable) {
        return new UnicastSubject<>(i2, runnable, true);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastSubject<T> n8(int i2, Runnable runnable, boolean z3) {
        return new UnicastSubject<>(i2, runnable, z3);
    }

    @CheckReturnValue
    @NonNull
    public static <T> UnicastSubject<T> o8(boolean z3) {
        return new UnicastSubject<>(z.S(), z3);
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super T> g0Var) {
        if (!this.f70362h.get() && this.f70362h.compareAndSet(false, true)) {
            g0Var.onSubscribe(this.f70363i);
            this.f70356b.lazySet(g0Var);
            if (this.f70359e) {
                this.f70356b.lazySet(null);
                return;
            } else {
                q8();
                return;
            }
        }
        EmptyDisposable.error(new IllegalStateException("Only a single observer allowed."), g0Var);
    }

    @Override // io.reactivex.subjects.c
    @Nullable
    public Throwable f8() {
        if (this.f70360f) {
            return this.f70361g;
        }
        return null;
    }

    @Override // io.reactivex.subjects.c
    public boolean g8() {
        return this.f70360f && this.f70361g == null;
    }

    @Override // io.reactivex.subjects.c
    public boolean h8() {
        return this.f70356b.get() != null;
    }

    @Override // io.reactivex.subjects.c
    public boolean i8() {
        return this.f70360f && this.f70361g != null;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f70360f || this.f70359e) {
            return;
        }
        this.f70360f = true;
        p8();
        q8();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f70360f && !this.f70359e) {
            this.f70361g = th;
            this.f70360f = true;
            p8();
            q8();
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70360f || this.f70359e) {
            return;
        }
        this.f70355a.offer(t3);
        q8();
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (this.f70360f || this.f70359e) {
            bVar.dispose();
        }
    }

    void p8() {
        Runnable runnable = this.f70357c.get();
        if (runnable == null || !this.f70357c.compareAndSet(runnable, null)) {
            return;
        }
        runnable.run();
    }

    void q8() {
        if (this.f70363i.getAndIncrement() != 0) {
            return;
        }
        g0<? super T> g0Var = this.f70356b.get();
        int i2 = 1;
        while (g0Var == null) {
            i2 = this.f70363i.addAndGet(-i2);
            if (i2 == 0) {
                return;
            }
            g0Var = this.f70356b.get();
        }
        if (this.f70364j) {
            r8(g0Var);
        } else {
            s8(g0Var);
        }
    }

    void r8(g0<? super T> g0Var) {
        io.reactivex.internal.queue.a<T> aVar = this.f70355a;
        int i2 = 1;
        boolean z3 = !this.f70358d;
        while (!this.f70359e) {
            boolean z4 = this.f70360f;
            if (z3 && z4 && u8(aVar, g0Var)) {
                return;
            }
            g0Var.onNext(null);
            if (z4) {
                t8(g0Var);
                return;
            }
            i2 = this.f70363i.addAndGet(-i2);
            if (i2 == 0) {
                return;
            }
        }
        this.f70356b.lazySet(null);
        aVar.clear();
    }

    void s8(g0<? super T> g0Var) {
        io.reactivex.internal.queue.a<T> aVar = this.f70355a;
        boolean z3 = !this.f70358d;
        boolean z4 = true;
        int i2 = 1;
        while (!this.f70359e) {
            boolean z5 = this.f70360f;
            Object obj = (T) this.f70355a.poll();
            boolean z6 = obj == null;
            if (z5) {
                if (z3 && z4) {
                    if (u8(aVar, g0Var)) {
                        return;
                    }
                    z4 = false;
                }
                if (z6) {
                    t8(g0Var);
                    return;
                }
            }
            if (z6) {
                i2 = this.f70363i.addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            } else {
                g0Var.onNext(obj);
            }
        }
        this.f70356b.lazySet(null);
        aVar.clear();
    }

    void t8(g0<? super T> g0Var) {
        this.f70356b.lazySet(null);
        Throwable th = this.f70361g;
        if (th != null) {
            g0Var.onError(th);
        } else {
            g0Var.onComplete();
        }
    }

    boolean u8(o<T> oVar, g0<? super T> g0Var) {
        Throwable th = this.f70361g;
        if (th != null) {
            this.f70356b.lazySet(null);
            oVar.clear();
            g0Var.onError(th);
            return true;
        }
        return false;
    }

    UnicastSubject(int i2, Runnable runnable) {
        this(i2, runnable, true);
    }

    UnicastSubject(int i2, Runnable runnable, boolean z3) {
        this.f70355a = new io.reactivex.internal.queue.a<>(io.reactivex.internal.functions.a.h(i2, "capacityHint"));
        this.f70357c = new AtomicReference<>(io.reactivex.internal.functions.a.g(runnable, "onTerminate"));
        this.f70358d = z3;
        this.f70356b = new AtomicReference<>();
        this.f70362h = new AtomicBoolean();
        this.f70363i = new UnicastQueueDisposable();
    }
}
