package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.subjects.UnicastSubject;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableGroupJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.observable.a<TLeft, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends TRight> f68397b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> f68398c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> f68399d;

    /* renamed from: e  reason: collision with root package name */
    final w2.c<? super TLeft, ? super io.reactivex.z<TRight>, ? extends R> f68400e;

    /* loaded from: classes5.dex */
    static final class GroupJoinDisposable<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements io.reactivex.disposables.b, a {

        /* renamed from: n  reason: collision with root package name */
        static final Integer f68401n = 1;

        /* renamed from: o  reason: collision with root package name */
        static final Integer f68402o = 2;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f68403p = 3;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f68404q = 4;
        private static final long serialVersionUID = -6071216598687999801L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68405a;

        /* renamed from: g  reason: collision with root package name */
        final w2.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> f68411g;

        /* renamed from: h  reason: collision with root package name */
        final w2.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> f68412h;

        /* renamed from: i  reason: collision with root package name */
        final w2.c<? super TLeft, ? super io.reactivex.z<TRight>, ? extends R> f68413i;

        /* renamed from: k  reason: collision with root package name */
        int f68415k;

        /* renamed from: l  reason: collision with root package name */
        int f68416l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f68417m;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.a f68407c = new io.reactivex.disposables.a();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f68406b = new io.reactivex.internal.queue.a<>(io.reactivex.z.S());

        /* renamed from: d  reason: collision with root package name */
        final Map<Integer, UnicastSubject<TRight>> f68408d = new LinkedHashMap();

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TRight> f68409e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<Throwable> f68410f = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f68414j = new AtomicInteger(2);

        GroupJoinDisposable(io.reactivex.g0<? super R> g0Var, w2.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> oVar, w2.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> oVar2, w2.c<? super TLeft, ? super io.reactivex.z<TRight>, ? extends R> cVar) {
            this.f68405a = g0Var;
            this.f68411g = oVar;
            this.f68412h = oVar2;
            this.f68413i = cVar;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.a
        public void a(Throwable th) {
            if (ExceptionHelper.a(this.f68410f, th)) {
                this.f68414j.decrementAndGet();
                g();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.a
        public void b(boolean z3, Object obj) {
            synchronized (this) {
                this.f68406b.offer(z3 ? f68401n : f68402o, obj);
            }
            g();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.a
        public void c(Throwable th) {
            if (ExceptionHelper.a(this.f68410f, th)) {
                g();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.a
        public void d(boolean z3, LeftRightEndObserver leftRightEndObserver) {
            synchronized (this) {
                this.f68406b.offer(z3 ? f68403p : f68404q, leftRightEndObserver);
            }
            g();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68417m) {
                return;
            }
            this.f68417m = true;
            f();
            if (getAndIncrement() == 0) {
                this.f68406b.clear();
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.a
        public void e(LeftRightObserver leftRightObserver) {
            this.f68407c.delete(leftRightObserver);
            this.f68414j.decrementAndGet();
            g();
        }

        void f() {
            this.f68407c.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.a<?> aVar = this.f68406b;
            io.reactivex.g0<? super R> g0Var = this.f68405a;
            int i2 = 1;
            while (!this.f68417m) {
                if (this.f68410f.get() != null) {
                    aVar.clear();
                    f();
                    h(g0Var);
                    return;
                }
                boolean z3 = this.f68414j.get() == 0;
                Integer num = (Integer) aVar.poll();
                boolean z4 = num == null;
                if (z3 && z4) {
                    for (UnicastSubject<TRight> unicastSubject : this.f68408d.values()) {
                        unicastSubject.onComplete();
                    }
                    this.f68408d.clear();
                    this.f68409e.clear();
                    this.f68407c.dispose();
                    g0Var.onComplete();
                    return;
                } else if (z4) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    Object poll = aVar.poll();
                    if (num == f68401n) {
                        UnicastSubject<TRight> k8 = UnicastSubject.k8();
                        int i4 = this.f68415k;
                        this.f68415k = i4 + 1;
                        this.f68408d.put(Integer.valueOf(i4), k8);
                        try {
                            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68411g.apply(poll), "The leftEnd returned a null ObservableSource");
                            LeftRightEndObserver leftRightEndObserver = new LeftRightEndObserver(this, true, i4);
                            this.f68407c.b(leftRightEndObserver);
                            e0Var.a(leftRightEndObserver);
                            if (this.f68410f.get() != null) {
                                aVar.clear();
                                f();
                                h(g0Var);
                                return;
                            }
                            try {
                                g0Var.onNext((Object) io.reactivex.internal.functions.a.g(this.f68413i.apply(poll, k8), "The resultSelector returned a null value"));
                                for (TRight tright : this.f68409e.values()) {
                                    k8.onNext(tright);
                                }
                            } catch (Throwable th) {
                                i(th, g0Var, aVar);
                                return;
                            }
                        } catch (Throwable th2) {
                            i(th2, g0Var, aVar);
                            return;
                        }
                    } else if (num == f68402o) {
                        int i5 = this.f68416l;
                        this.f68416l = i5 + 1;
                        this.f68409e.put(Integer.valueOf(i5), poll);
                        try {
                            io.reactivex.e0 e0Var2 = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68412h.apply(poll), "The rightEnd returned a null ObservableSource");
                            LeftRightEndObserver leftRightEndObserver2 = new LeftRightEndObserver(this, false, i5);
                            this.f68407c.b(leftRightEndObserver2);
                            e0Var2.a(leftRightEndObserver2);
                            if (this.f68410f.get() != null) {
                                aVar.clear();
                                f();
                                h(g0Var);
                                return;
                            }
                            for (UnicastSubject<TRight> unicastSubject2 : this.f68408d.values()) {
                                unicastSubject2.onNext(poll);
                            }
                        } catch (Throwable th3) {
                            i(th3, g0Var, aVar);
                            return;
                        }
                    } else if (num == f68403p) {
                        LeftRightEndObserver leftRightEndObserver3 = (LeftRightEndObserver) poll;
                        UnicastSubject<TRight> remove = this.f68408d.remove(Integer.valueOf(leftRightEndObserver3.f68420c));
                        this.f68407c.a(leftRightEndObserver3);
                        if (remove != null) {
                            remove.onComplete();
                        }
                    } else if (num == f68404q) {
                        LeftRightEndObserver leftRightEndObserver4 = (LeftRightEndObserver) poll;
                        this.f68409e.remove(Integer.valueOf(leftRightEndObserver4.f68420c));
                        this.f68407c.a(leftRightEndObserver4);
                    }
                }
            }
            aVar.clear();
        }

        void h(io.reactivex.g0<?> g0Var) {
            Throwable c4 = ExceptionHelper.c(this.f68410f);
            for (UnicastSubject<TRight> unicastSubject : this.f68408d.values()) {
                unicastSubject.onError(c4);
            }
            this.f68408d.clear();
            this.f68409e.clear();
            g0Var.onError(c4);
        }

        void i(Throwable th, io.reactivex.g0<?> g0Var, io.reactivex.internal.queue.a<?> aVar) {
            io.reactivex.exceptions.a.b(th);
            ExceptionHelper.a(this.f68410f, th);
            aVar.clear();
            f();
            h(g0Var);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68417m;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class LeftRightEndObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<Object>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final a f68418a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f68419b;

        /* renamed from: c  reason: collision with root package name */
        final int f68420c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public LeftRightEndObserver(a aVar, boolean z3, int i2) {
            this.f68418a = aVar;
            this.f68419b = z3;
            this.f68420c = i2;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68418a.d(this.f68419b, this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68418a.c(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            if (DisposableHelper.dispose(this)) {
                this.f68418a.d(this.f68419b, this);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    /* loaded from: classes5.dex */
    static final class LeftRightObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<Object>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final a f68421a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f68422b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public LeftRightObserver(a aVar, boolean z3) {
            this.f68421a = aVar;
            this.f68422b = z3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68421a.e(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68421a.a(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            this.f68421a.b(this.f68422b, obj);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a {
        void a(Throwable th);

        void b(boolean z3, Object obj);

        void c(Throwable th);

        void d(boolean z3, LeftRightEndObserver leftRightEndObserver);

        void e(LeftRightObserver leftRightObserver);
    }

    public ObservableGroupJoin(io.reactivex.e0<TLeft> e0Var, io.reactivex.e0<? extends TRight> e0Var2, w2.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> oVar, w2.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> oVar2, w2.c<? super TLeft, ? super io.reactivex.z<TRight>, ? extends R> cVar) {
        super(e0Var);
        this.f68397b = e0Var2;
        this.f68398c = oVar;
        this.f68399d = oVar2;
        this.f68400e = cVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super R> g0Var) {
        GroupJoinDisposable groupJoinDisposable = new GroupJoinDisposable(g0Var, this.f68398c, this.f68399d, this.f68400e);
        g0Var.onSubscribe(groupJoinDisposable);
        LeftRightObserver leftRightObserver = new LeftRightObserver(groupJoinDisposable, true);
        groupJoinDisposable.f68407c.b(leftRightObserver);
        LeftRightObserver leftRightObserver2 = new LeftRightObserver(groupJoinDisposable, false);
        groupJoinDisposable.f68407c.b(leftRightObserver2);
        this.f68961a.a(leftRightObserver);
        this.f68397b.a(leftRightObserver2);
    }
}
