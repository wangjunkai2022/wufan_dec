package io.reactivex.internal.operators.observable;

import io.reactivex.internal.operators.observable.ObservableGroupJoin;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends a<TLeft, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends TRight> f68464b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> f68465c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> f68466d;

    /* renamed from: e  reason: collision with root package name */
    final w2.c<? super TLeft, ? super TRight, ? extends R> f68467e;

    /* loaded from: classes5.dex */
    static final class JoinDisposable<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements io.reactivex.disposables.b, ObservableGroupJoin.a {

        /* renamed from: n  reason: collision with root package name */
        static final Integer f68468n = 1;

        /* renamed from: o  reason: collision with root package name */
        static final Integer f68469o = 2;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f68470p = 3;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f68471q = 4;
        private static final long serialVersionUID = -6071216598687999801L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68472a;

        /* renamed from: g  reason: collision with root package name */
        final w2.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> f68478g;

        /* renamed from: h  reason: collision with root package name */
        final w2.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> f68479h;

        /* renamed from: i  reason: collision with root package name */
        final w2.c<? super TLeft, ? super TRight, ? extends R> f68480i;

        /* renamed from: k  reason: collision with root package name */
        int f68482k;

        /* renamed from: l  reason: collision with root package name */
        int f68483l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f68484m;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.a f68474c = new io.reactivex.disposables.a();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f68473b = new io.reactivex.internal.queue.a<>(io.reactivex.z.S());

        /* renamed from: d  reason: collision with root package name */
        final Map<Integer, TLeft> f68475d = new LinkedHashMap();

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TRight> f68476e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<Throwable> f68477f = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f68481j = new AtomicInteger(2);

        JoinDisposable(io.reactivex.g0<? super R> g0Var, w2.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> oVar, w2.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> oVar2, w2.c<? super TLeft, ? super TRight, ? extends R> cVar) {
            this.f68472a = g0Var;
            this.f68478g = oVar;
            this.f68479h = oVar2;
            this.f68480i = cVar;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.a
        public void a(Throwable th) {
            if (ExceptionHelper.a(this.f68477f, th)) {
                this.f68481j.decrementAndGet();
                g();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.a
        public void b(boolean z3, Object obj) {
            synchronized (this) {
                this.f68473b.offer(z3 ? f68468n : f68469o, obj);
            }
            g();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.a
        public void c(Throwable th) {
            if (ExceptionHelper.a(this.f68477f, th)) {
                g();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.a
        public void d(boolean z3, ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver) {
            synchronized (this) {
                this.f68473b.offer(z3 ? f68470p : f68471q, leftRightEndObserver);
            }
            g();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68484m) {
                return;
            }
            this.f68484m = true;
            f();
            if (getAndIncrement() == 0) {
                this.f68473b.clear();
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.a
        public void e(ObservableGroupJoin.LeftRightObserver leftRightObserver) {
            this.f68474c.delete(leftRightObserver);
            this.f68481j.decrementAndGet();
            g();
        }

        void f() {
            this.f68474c.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.a<?> aVar = this.f68473b;
            io.reactivex.g0<? super R> g0Var = this.f68472a;
            int i2 = 1;
            while (!this.f68484m) {
                if (this.f68477f.get() != null) {
                    aVar.clear();
                    f();
                    h(g0Var);
                    return;
                }
                boolean z3 = this.f68481j.get() == 0;
                Integer num = (Integer) aVar.poll();
                boolean z4 = num == null;
                if (z3 && z4) {
                    this.f68475d.clear();
                    this.f68476e.clear();
                    this.f68474c.dispose();
                    g0Var.onComplete();
                    return;
                } else if (z4) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    Object poll = aVar.poll();
                    if (num == f68468n) {
                        int i4 = this.f68482k;
                        this.f68482k = i4 + 1;
                        this.f68475d.put(Integer.valueOf(i4), poll);
                        try {
                            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68478g.apply(poll), "The leftEnd returned a null ObservableSource");
                            ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver = new ObservableGroupJoin.LeftRightEndObserver(this, true, i4);
                            this.f68474c.b(leftRightEndObserver);
                            e0Var.a(leftRightEndObserver);
                            if (this.f68477f.get() != null) {
                                aVar.clear();
                                f();
                                h(g0Var);
                                return;
                            }
                            for (TRight tright : this.f68476e.values()) {
                                try {
                                    g0Var.onNext((Object) io.reactivex.internal.functions.a.g(this.f68480i.apply(poll, tright), "The resultSelector returned a null value"));
                                } catch (Throwable th) {
                                    i(th, g0Var, aVar);
                                    return;
                                }
                            }
                            continue;
                        } catch (Throwable th2) {
                            i(th2, g0Var, aVar);
                            return;
                        }
                    } else if (num == f68469o) {
                        int i5 = this.f68483l;
                        this.f68483l = i5 + 1;
                        this.f68476e.put(Integer.valueOf(i5), poll);
                        try {
                            io.reactivex.e0 e0Var2 = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68479h.apply(poll), "The rightEnd returned a null ObservableSource");
                            ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver2 = new ObservableGroupJoin.LeftRightEndObserver(this, false, i5);
                            this.f68474c.b(leftRightEndObserver2);
                            e0Var2.a(leftRightEndObserver2);
                            if (this.f68477f.get() != null) {
                                aVar.clear();
                                f();
                                h(g0Var);
                                return;
                            }
                            for (TLeft tleft : this.f68475d.values()) {
                                try {
                                    g0Var.onNext((Object) io.reactivex.internal.functions.a.g(this.f68480i.apply(tleft, poll), "The resultSelector returned a null value"));
                                } catch (Throwable th3) {
                                    i(th3, g0Var, aVar);
                                    return;
                                }
                            }
                            continue;
                        } catch (Throwable th4) {
                            i(th4, g0Var, aVar);
                            return;
                        }
                    } else if (num == f68470p) {
                        ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver3 = (ObservableGroupJoin.LeftRightEndObserver) poll;
                        this.f68475d.remove(Integer.valueOf(leftRightEndObserver3.f68420c));
                        this.f68474c.a(leftRightEndObserver3);
                    } else {
                        ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver4 = (ObservableGroupJoin.LeftRightEndObserver) poll;
                        this.f68476e.remove(Integer.valueOf(leftRightEndObserver4.f68420c));
                        this.f68474c.a(leftRightEndObserver4);
                    }
                }
            }
            aVar.clear();
        }

        void h(io.reactivex.g0<?> g0Var) {
            Throwable c4 = ExceptionHelper.c(this.f68477f);
            this.f68475d.clear();
            this.f68476e.clear();
            g0Var.onError(c4);
        }

        void i(Throwable th, io.reactivex.g0<?> g0Var, io.reactivex.internal.queue.a<?> aVar) {
            io.reactivex.exceptions.a.b(th);
            ExceptionHelper.a(this.f68477f, th);
            aVar.clear();
            f();
            h(g0Var);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68484m;
        }
    }

    public ObservableJoin(io.reactivex.e0<TLeft> e0Var, io.reactivex.e0<? extends TRight> e0Var2, w2.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> oVar, w2.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> oVar2, w2.c<? super TLeft, ? super TRight, ? extends R> cVar) {
        super(e0Var);
        this.f68464b = e0Var2;
        this.f68465c = oVar;
        this.f68466d = oVar2;
        this.f68467e = cVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super R> g0Var) {
        JoinDisposable joinDisposable = new JoinDisposable(g0Var, this.f68465c, this.f68466d, this.f68467e);
        g0Var.onSubscribe(joinDisposable);
        ObservableGroupJoin.LeftRightObserver leftRightObserver = new ObservableGroupJoin.LeftRightObserver(joinDisposable, true);
        joinDisposable.f68474c.b(leftRightObserver);
        ObservableGroupJoin.LeftRightObserver leftRightObserver2 = new ObservableGroupJoin.LeftRightObserver(joinDisposable, false);
        joinDisposable.f68474c.b(leftRightObserver2);
        this.f68961a.a(leftRightObserver);
        this.f68464b.a(leftRightObserver2);
    }
}
