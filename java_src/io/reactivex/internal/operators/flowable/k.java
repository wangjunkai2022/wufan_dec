package io.reactivex.internal.operators.flowable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: FlowableBufferTimed.java */
/* loaded from: classes5.dex */
public final class k<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final long f67414c;

    /* renamed from: d  reason: collision with root package name */
    final long f67415d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f67416e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.h0 f67417f;

    /* renamed from: g  reason: collision with root package name */
    final Callable<U> f67418g;

    /* renamed from: h  reason: collision with root package name */
    final int f67419h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f67420i;

    /* compiled from: FlowableBufferTimed.java */
    /* loaded from: classes5.dex */
    static final class a<T, U extends Collection<? super T>> extends io.reactivex.internal.subscribers.h<T, U, U> implements l3.d, Runnable, io.reactivex.disposables.b {
        final Callable<U> C0;
        final long D0;
        final TimeUnit E0;
        final int F0;
        final boolean G0;
        final h0.c H0;
        U I0;
        io.reactivex.disposables.b J0;
        l3.d K0;
        long L0;
        long M0;

        a(l3.c<? super U> cVar, Callable<U> callable, long j4, TimeUnit timeUnit, int i2, boolean z3, h0.c cVar2) {
            super(cVar, new MpscLinkedQueue());
            this.C0 = callable;
            this.D0 = j4;
            this.E0 = timeUnit;
            this.F0 = i2;
            this.G0 = z3;
            this.H0 = cVar2;
        }

        @Override // l3.d
        public void cancel() {
            if (this.f70023z0) {
                return;
            }
            this.f70023z0 = true;
            dispose();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            synchronized (this) {
                this.I0 = null;
            }
            this.K0.cancel();
            this.H0.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.H0.isDisposed();
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.m
        /* renamed from: l */
        public boolean f(l3.c<? super U> cVar, U u3) {
            cVar.onNext(u3);
            return true;
        }

        @Override // l3.c
        public void onComplete() {
            U u3;
            synchronized (this) {
                u3 = this.I0;
                this.I0 = null;
            }
            this.f70022y0.offer(u3);
            this.A0 = true;
            if (b()) {
                io.reactivex.internal.util.n.e(this.f70022y0, this.f70021x0, false, this, this);
            }
            this.H0.dispose();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            synchronized (this) {
                this.I0 = null;
            }
            this.f70021x0.onError(th);
            this.H0.dispose();
        }

        @Override // l3.c
        public void onNext(T t3) {
            synchronized (this) {
                U u3 = this.I0;
                if (u3 == null) {
                    return;
                }
                u3.add(t3);
                if (u3.size() < this.F0) {
                    return;
                }
                this.I0 = null;
                this.L0++;
                if (this.G0) {
                    this.J0.dispose();
                }
                j(u3, false, this);
                try {
                    U u4 = (U) io.reactivex.internal.functions.a.g(this.C0.call(), "The supplied buffer is null");
                    synchronized (this) {
                        this.I0 = u4;
                        this.M0++;
                    }
                    if (this.G0) {
                        h0.c cVar = this.H0;
                        long j4 = this.D0;
                        this.J0 = cVar.d(this, j4, j4, this.E0);
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    this.f70021x0.onError(th);
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.K0, dVar)) {
                this.K0 = dVar;
                try {
                    this.I0 = (U) io.reactivex.internal.functions.a.g(this.C0.call(), "The supplied buffer is null");
                    this.f70021x0.onSubscribe(this);
                    h0.c cVar = this.H0;
                    long j4 = this.D0;
                    this.J0 = cVar.d(this, j4, j4, this.E0);
                    dVar.request(Long.MAX_VALUE);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.H0.dispose();
                    dVar.cancel();
                    EmptySubscription.error(th, this.f70021x0);
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            k(j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u3 = (U) io.reactivex.internal.functions.a.g(this.C0.call(), "The supplied buffer is null");
                synchronized (this) {
                    U u4 = this.I0;
                    if (u4 != null && this.L0 == this.M0) {
                        this.I0 = u3;
                        j(u4, false, this);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                this.f70021x0.onError(th);
            }
        }
    }

    /* compiled from: FlowableBufferTimed.java */
    /* loaded from: classes5.dex */
    static final class b<T, U extends Collection<? super T>> extends io.reactivex.internal.subscribers.h<T, U, U> implements l3.d, Runnable, io.reactivex.disposables.b {
        final Callable<U> C0;
        final long D0;
        final TimeUnit E0;
        final io.reactivex.h0 F0;
        l3.d G0;
        U H0;
        final AtomicReference<io.reactivex.disposables.b> I0;

        b(l3.c<? super U> cVar, Callable<U> callable, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(cVar, new MpscLinkedQueue());
            this.I0 = new AtomicReference<>();
            this.C0 = callable;
            this.D0 = j4;
            this.E0 = timeUnit;
            this.F0 = h0Var;
        }

        @Override // l3.d
        public void cancel() {
            this.f70023z0 = true;
            this.G0.cancel();
            DisposableHelper.dispose(this.I0);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.I0.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.m
        /* renamed from: l */
        public boolean f(l3.c<? super U> cVar, U u3) {
            this.f70021x0.onNext(u3);
            return true;
        }

        @Override // l3.c
        public void onComplete() {
            DisposableHelper.dispose(this.I0);
            synchronized (this) {
                U u3 = this.H0;
                if (u3 == null) {
                    return;
                }
                this.H0 = null;
                this.f70022y0.offer(u3);
                this.A0 = true;
                if (b()) {
                    io.reactivex.internal.util.n.e(this.f70022y0, this.f70021x0, false, null, this);
                }
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.I0);
            synchronized (this) {
                this.H0 = null;
            }
            this.f70021x0.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            synchronized (this) {
                U u3 = this.H0;
                if (u3 != null) {
                    u3.add(t3);
                }
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.G0, dVar)) {
                this.G0 = dVar;
                try {
                    this.H0 = (U) io.reactivex.internal.functions.a.g(this.C0.call(), "The supplied buffer is null");
                    this.f70021x0.onSubscribe(this);
                    if (this.f70023z0) {
                        return;
                    }
                    dVar.request(Long.MAX_VALUE);
                    io.reactivex.h0 h0Var = this.F0;
                    long j4 = this.D0;
                    io.reactivex.disposables.b g4 = h0Var.g(this, j4, j4, this.E0);
                    if (this.I0.compareAndSet(null, g4)) {
                        return;
                    }
                    g4.dispose();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    EmptySubscription.error(th, this.f70021x0);
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            k(j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u3 = (U) io.reactivex.internal.functions.a.g(this.C0.call(), "The supplied buffer is null");
                synchronized (this) {
                    U u4 = this.H0;
                    if (u4 == null) {
                        return;
                    }
                    this.H0 = u3;
                    i(u4, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                this.f70021x0.onError(th);
            }
        }
    }

    /* compiled from: FlowableBufferTimed.java */
    /* loaded from: classes5.dex */
    static final class c<T, U extends Collection<? super T>> extends io.reactivex.internal.subscribers.h<T, U, U> implements l3.d, Runnable {
        final Callable<U> C0;
        final long D0;
        final long E0;
        final TimeUnit F0;
        final h0.c G0;
        final List<U> H0;
        l3.d I0;

        /* compiled from: FlowableBufferTimed.java */
        /* loaded from: classes5.dex */
        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final U f67421a;

            a(U u3) {
                this.f67421a = u3;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this) {
                    c.this.H0.remove(this.f67421a);
                }
                c cVar = c.this;
                cVar.j(this.f67421a, false, cVar.G0);
            }
        }

        c(l3.c<? super U> cVar, Callable<U> callable, long j4, long j5, TimeUnit timeUnit, h0.c cVar2) {
            super(cVar, new MpscLinkedQueue());
            this.C0 = callable;
            this.D0 = j4;
            this.E0 = j5;
            this.F0 = timeUnit;
            this.G0 = cVar2;
            this.H0 = new LinkedList();
        }

        @Override // l3.d
        public void cancel() {
            this.f70023z0 = true;
            this.I0.cancel();
            this.G0.dispose();
            n();
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.m
        /* renamed from: l */
        public boolean f(l3.c<? super U> cVar, U u3) {
            cVar.onNext(u3);
            return true;
        }

        void n() {
            synchronized (this) {
                this.H0.clear();
            }
        }

        @Override // l3.c
        public void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.H0);
                this.H0.clear();
            }
            for (Collection collection : arrayList) {
                this.f70022y0.offer(collection);
            }
            this.A0 = true;
            if (b()) {
                io.reactivex.internal.util.n.e(this.f70022y0, this.f70021x0, false, this.G0, this);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.A0 = true;
            this.G0.dispose();
            n();
            this.f70021x0.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            synchronized (this) {
                for (U u3 : this.H0) {
                    u3.add(t3);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.I0, dVar)) {
                this.I0 = dVar;
                try {
                    Collection collection = (Collection) io.reactivex.internal.functions.a.g(this.C0.call(), "The supplied buffer is null");
                    this.H0.add(collection);
                    this.f70021x0.onSubscribe(this);
                    dVar.request(Long.MAX_VALUE);
                    h0.c cVar = this.G0;
                    long j4 = this.E0;
                    cVar.d(this, j4, j4, this.F0);
                    this.G0.c(new a(collection), this.D0, this.F0);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.G0.dispose();
                    dVar.cancel();
                    EmptySubscription.error(th, this.f70021x0);
                }
            }
        }

        @Override // l3.d
        public void request(long j4) {
            k(j4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (this.f70023z0) {
                return;
            }
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.a.g(this.C0.call(), "The supplied buffer is null");
                synchronized (this) {
                    if (this.f70023z0) {
                        return;
                    }
                    this.H0.add(collection);
                    this.G0.c(new a(collection), this.D0, this.F0);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                this.f70021x0.onError(th);
            }
        }
    }

    public k(io.reactivex.j<T> jVar, long j4, long j5, TimeUnit timeUnit, io.reactivex.h0 h0Var, Callable<U> callable, int i2, boolean z3) {
        super(jVar);
        this.f67414c = j4;
        this.f67415d = j5;
        this.f67416e = timeUnit;
        this.f67417f = h0Var;
        this.f67418g = callable;
        this.f67419h = i2;
        this.f67420i = z3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super U> cVar) {
        if (this.f67414c == this.f67415d && this.f67419h == Integer.MAX_VALUE) {
            this.f67288b.g6(new b(new io.reactivex.subscribers.e(cVar), this.f67418g, this.f67414c, this.f67416e, this.f67417f));
            return;
        }
        h0.c c4 = this.f67417f.c();
        if (this.f67414c == this.f67415d) {
            this.f67288b.g6(new a(new io.reactivex.subscribers.e(cVar), this.f67418g, this.f67414c, this.f67416e, this.f67419h, this.f67420i, c4));
        } else {
            this.f67288b.g6(new c(new io.reactivex.subscribers.e(cVar), this.f67418g, this.f67414c, this.f67415d, this.f67416e, c4));
        }
    }
}
