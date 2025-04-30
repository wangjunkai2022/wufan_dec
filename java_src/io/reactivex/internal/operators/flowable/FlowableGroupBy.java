package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EmptyComponent;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableGroupBy<T, K, V> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.flowables.b<K, V>> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends K> f66501c;

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super T, ? extends V> f66502d;

    /* renamed from: e  reason: collision with root package name */
    final int f66503e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f66504f;

    /* renamed from: g  reason: collision with root package name */
    final w2.o<? super w2.g<Object>, ? extends Map<K, Object>> f66505g;

    /* loaded from: classes5.dex */
    public static final class GroupBySubscriber<T, K, V> extends BasicIntQueueSubscription<io.reactivex.flowables.b<K, V>> implements io.reactivex.o<T> {

        /* renamed from: q  reason: collision with root package name */
        static final Object f66506q = new Object();
        private static final long serialVersionUID = -3688291656102519502L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super io.reactivex.flowables.b<K, V>> f66507a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends K> f66508b;

        /* renamed from: c  reason: collision with root package name */
        final w2.o<? super T, ? extends V> f66509c;

        /* renamed from: d  reason: collision with root package name */
        final int f66510d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f66511e;

        /* renamed from: f  reason: collision with root package name */
        final Map<Object, b<K, V>> f66512f;

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.internal.queue.a<io.reactivex.flowables.b<K, V>> f66513g;

        /* renamed from: h  reason: collision with root package name */
        final Queue<b<K, V>> f66514h;

        /* renamed from: i  reason: collision with root package name */
        l3.d f66515i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicBoolean f66516j = new AtomicBoolean();

        /* renamed from: k  reason: collision with root package name */
        final AtomicLong f66517k = new AtomicLong();

        /* renamed from: l  reason: collision with root package name */
        final AtomicInteger f66518l = new AtomicInteger(1);

        /* renamed from: m  reason: collision with root package name */
        Throwable f66519m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f66520n;

        /* renamed from: o  reason: collision with root package name */
        boolean f66521o;

        /* renamed from: p  reason: collision with root package name */
        boolean f66522p;

        public GroupBySubscriber(l3.c<? super io.reactivex.flowables.b<K, V>> cVar, w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, int i2, boolean z3, Map<Object, b<K, V>> map, Queue<b<K, V>> queue) {
            this.f66507a = cVar;
            this.f66508b = oVar;
            this.f66509c = oVar2;
            this.f66510d = i2;
            this.f66511e = z3;
            this.f66512f = map;
            this.f66514h = queue;
            this.f66513g = new io.reactivex.internal.queue.a<>(i2);
        }

        private void f() {
            if (this.f66514h != null) {
                int i2 = 0;
                while (true) {
                    b<K, V> poll = this.f66514h.poll();
                    if (poll == null) {
                        break;
                    }
                    poll.onComplete();
                    i2++;
                }
                if (i2 != 0) {
                    this.f66518l.addAndGet(-i2);
                }
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f66522p) {
                g();
            } else {
                h();
            }
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66516j.compareAndSet(false, true)) {
                f();
                if (this.f66518l.decrementAndGet() == 0) {
                    this.f66515i.cancel();
                }
            }
        }

        @Override // x2.o
        public void clear() {
            this.f66513g.clear();
        }

        public void d(K k4) {
            if (k4 == null) {
                k4 = (K) f66506q;
            }
            this.f66512f.remove(k4);
            if (this.f66518l.decrementAndGet() == 0) {
                this.f66515i.cancel();
                if (getAndIncrement() == 0) {
                    this.f66513g.clear();
                }
            }
        }

        boolean e(boolean z3, boolean z4, l3.c<?> cVar, io.reactivex.internal.queue.a<?> aVar) {
            if (this.f66516j.get()) {
                aVar.clear();
                return true;
            } else if (this.f66511e) {
                if (z3 && z4) {
                    Throwable th = this.f66519m;
                    if (th != null) {
                        cVar.onError(th);
                    } else {
                        cVar.onComplete();
                    }
                    return true;
                }
                return false;
            } else if (z3) {
                Throwable th2 = this.f66519m;
                if (th2 != null) {
                    aVar.clear();
                    cVar.onError(th2);
                    return true;
                } else if (z4) {
                    cVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void g() {
            Throwable th;
            io.reactivex.internal.queue.a<io.reactivex.flowables.b<K, V>> aVar = this.f66513g;
            l3.c<? super io.reactivex.flowables.b<K, V>> cVar = this.f66507a;
            int i2 = 1;
            while (!this.f66516j.get()) {
                boolean z3 = this.f66520n;
                if (z3 && !this.f66511e && (th = this.f66519m) != null) {
                    aVar.clear();
                    cVar.onError(th);
                    return;
                }
                cVar.onNext(null);
                if (z3) {
                    Throwable th2 = this.f66519m;
                    if (th2 != null) {
                        cVar.onError(th2);
                        return;
                    } else {
                        cVar.onComplete();
                        return;
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
            aVar.clear();
        }

        void h() {
            io.reactivex.internal.queue.a<io.reactivex.flowables.b<K, V>> aVar = this.f66513g;
            l3.c<? super io.reactivex.flowables.b<K, V>> cVar = this.f66507a;
            int i2 = 1;
            do {
                long j4 = this.f66517k.get();
                long j5 = 0;
                while (j5 != j4) {
                    boolean z3 = this.f66520n;
                    io.reactivex.flowables.b<K, V> poll = aVar.poll();
                    boolean z4 = poll == null;
                    if (e(z3, z4, cVar, aVar)) {
                        return;
                    }
                    if (z4) {
                        break;
                    }
                    cVar.onNext(poll);
                    j5++;
                }
                if (j5 == j4 && e(this.f66520n, aVar.isEmpty(), cVar, aVar)) {
                    return;
                }
                if (j5 != 0) {
                    if (j4 != Long.MAX_VALUE) {
                        this.f66517k.addAndGet(-j5);
                    }
                    this.f66515i.request(j5);
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // x2.o
        @Nullable
        /* renamed from: i */
        public io.reactivex.flowables.b<K, V> poll() {
            return this.f66513g.poll();
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f66513g.isEmpty();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66521o) {
                return;
            }
            for (b<K, V> bVar : this.f66512f.values()) {
                bVar.onComplete();
            }
            this.f66512f.clear();
            Queue<b<K, V>> queue = this.f66514h;
            if (queue != null) {
                queue.clear();
            }
            this.f66521o = true;
            this.f66520n = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66521o) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66521o = true;
            for (b<K, V> bVar : this.f66512f.values()) {
                bVar.onError(th);
            }
            this.f66512f.clear();
            Queue<b<K, V>> queue = this.f66514h;
            if (queue != null) {
                queue.clear();
            }
            this.f66519m = th;
            this.f66520n = true;
            b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66521o) {
                return;
            }
            io.reactivex.internal.queue.a<io.reactivex.flowables.b<K, V>> aVar = this.f66513g;
            try {
                K apply = this.f66508b.apply(t3);
                boolean z3 = false;
                Object obj = apply != null ? apply : f66506q;
                b<K, V> bVar = this.f66512f.get(obj);
                if (bVar == null) {
                    if (this.f66516j.get()) {
                        return;
                    }
                    bVar = b.K8(apply, this.f66510d, this, this.f66511e);
                    this.f66512f.put(obj, bVar);
                    this.f66518l.getAndIncrement();
                    z3 = true;
                }
                try {
                    bVar.onNext(io.reactivex.internal.functions.a.g(this.f66509c.apply(t3), "The valueSelector returned null"));
                    f();
                    if (z3) {
                        aVar.offer(bVar);
                        b();
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f66515i.cancel();
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f66515i.cancel();
                onError(th2);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66515i, dVar)) {
                this.f66515i = dVar;
                this.f66507a.onSubscribe(this);
                dVar.request(this.f66510d);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66517k, j4);
                b();
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                this.f66522p = true;
                return 2;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class State<T, K> extends BasicIntQueueSubscription<T> implements l3.b<T> {
        private static final long serialVersionUID = -3852313036005250360L;

        /* renamed from: a  reason: collision with root package name */
        final K f66523a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.a<T> f66524b;

        /* renamed from: c  reason: collision with root package name */
        final GroupBySubscriber<?, K, T> f66525c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f66526d;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f66528f;

        /* renamed from: g  reason: collision with root package name */
        Throwable f66529g;

        /* renamed from: k  reason: collision with root package name */
        boolean f66533k;

        /* renamed from: l  reason: collision with root package name */
        int f66534l;

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f66527e = new AtomicLong();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f66530h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<l3.c<? super T>> f66531i = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicBoolean f66532j = new AtomicBoolean();

        State(int i2, GroupBySubscriber<?, K, T> groupBySubscriber, K k4, boolean z3) {
            this.f66524b = new io.reactivex.internal.queue.a<>(i2);
            this.f66525c = groupBySubscriber;
            this.f66523a = k4;
            this.f66526d = z3;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f66533k) {
                e();
            } else {
                f();
            }
        }

        @Override // l3.b
        public void c(l3.c<? super T> cVar) {
            if (this.f66532j.compareAndSet(false, true)) {
                cVar.onSubscribe(this);
                this.f66531i.lazySet(cVar);
                b();
                return;
            }
            EmptySubscription.error(new IllegalStateException("Only one Subscriber allowed!"), cVar);
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66530h.compareAndSet(false, true)) {
                this.f66525c.d(this.f66523a);
            }
        }

        @Override // x2.o
        public void clear() {
            this.f66524b.clear();
        }

        boolean d(boolean z3, boolean z4, l3.c<? super T> cVar, boolean z5) {
            if (this.f66530h.get()) {
                this.f66524b.clear();
                return true;
            } else if (z3) {
                if (z5) {
                    if (z4) {
                        Throwable th = this.f66529g;
                        if (th != null) {
                            cVar.onError(th);
                        } else {
                            cVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f66529g;
                if (th2 != null) {
                    this.f66524b.clear();
                    cVar.onError(th2);
                    return true;
                } else if (z4) {
                    cVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void e() {
            Throwable th;
            io.reactivex.internal.queue.a<T> aVar = this.f66524b;
            l3.c<? super T> cVar = this.f66531i.get();
            int i2 = 1;
            while (true) {
                if (cVar != null) {
                    if (this.f66530h.get()) {
                        aVar.clear();
                        return;
                    }
                    boolean z3 = this.f66528f;
                    if (z3 && !this.f66526d && (th = this.f66529g) != null) {
                        aVar.clear();
                        cVar.onError(th);
                        return;
                    }
                    cVar.onNext(null);
                    if (z3) {
                        Throwable th2 = this.f66529g;
                        if (th2 != null) {
                            cVar.onError(th2);
                            return;
                        } else {
                            cVar.onComplete();
                            return;
                        }
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
                if (cVar == null) {
                    cVar = this.f66531i.get();
                }
            }
        }

        void f() {
            io.reactivex.internal.queue.a<T> aVar = this.f66524b;
            boolean z3 = this.f66526d;
            l3.c<? super T> cVar = this.f66531i.get();
            int i2 = 1;
            while (true) {
                if (cVar != null) {
                    long j4 = this.f66527e.get();
                    long j5 = 0;
                    while (j5 != j4) {
                        boolean z4 = this.f66528f;
                        Object obj = (T) aVar.poll();
                        boolean z5 = obj == null;
                        if (d(z4, z5, cVar, z3)) {
                            return;
                        }
                        if (z5) {
                            break;
                        }
                        cVar.onNext(obj);
                        j5++;
                    }
                    if (j5 == j4 && d(this.f66528f, aVar.isEmpty(), cVar, z3)) {
                        return;
                    }
                    if (j5 != 0) {
                        if (j4 != Long.MAX_VALUE) {
                            this.f66527e.addAndGet(-j5);
                        }
                        this.f66525c.f66515i.request(j5);
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
                if (cVar == null) {
                    cVar = this.f66531i.get();
                }
            }
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f66524b.isEmpty();
        }

        public void onComplete() {
            this.f66528f = true;
            b();
        }

        public void onError(Throwable th) {
            this.f66529g = th;
            this.f66528f = true;
            b();
        }

        public void onNext(T t3) {
            this.f66524b.offer(t3);
            b();
        }

        @Override // x2.o
        @Nullable
        public T poll() {
            T poll = this.f66524b.poll();
            if (poll != null) {
                this.f66534l++;
                return poll;
            }
            int i2 = this.f66534l;
            if (i2 != 0) {
                this.f66534l = 0;
                this.f66525c.f66515i.request(i2);
                return null;
            }
            return null;
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66527e, j4);
                b();
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                this.f66533k = true;
                return 2;
            }
            return 0;
        }
    }

    /* loaded from: classes5.dex */
    static final class a<K, V> implements w2.g<b<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final Queue<b<K, V>> f66535a;

        a(Queue<b<K, V>> queue) {
            this.f66535a = queue;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(b<K, V> bVar) {
            this.f66535a.offer(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b<K, T> extends io.reactivex.flowables.b<K, T> {

        /* renamed from: c  reason: collision with root package name */
        final State<T, K> f66536c;

        protected b(K k4, State<T, K> state) {
            super(k4);
            this.f66536c = state;
        }

        public static <T, K> b<K, T> K8(K k4, int i2, GroupBySubscriber<?, K, T> groupBySubscriber, boolean z3) {
            return new b<>(k4, new State(i2, groupBySubscriber, k4, z3));
        }

        @Override // io.reactivex.j
        protected void h6(l3.c<? super T> cVar) {
            this.f66536c.c(cVar);
        }

        public void onComplete() {
            this.f66536c.onComplete();
        }

        public void onError(Throwable th) {
            this.f66536c.onError(th);
        }

        public void onNext(T t3) {
            this.f66536c.onNext(t3);
        }
    }

    public FlowableGroupBy(io.reactivex.j<T> jVar, w2.o<? super T, ? extends K> oVar, w2.o<? super T, ? extends V> oVar2, int i2, boolean z3, w2.o<? super w2.g<Object>, ? extends Map<K, Object>> oVar3) {
        super(jVar);
        this.f66501c = oVar;
        this.f66502d = oVar2;
        this.f66503e = i2;
        this.f66504f = z3;
        this.f66505g = oVar3;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super io.reactivex.flowables.b<K, V>> cVar) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        Map<K, Object> apply;
        try {
            if (this.f66505g == null) {
                concurrentLinkedQueue = null;
                apply = new ConcurrentHashMap<>();
            } else {
                concurrentLinkedQueue = new ConcurrentLinkedQueue();
                apply = this.f66505g.apply(new a(concurrentLinkedQueue));
            }
            this.f67288b.g6(new GroupBySubscriber(cVar, this.f66501c, this.f66502d, this.f66503e, this.f66504f, apply, concurrentLinkedQueue));
        } catch (Exception e4) {
            io.reactivex.exceptions.a.b(e4);
            cVar.onSubscribe(EmptyComponent.INSTANCE);
            cVar.onError(e4);
        }
    }
}
