package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ObservableBufferTimed.java */
/* loaded from: classes5.dex */
public final class m<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final long f69138b;

    /* renamed from: c  reason: collision with root package name */
    final long f69139c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f69140d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f69141e;

    /* renamed from: f  reason: collision with root package name */
    final Callable<U> f69142f;

    /* renamed from: g  reason: collision with root package name */
    final int f69143g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f69144h;

    /* compiled from: ObservableBufferTimed.java */
    /* loaded from: classes5.dex */
    static final class a<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.k<T, U, U> implements Runnable, io.reactivex.disposables.b {
        final Callable<U> K;

        /* renamed from: n0  reason: collision with root package name */
        final long f69145n0;

        /* renamed from: o0  reason: collision with root package name */
        final TimeUnit f69146o0;

        /* renamed from: p0  reason: collision with root package name */
        final int f69147p0;

        /* renamed from: q0  reason: collision with root package name */
        final boolean f69148q0;

        /* renamed from: r0  reason: collision with root package name */
        final h0.c f69149r0;

        /* renamed from: s0  reason: collision with root package name */
        U f69150s0;

        /* renamed from: t0  reason: collision with root package name */
        io.reactivex.disposables.b f69151t0;

        /* renamed from: u0  reason: collision with root package name */
        io.reactivex.disposables.b f69152u0;

        /* renamed from: v0  reason: collision with root package name */
        long f69153v0;

        /* renamed from: w0  reason: collision with root package name */
        long f69154w0;

        a(io.reactivex.g0<? super U> g0Var, Callable<U> callable, long j4, TimeUnit timeUnit, int i2, boolean z3, h0.c cVar) {
            super(g0Var, new MpscLinkedQueue());
            this.K = callable;
            this.f69145n0 = j4;
            this.f69146o0 = timeUnit;
            this.f69147p0 = i2;
            this.f69148q0 = z3;
            this.f69149r0 = cVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.H) {
                return;
            }
            this.H = true;
            this.f69152u0.dispose();
            this.f69149r0.dispose();
            synchronized (this) {
                this.f69150s0 = null;
            }
        }

        @Override // io.reactivex.internal.observers.k, io.reactivex.internal.util.j
        /* renamed from: i */
        public void f(io.reactivex.g0<? super U> g0Var, U u3) {
            g0Var.onNext(u3);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.H;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            U u3;
            this.f69149r0.dispose();
            synchronized (this) {
                u3 = this.f69150s0;
                this.f69150s0 = null;
            }
            this.G.offer(u3);
            this.I = true;
            if (b()) {
                io.reactivex.internal.util.n.d(this.G, this.F, false, this, this);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            synchronized (this) {
                this.f69150s0 = null;
            }
            this.F.onError(th);
            this.f69149r0.dispose();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            synchronized (this) {
                U u3 = this.f69150s0;
                if (u3 == null) {
                    return;
                }
                u3.add(t3);
                if (u3.size() < this.f69147p0) {
                    return;
                }
                this.f69150s0 = null;
                this.f69153v0++;
                if (this.f69148q0) {
                    this.f69151t0.dispose();
                }
                h(u3, false, this);
                try {
                    U u4 = (U) io.reactivex.internal.functions.a.g(this.K.call(), "The buffer supplied is null");
                    synchronized (this) {
                        this.f69150s0 = u4;
                        this.f69154w0++;
                    }
                    if (this.f69148q0) {
                        h0.c cVar = this.f69149r0;
                        long j4 = this.f69145n0;
                        this.f69151t0 = cVar.d(this, j4, j4, this.f69146o0);
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.F.onError(th);
                    dispose();
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69152u0, bVar)) {
                this.f69152u0 = bVar;
                try {
                    this.f69150s0 = (U) io.reactivex.internal.functions.a.g(this.K.call(), "The buffer supplied is null");
                    this.F.onSubscribe(this);
                    h0.c cVar = this.f69149r0;
                    long j4 = this.f69145n0;
                    this.f69151t0 = cVar.d(this, j4, j4, this.f69146o0);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    bVar.dispose();
                    EmptyDisposable.error(th, this.F);
                    this.f69149r0.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u3 = (U) io.reactivex.internal.functions.a.g(this.K.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    U u4 = this.f69150s0;
                    if (u4 != null && this.f69153v0 == this.f69154w0) {
                        this.f69150s0 = u3;
                        h(u4, false, this);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                this.F.onError(th);
            }
        }
    }

    /* compiled from: ObservableBufferTimed.java */
    /* loaded from: classes5.dex */
    static final class b<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.k<T, U, U> implements Runnable, io.reactivex.disposables.b {
        final Callable<U> K;

        /* renamed from: n0  reason: collision with root package name */
        final long f69155n0;

        /* renamed from: o0  reason: collision with root package name */
        final TimeUnit f69156o0;

        /* renamed from: p0  reason: collision with root package name */
        final io.reactivex.h0 f69157p0;

        /* renamed from: q0  reason: collision with root package name */
        io.reactivex.disposables.b f69158q0;

        /* renamed from: r0  reason: collision with root package name */
        U f69159r0;

        /* renamed from: s0  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f69160s0;

        b(io.reactivex.g0<? super U> g0Var, Callable<U> callable, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(g0Var, new MpscLinkedQueue());
            this.f69160s0 = new AtomicReference<>();
            this.K = callable;
            this.f69155n0 = j4;
            this.f69156o0 = timeUnit;
            this.f69157p0 = h0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f69160s0);
            this.f69158q0.dispose();
        }

        @Override // io.reactivex.internal.observers.k, io.reactivex.internal.util.j
        /* renamed from: i */
        public void f(io.reactivex.g0<? super U> g0Var, U u3) {
            this.F.onNext(u3);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69160s0.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            U u3;
            synchronized (this) {
                u3 = this.f69159r0;
                this.f69159r0 = null;
            }
            if (u3 != null) {
                this.G.offer(u3);
                this.I = true;
                if (b()) {
                    io.reactivex.internal.util.n.d(this.G, this.F, false, null, this);
                }
            }
            DisposableHelper.dispose(this.f69160s0);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            synchronized (this) {
                this.f69159r0 = null;
            }
            this.F.onError(th);
            DisposableHelper.dispose(this.f69160s0);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            synchronized (this) {
                U u3 = this.f69159r0;
                if (u3 == null) {
                    return;
                }
                u3.add(t3);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69158q0, bVar)) {
                this.f69158q0 = bVar;
                try {
                    this.f69159r0 = (U) io.reactivex.internal.functions.a.g(this.K.call(), "The buffer supplied is null");
                    this.F.onSubscribe(this);
                    if (this.H) {
                        return;
                    }
                    io.reactivex.h0 h0Var = this.f69157p0;
                    long j4 = this.f69155n0;
                    io.reactivex.disposables.b g4 = h0Var.g(this, j4, j4, this.f69156o0);
                    if (this.f69160s0.compareAndSet(null, g4)) {
                        return;
                    }
                    g4.dispose();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    dispose();
                    EmptyDisposable.error(th, this.F);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            U u3;
            try {
                U u4 = (U) io.reactivex.internal.functions.a.g(this.K.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    u3 = this.f69159r0;
                    if (u3 != null) {
                        this.f69159r0 = u4;
                    }
                }
                if (u3 == null) {
                    DisposableHelper.dispose(this.f69160s0);
                } else {
                    g(u3, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.F.onError(th);
                dispose();
            }
        }
    }

    /* compiled from: ObservableBufferTimed.java */
    /* loaded from: classes5.dex */
    static final class c<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.k<T, U, U> implements Runnable, io.reactivex.disposables.b {
        final Callable<U> K;

        /* renamed from: n0  reason: collision with root package name */
        final long f69161n0;

        /* renamed from: o0  reason: collision with root package name */
        final long f69162o0;

        /* renamed from: p0  reason: collision with root package name */
        final TimeUnit f69163p0;

        /* renamed from: q0  reason: collision with root package name */
        final h0.c f69164q0;

        /* renamed from: r0  reason: collision with root package name */
        final List<U> f69165r0;

        /* renamed from: s0  reason: collision with root package name */
        io.reactivex.disposables.b f69166s0;

        /* compiled from: ObservableBufferTimed.java */
        /* loaded from: classes5.dex */
        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f69167a;

            a(U u3) {
                this.f69167a = u3;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.f69165r0.remove(this.f69167a);
                }
                c cVar = c.this;
                cVar.h(this.f69167a, false, cVar.f69164q0);
            }
        }

        /* compiled from: ObservableBufferTimed.java */
        /* loaded from: classes5.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f69169a;

            b(U u3) {
                this.f69169a = u3;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.f69165r0.remove(this.f69169a);
                }
                c cVar = c.this;
                cVar.h(this.f69169a, false, cVar.f69164q0);
            }
        }

        c(io.reactivex.g0<? super U> g0Var, Callable<U> callable, long j4, long j5, TimeUnit timeUnit, h0.c cVar) {
            super(g0Var, new MpscLinkedQueue());
            this.K = callable;
            this.f69161n0 = j4;
            this.f69162o0 = j5;
            this.f69163p0 = timeUnit;
            this.f69164q0 = cVar;
            this.f69165r0 = new LinkedList();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.H) {
                return;
            }
            this.H = true;
            l();
            this.f69166s0.dispose();
            this.f69164q0.dispose();
        }

        @Override // io.reactivex.internal.observers.k, io.reactivex.internal.util.j
        /* renamed from: i */
        public void f(io.reactivex.g0<? super U> g0Var, U u3) {
            g0Var.onNext(u3);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.H;
        }

        void l() {
            synchronized (this) {
                this.f69165r0.clear();
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.f69165r0);
                this.f69165r0.clear();
            }
            for (Collection collection : arrayList) {
                this.G.offer(collection);
            }
            this.I = true;
            if (b()) {
                io.reactivex.internal.util.n.d(this.G, this.F, false, this.f69164q0, this);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.I = true;
            l();
            this.F.onError(th);
            this.f69164q0.dispose();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            synchronized (this) {
                for (U u3 : this.f69165r0) {
                    u3.add(t3);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69166s0, bVar)) {
                this.f69166s0 = bVar;
                try {
                    Collection collection = (Collection) io.reactivex.internal.functions.a.g(this.K.call(), "The buffer supplied is null");
                    this.f69165r0.add(collection);
                    this.F.onSubscribe(this);
                    h0.c cVar = this.f69164q0;
                    long j4 = this.f69162o0;
                    cVar.d(this, j4, j4, this.f69163p0);
                    this.f69164q0.c(new b(collection), this.f69161n0, this.f69163p0);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    bVar.dispose();
                    EmptyDisposable.error(th, this.F);
                    this.f69164q0.dispose();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (this.H) {
                return;
            }
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.a.g(this.K.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    if (this.H) {
                        return;
                    }
                    this.f69165r0.add(collection);
                    this.f69164q0.c(new a(collection), this.f69161n0, this.f69163p0);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.F.onError(th);
                dispose();
            }
        }
    }

    public m(io.reactivex.e0<T> e0Var, long j4, long j5, TimeUnit timeUnit, io.reactivex.h0 h0Var, Callable<U> callable, int i2, boolean z3) {
        super(e0Var);
        this.f69138b = j4;
        this.f69139c = j5;
        this.f69140d = timeUnit;
        this.f69141e = h0Var;
        this.f69142f = callable;
        this.f69143g = i2;
        this.f69144h = z3;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super U> g0Var) {
        if (this.f69138b == this.f69139c && this.f69143g == Integer.MAX_VALUE) {
            this.f68961a.a(new b(new io.reactivex.observers.l(g0Var), this.f69142f, this.f69138b, this.f69140d, this.f69141e));
            return;
        }
        h0.c c4 = this.f69141e.c();
        if (this.f69138b == this.f69139c) {
            this.f68961a.a(new a(new io.reactivex.observers.l(g0Var), this.f69142f, this.f69138b, this.f69140d, this.f69143g, this.f69144h, c4));
        } else {
            this.f68961a.a(new c(new io.reactivex.observers.l(g0Var), this.f69142f, this.f69138b, this.f69139c, this.f69140d, c4));
        }
    }
}
