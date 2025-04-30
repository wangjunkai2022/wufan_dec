package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableGroupBy<T, K, V> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.observables.b<K, V>> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends K> f68374b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends V> f68375c;

    /* renamed from: d  reason: collision with root package name */
    final int f68376d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f68377e;

    /* loaded from: classes5.dex */
    public static final class GroupByObserver<T, K, V> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: i  reason: collision with root package name */
        static final Object f68378i = new Object();
        private static final long serialVersionUID = -3688291656102519502L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.observables.b<K, V>> f68379a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends K> f68380b;

        /* renamed from: c  reason: collision with root package name */
        final w2.o<? super T, ? extends V> f68381c;

        /* renamed from: d  reason: collision with root package name */
        final int f68382d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f68383e;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.b f68385g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f68386h = new AtomicBoolean();

        /* renamed from: f  reason: collision with root package name */
        final Map<Object, a<K, V>> f68384f = new ConcurrentHashMap();

        public GroupByObserver(io.reactivex.g0<? super io.reactivex.observables.b<K, V>> g0Var, w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, int i2, boolean z3) {
            this.f68379a = g0Var;
            this.f68380b = oVar;
            this.f68381c = oVar2;
            this.f68382d = i2;
            this.f68383e = z3;
            lazySet(1);
        }

        public void a(K k4) {
            if (k4 == null) {
                k4 = (K) f68378i;
            }
            this.f68384f.remove(k4);
            if (decrementAndGet() == 0) {
                this.f68385g.dispose();
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68386h.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.f68385g.dispose();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68386h.get();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            ArrayList<a> arrayList = new ArrayList(this.f68384f.values());
            this.f68384f.clear();
            for (a aVar : arrayList) {
                aVar.onComplete();
            }
            this.f68379a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            ArrayList<a> arrayList = new ArrayList(this.f68384f.values());
            this.f68384f.clear();
            for (a aVar : arrayList) {
                aVar.onError(th);
            }
            this.f68379a.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.g0
        public void onNext(T t3) {
            try {
                K apply = this.f68380b.apply(t3);
                Object obj = apply != null ? apply : f68378i;
                a<K, V> aVar = this.f68384f.get(obj);
                if (aVar == null) {
                    if (this.f68386h.get()) {
                        return;
                    }
                    aVar = a.g8(apply, this.f68382d, this, this.f68383e);
                    this.f68384f.put(obj, aVar);
                    getAndIncrement();
                    this.f68379a.onNext(aVar);
                }
                try {
                    aVar.onNext(io.reactivex.internal.functions.a.g(this.f68381c.apply(t3), "The value supplied is null"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f68385g.dispose();
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f68385g.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68385g, bVar)) {
                this.f68385g = bVar;
                this.f68379a.onSubscribe(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class State<T, K> extends AtomicInteger implements io.reactivex.disposables.b, io.reactivex.e0<T> {
        private static final long serialVersionUID = -3852313036005250360L;

        /* renamed from: a  reason: collision with root package name */
        final K f68387a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.a<T> f68388b;

        /* renamed from: c  reason: collision with root package name */
        final GroupByObserver<?, K, T> f68389c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f68390d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f68391e;

        /* renamed from: f  reason: collision with root package name */
        Throwable f68392f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f68393g = new AtomicBoolean();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f68394h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<io.reactivex.g0<? super T>> f68395i = new AtomicReference<>();

        State(int i2, GroupByObserver<?, K, T> groupByObserver, K k4, boolean z3) {
            this.f68388b = new io.reactivex.internal.queue.a<>(i2);
            this.f68389c = groupByObserver;
            this.f68387a = k4;
            this.f68390d = z3;
        }

        @Override // io.reactivex.e0
        public void a(io.reactivex.g0<? super T> g0Var) {
            if (this.f68394h.compareAndSet(false, true)) {
                g0Var.onSubscribe(this);
                this.f68395i.lazySet(g0Var);
                if (this.f68393g.get()) {
                    this.f68395i.lazySet(null);
                    return;
                } else {
                    c();
                    return;
                }
            }
            EmptyDisposable.error(new IllegalStateException("Only one Observer allowed!"), g0Var);
        }

        boolean b(boolean z3, boolean z4, io.reactivex.g0<? super T> g0Var, boolean z5) {
            if (this.f68393g.get()) {
                this.f68388b.clear();
                this.f68389c.a(this.f68387a);
                this.f68395i.lazySet(null);
                return true;
            } else if (z3) {
                if (z5) {
                    if (z4) {
                        Throwable th = this.f68392f;
                        this.f68395i.lazySet(null);
                        if (th != null) {
                            g0Var.onError(th);
                        } else {
                            g0Var.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f68392f;
                if (th2 != null) {
                    this.f68388b.clear();
                    this.f68395i.lazySet(null);
                    g0Var.onError(th2);
                    return true;
                } else if (z4) {
                    this.f68395i.lazySet(null);
                    g0Var.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.a<T> aVar = this.f68388b;
            boolean z3 = this.f68390d;
            io.reactivex.g0<? super T> g0Var = this.f68395i.get();
            int i2 = 1;
            while (true) {
                if (g0Var != null) {
                    while (true) {
                        boolean z4 = this.f68391e;
                        Object obj = (T) aVar.poll();
                        boolean z5 = obj == null;
                        if (b(z4, z5, g0Var, z3)) {
                            return;
                        }
                        if (z5) {
                            break;
                        }
                        g0Var.onNext(obj);
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
                if (g0Var == null) {
                    g0Var = this.f68395i.get();
                }
            }
        }

        public void d() {
            this.f68391e = true;
            c();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68393g.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.f68395i.lazySet(null);
                this.f68389c.a(this.f68387a);
            }
        }

        public void e(Throwable th) {
            this.f68392f = th;
            this.f68391e = true;
            c();
        }

        public void f(T t3) {
            this.f68388b.offer(t3);
            c();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68393g.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<K, T> extends io.reactivex.observables.b<K, T> {

        /* renamed from: b  reason: collision with root package name */
        final State<T, K> f68396b;

        protected a(K k4, State<T, K> state) {
            super(k4);
            this.f68396b = state;
        }

        public static <T, K> a<K, T> g8(K k4, int i2, GroupByObserver<?, K, T> groupByObserver, boolean z3) {
            return new a<>(k4, new State(i2, groupByObserver, k4, z3));
        }

        @Override // io.reactivex.z
        protected void F5(io.reactivex.g0<? super T> g0Var) {
            this.f68396b.a(g0Var);
        }

        public void onComplete() {
            this.f68396b.d();
        }

        public void onError(Throwable th) {
            this.f68396b.e(th);
        }

        public void onNext(T t3) {
            this.f68396b.f(t3);
        }
    }

    public ObservableGroupBy(io.reactivex.e0<T> e0Var, w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, int i2, boolean z3) {
        super(e0Var);
        this.f68374b = oVar;
        this.f68375c = oVar2;
        this.f68376d = i2;
        this.f68377e = z3;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super io.reactivex.observables.b<K, V>> g0Var) {
        this.f68961a.a(new GroupByObserver(g0Var, this.f68374b, this.f68375c, this.f68376d, this.f68377e));
    }
}
