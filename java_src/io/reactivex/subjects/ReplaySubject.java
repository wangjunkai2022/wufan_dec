package io.reactivex.subjects;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.g0;
import io.reactivex.h0;
import io.reactivex.internal.util.NotificationLite;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ReplaySubject<T> extends c<T> {

    /* renamed from: d  reason: collision with root package name */
    static final ReplayDisposable[] f70319d = new ReplayDisposable[0];

    /* renamed from: e  reason: collision with root package name */
    static final ReplayDisposable[] f70320e = new ReplayDisposable[0];

    /* renamed from: f  reason: collision with root package name */
    private static final Object[] f70321f = new Object[0];

    /* renamed from: a  reason: collision with root package name */
    final a<T> f70322a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<ReplayDisposable<T>[]> f70323b = new AtomicReference<>(f70319d);

    /* renamed from: c  reason: collision with root package name */
    boolean f70324c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class Node<T> extends AtomicReference<Node<T>> {
        private static final long serialVersionUID = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f70325a;

        Node(T t3) {
            this.f70325a = t3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ReplayDisposable<T> extends AtomicInteger implements io.reactivex.disposables.b {
        private static final long serialVersionUID = 466549804534799122L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super T> f70326a;

        /* renamed from: b  reason: collision with root package name */
        final ReplaySubject<T> f70327b;

        /* renamed from: c  reason: collision with root package name */
        Object f70328c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f70329d;

        ReplayDisposable(g0<? super T> g0Var, ReplaySubject<T> replaySubject) {
            this.f70326a = g0Var;
            this.f70327b = replaySubject;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f70329d) {
                return;
            }
            this.f70329d = true;
            this.f70327b.x8(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f70329d;
        }
    }

    /* loaded from: classes5.dex */
    static final class SizeAndTimeBoundReplayBuffer<T> extends AtomicReference<Object> implements a<T> {
        private static final long serialVersionUID = -8056260896137901749L;

        /* renamed from: a  reason: collision with root package name */
        final int f70330a;

        /* renamed from: b  reason: collision with root package name */
        final long f70331b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f70332c;

        /* renamed from: d  reason: collision with root package name */
        final h0 f70333d;

        /* renamed from: e  reason: collision with root package name */
        int f70334e;

        /* renamed from: f  reason: collision with root package name */
        volatile TimedNode<Object> f70335f;

        /* renamed from: g  reason: collision with root package name */
        TimedNode<Object> f70336g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f70337h;

        SizeAndTimeBoundReplayBuffer(int i2, long j4, TimeUnit timeUnit, h0 h0Var) {
            this.f70330a = io.reactivex.internal.functions.a.h(i2, "maxSize");
            this.f70331b = io.reactivex.internal.functions.a.i(j4, "maxAge");
            this.f70332c = (TimeUnit) io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
            this.f70333d = (h0) io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
            TimedNode<Object> timedNode = new TimedNode<>(null, 0L);
            this.f70336g = timedNode;
            this.f70335f = timedNode;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void a(Object obj) {
            TimedNode<Object> timedNode = new TimedNode<>(obj, Long.MAX_VALUE);
            TimedNode<Object> timedNode2 = this.f70336g;
            this.f70336g = timedNode;
            this.f70334e++;
            timedNode2.lazySet(timedNode);
            h();
            this.f70337h = true;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void add(T t3) {
            TimedNode<Object> timedNode = new TimedNode<>(t3, this.f70333d.d(this.f70332c));
            TimedNode<Object> timedNode2 = this.f70336g;
            this.f70336g = timedNode;
            this.f70334e++;
            timedNode2.set(timedNode);
            g();
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void b() {
            TimedNode<Object> timedNode = this.f70335f;
            if (timedNode.f70343a != null) {
                TimedNode<Object> timedNode2 = new TimedNode<>(null, 0L);
                timedNode2.lazySet(timedNode.get());
                this.f70335f = timedNode2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.subjects.ReplaySubject.a
        public T[] c(T[] tArr) {
            TimedNode<T> e4 = e();
            int f4 = f(e4);
            if (f4 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
            } else {
                if (tArr.length < f4) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), f4));
                }
                for (int i2 = 0; i2 != f4; i2++) {
                    e4 = e4.get();
                    tArr[i2] = e4.f70343a;
                }
                if (tArr.length > f4) {
                    tArr[f4] = null;
                }
            }
            return tArr;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void d(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() != 0) {
                return;
            }
            g0<? super T> g0Var = replayDisposable.f70326a;
            TimedNode<T> timedNode = (TimedNode) replayDisposable.f70328c;
            if (timedNode == null) {
                timedNode = e();
            }
            int i2 = 1;
            while (true) {
                timedNode = timedNode;
                if (replayDisposable.f70329d) {
                    replayDisposable.f70328c = null;
                    return;
                }
                while (!replayDisposable.f70329d) {
                    TimedNode<T> timedNode2 = timedNode.get();
                    if (timedNode2 == null) {
                        if (timedNode.get() == null) {
                            replayDisposable.f70328c = timedNode;
                            i2 = replayDisposable.addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        }
                    } else {
                        Object obj = (T) timedNode2.f70343a;
                        if (this.f70337h && timedNode2.get() == null) {
                            if (NotificationLite.isComplete(obj)) {
                                g0Var.onComplete();
                            } else {
                                g0Var.onError(NotificationLite.getError(obj));
                            }
                            replayDisposable.f70328c = null;
                            replayDisposable.f70329d = true;
                            return;
                        }
                        g0Var.onNext(obj);
                        timedNode = timedNode2;
                    }
                }
                replayDisposable.f70328c = null;
                return;
            }
        }

        TimedNode<Object> e() {
            TimedNode<Object> timedNode;
            TimedNode<Object> timedNode2 = this.f70335f;
            long d4 = this.f70333d.d(this.f70332c) - this.f70331b;
            TimedNode<T> timedNode3 = timedNode2.get();
            while (true) {
                TimedNode<T> timedNode4 = timedNode3;
                timedNode = timedNode2;
                timedNode2 = timedNode4;
                if (timedNode2 == null || timedNode2.f70344b > d4) {
                    break;
                }
                timedNode3 = timedNode2.get();
            }
            return timedNode;
        }

        int f(TimedNode<Object> timedNode) {
            int i2 = 0;
            while (i2 != Integer.MAX_VALUE) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    Object obj = timedNode.f70343a;
                    return (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? i2 - 1 : i2;
                }
                i2++;
                timedNode = timedNode2;
            }
            return i2;
        }

        void g() {
            int i2 = this.f70334e;
            if (i2 > this.f70330a) {
                this.f70334e = i2 - 1;
                this.f70335f = this.f70335f.get();
            }
            long d4 = this.f70333d.d(this.f70332c) - this.f70331b;
            TimedNode<Object> timedNode = this.f70335f;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    this.f70335f = timedNode;
                    return;
                } else if (timedNode2.f70344b > d4) {
                    this.f70335f = timedNode;
                    return;
                } else {
                    timedNode = timedNode2;
                }
            }
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        @Nullable
        public T getValue() {
            T t3;
            TimedNode<Object> timedNode = this.f70335f;
            TimedNode<Object> timedNode2 = null;
            while (true) {
                TimedNode<T> timedNode3 = timedNode.get();
                if (timedNode3 == null) {
                    break;
                }
                timedNode2 = timedNode;
                timedNode = timedNode3;
            }
            if (timedNode.f70344b >= this.f70333d.d(this.f70332c) - this.f70331b && (t3 = (T) timedNode.f70343a) != null) {
                return (NotificationLite.isComplete(t3) || NotificationLite.isError(t3)) ? (T) timedNode2.f70343a : t3;
            }
            return null;
        }

        void h() {
            long d4 = this.f70333d.d(this.f70332c) - this.f70331b;
            TimedNode<Object> timedNode = this.f70335f;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2.get() == null) {
                    if (timedNode.f70343a != null) {
                        TimedNode<Object> timedNode3 = new TimedNode<>(null, 0L);
                        timedNode3.lazySet(timedNode.get());
                        this.f70335f = timedNode3;
                        return;
                    }
                    this.f70335f = timedNode;
                    return;
                } else if (timedNode2.f70344b > d4) {
                    if (timedNode.f70343a != null) {
                        TimedNode<Object> timedNode4 = new TimedNode<>(null, 0L);
                        timedNode4.lazySet(timedNode.get());
                        this.f70335f = timedNode4;
                        return;
                    }
                    this.f70335f = timedNode;
                    return;
                } else {
                    timedNode = timedNode2;
                }
            }
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public int size() {
            return f(e());
        }
    }

    /* loaded from: classes5.dex */
    static final class SizeBoundReplayBuffer<T> extends AtomicReference<Object> implements a<T> {
        private static final long serialVersionUID = 1107649250281456395L;

        /* renamed from: a  reason: collision with root package name */
        final int f70338a;

        /* renamed from: b  reason: collision with root package name */
        int f70339b;

        /* renamed from: c  reason: collision with root package name */
        volatile Node<Object> f70340c;

        /* renamed from: d  reason: collision with root package name */
        Node<Object> f70341d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f70342e;

        SizeBoundReplayBuffer(int i2) {
            this.f70338a = io.reactivex.internal.functions.a.h(i2, "maxSize");
            Node<Object> node = new Node<>(null);
            this.f70341d = node;
            this.f70340c = node;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void a(Object obj) {
            Node<Object> node = new Node<>(obj);
            Node<Object> node2 = this.f70341d;
            this.f70341d = node;
            this.f70339b++;
            node2.lazySet(node);
            b();
            this.f70342e = true;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void add(T t3) {
            Node<Object> node = new Node<>(t3);
            Node<Object> node2 = this.f70341d;
            this.f70341d = node;
            this.f70339b++;
            node2.set(node);
            e();
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void b() {
            Node<Object> node = this.f70340c;
            if (node.f70325a != null) {
                Node<Object> node2 = new Node<>(null);
                node2.lazySet(node.get());
                this.f70340c = node2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.subjects.ReplaySubject.a
        public T[] c(T[] tArr) {
            Node<T> node = this.f70340c;
            int size = size();
            if (size == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
            } else {
                if (tArr.length < size) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
                }
                for (int i2 = 0; i2 != size; i2++) {
                    node = node.get();
                    tArr[i2] = node.f70325a;
                }
                if (tArr.length > size) {
                    tArr[size] = null;
                }
            }
            return tArr;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void d(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() != 0) {
                return;
            }
            g0<? super T> g0Var = replayDisposable.f70326a;
            Node<T> node = (Node) replayDisposable.f70328c;
            if (node == null) {
                node = this.f70340c;
            }
            int i2 = 1;
            while (!replayDisposable.f70329d) {
                Node<T> node2 = node.get();
                if (node2 == null) {
                    if (node.get() != null) {
                        continue;
                    } else {
                        replayDisposable.f70328c = node;
                        i2 = replayDisposable.addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    }
                } else {
                    Object obj = (T) node2.f70325a;
                    if (this.f70342e && node2.get() == null) {
                        if (NotificationLite.isComplete(obj)) {
                            g0Var.onComplete();
                        } else {
                            g0Var.onError(NotificationLite.getError(obj));
                        }
                        replayDisposable.f70328c = null;
                        replayDisposable.f70329d = true;
                        return;
                    }
                    g0Var.onNext(obj);
                    node = node2;
                }
            }
            replayDisposable.f70328c = null;
        }

        void e() {
            int i2 = this.f70339b;
            if (i2 > this.f70338a) {
                this.f70339b = i2 - 1;
                this.f70340c = this.f70340c.get();
            }
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        @Nullable
        public T getValue() {
            Node<Object> node = this.f70340c;
            Node<Object> node2 = null;
            while (true) {
                Node<T> node3 = node.get();
                if (node3 == null) {
                    break;
                }
                node2 = node;
                node = node3;
            }
            T t3 = (T) node.f70325a;
            if (t3 == null) {
                return null;
            }
            return (NotificationLite.isComplete(t3) || NotificationLite.isError(t3)) ? (T) node2.f70325a : t3;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public int size() {
            Node<Object> node = this.f70340c;
            int i2 = 0;
            while (i2 != Integer.MAX_VALUE) {
                Node<T> node2 = node.get();
                if (node2 == null) {
                    Object obj = node.f70325a;
                    return (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? i2 - 1 : i2;
                }
                i2++;
                node = node2;
            }
            return i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
        private static final long serialVersionUID = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f70343a;

        /* renamed from: b  reason: collision with root package name */
        final long f70344b;

        TimedNode(T t3, long j4) {
            this.f70343a = t3;
            this.f70344b = j4;
        }
    }

    /* loaded from: classes5.dex */
    static final class UnboundedReplayBuffer<T> extends AtomicReference<Object> implements a<T> {
        private static final long serialVersionUID = -733876083048047795L;

        /* renamed from: a  reason: collision with root package name */
        final List<Object> f70345a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f70346b;

        /* renamed from: c  reason: collision with root package name */
        volatile int f70347c;

        UnboundedReplayBuffer(int i2) {
            this.f70345a = new ArrayList(io.reactivex.internal.functions.a.h(i2, "capacityHint"));
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void a(Object obj) {
            this.f70345a.add(obj);
            b();
            this.f70347c++;
            this.f70346b = true;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void add(T t3) {
            this.f70345a.add(t3);
            this.f70347c++;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.subjects.ReplaySubject.a
        public T[] c(T[] tArr) {
            int i2 = this.f70347c;
            if (i2 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            List<Object> list = this.f70345a;
            Object obj = list.get(i2 - 1);
            if ((NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) && i2 - 1 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            if (tArr.length < i2) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i2));
            }
            for (int i4 = 0; i4 < i2; i4++) {
                tArr[i4] = list.get(i4);
            }
            if (tArr.length > i2) {
                tArr[i2] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public void d(ReplayDisposable<T> replayDisposable) {
            int i2;
            if (replayDisposable.getAndIncrement() != 0) {
                return;
            }
            List<Object> list = this.f70345a;
            g0<? super T> g0Var = replayDisposable.f70326a;
            Integer num = (Integer) replayDisposable.f70328c;
            int i4 = 0;
            if (num != null) {
                i4 = num.intValue();
            } else {
                replayDisposable.f70328c = 0;
            }
            int i5 = 1;
            while (!replayDisposable.f70329d) {
                int i6 = this.f70347c;
                while (i6 != i4) {
                    if (replayDisposable.f70329d) {
                        replayDisposable.f70328c = null;
                        return;
                    }
                    Object obj = list.get(i4);
                    if (this.f70346b && (i2 = i4 + 1) == i6 && i2 == (i6 = this.f70347c)) {
                        if (NotificationLite.isComplete(obj)) {
                            g0Var.onComplete();
                        } else {
                            g0Var.onError(NotificationLite.getError(obj));
                        }
                        replayDisposable.f70328c = null;
                        replayDisposable.f70329d = true;
                        return;
                    }
                    g0Var.onNext(obj);
                    i4++;
                }
                if (i4 == this.f70347c) {
                    replayDisposable.f70328c = Integer.valueOf(i4);
                    i5 = replayDisposable.addAndGet(-i5);
                    if (i5 == 0) {
                        return;
                    }
                }
            }
            replayDisposable.f70328c = null;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        @Nullable
        public T getValue() {
            int i2 = this.f70347c;
            if (i2 != 0) {
                List<Object> list = this.f70345a;
                T t3 = (T) list.get(i2 - 1);
                if (NotificationLite.isComplete(t3) || NotificationLite.isError(t3)) {
                    if (i2 == 1) {
                        return null;
                    }
                    return (T) list.get(i2 - 2);
                }
                return t3;
            }
            return null;
        }

        @Override // io.reactivex.subjects.ReplaySubject.a
        public int size() {
            int i2 = this.f70347c;
            if (i2 != 0) {
                int i4 = i2 - 1;
                Object obj = this.f70345a.get(i4);
                return (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? i4 : i2;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a<T> {
        void a(Object obj);

        void add(T t3);

        void b();

        T[] c(T[] tArr);

        boolean compareAndSet(Object obj, Object obj2);

        void d(ReplayDisposable<T> replayDisposable);

        Object get();

        @Nullable
        T getValue();

        int size();
    }

    ReplaySubject(a<T> aVar) {
        this.f70322a = aVar;
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplaySubject<T> m8() {
        return new ReplaySubject<>(new UnboundedReplayBuffer(16));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplaySubject<T> n8(int i2) {
        return new ReplaySubject<>(new UnboundedReplayBuffer(i2));
    }

    static <T> ReplaySubject<T> o8() {
        return new ReplaySubject<>(new SizeBoundReplayBuffer(Integer.MAX_VALUE));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplaySubject<T> p8(int i2) {
        return new ReplaySubject<>(new SizeBoundReplayBuffer(i2));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplaySubject<T> q8(long j4, TimeUnit timeUnit, h0 h0Var) {
        return new ReplaySubject<>(new SizeAndTimeBoundReplayBuffer(Integer.MAX_VALUE, j4, timeUnit, h0Var));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplaySubject<T> r8(long j4, TimeUnit timeUnit, h0 h0Var, int i2) {
        return new ReplaySubject<>(new SizeAndTimeBoundReplayBuffer(i2, j4, timeUnit, h0Var));
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super T> g0Var) {
        ReplayDisposable<T> replayDisposable = new ReplayDisposable<>(g0Var, this);
        g0Var.onSubscribe(replayDisposable);
        if (replayDisposable.f70329d) {
            return;
        }
        if (k8(replayDisposable) && replayDisposable.f70329d) {
            x8(replayDisposable);
        } else {
            this.f70322a.d(replayDisposable);
        }
    }

    @Override // io.reactivex.subjects.c
    @Nullable
    public Throwable f8() {
        Object obj = this.f70322a.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Override // io.reactivex.subjects.c
    public boolean g8() {
        return NotificationLite.isComplete(this.f70322a.get());
    }

    @Override // io.reactivex.subjects.c
    public boolean h8() {
        return this.f70323b.get().length != 0;
    }

    @Override // io.reactivex.subjects.c
    public boolean i8() {
        return NotificationLite.isError(this.f70322a.get());
    }

    boolean k8(ReplayDisposable<T> replayDisposable) {
        ReplayDisposable<T>[] replayDisposableArr;
        ReplayDisposable<T>[] replayDisposableArr2;
        do {
            replayDisposableArr = this.f70323b.get();
            if (replayDisposableArr == f70320e) {
                return false;
            }
            int length = replayDisposableArr.length;
            replayDisposableArr2 = new ReplayDisposable[length + 1];
            System.arraycopy(replayDisposableArr, 0, replayDisposableArr2, 0, length);
            replayDisposableArr2[length] = replayDisposable;
        } while (!this.f70323b.compareAndSet(replayDisposableArr, replayDisposableArr2));
        return true;
    }

    public void l8() {
        this.f70322a.b();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f70324c) {
            return;
        }
        this.f70324c = true;
        Object complete = NotificationLite.complete();
        a<T> aVar = this.f70322a;
        aVar.a(complete);
        for (ReplayDisposable<T> replayDisposable : z8(complete)) {
            aVar.d(replayDisposable);
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70324c) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f70324c = true;
        Object error = NotificationLite.error(th);
        a<T> aVar = this.f70322a;
        aVar.a(error);
        for (ReplayDisposable<T> replayDisposable : z8(error)) {
            aVar.d(replayDisposable);
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70324c) {
            return;
        }
        a<T> aVar = this.f70322a;
        aVar.add(t3);
        for (ReplayDisposable<T> replayDisposable : this.f70323b.get()) {
            aVar.d(replayDisposable);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (this.f70324c) {
            bVar.dispose();
        }
    }

    @Nullable
    public T s8() {
        return this.f70322a.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] t8() {
        Object[] objArr = f70321f;
        Object[] u8 = u8(objArr);
        return u8 == objArr ? new Object[0] : u8;
    }

    public T[] u8(T[] tArr) {
        return this.f70322a.c(tArr);
    }

    public boolean v8() {
        return this.f70322a.size() != 0;
    }

    int w8() {
        return this.f70323b.get().length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void x8(ReplayDisposable<T> replayDisposable) {
        ReplayDisposable<T>[] replayDisposableArr;
        ReplayDisposable[] replayDisposableArr2;
        do {
            replayDisposableArr = this.f70323b.get();
            if (replayDisposableArr == f70320e || replayDisposableArr == f70319d) {
                return;
            }
            int length = replayDisposableArr.length;
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (replayDisposableArr[i4] == replayDisposable) {
                    i2 = i4;
                    break;
                } else {
                    i4++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (length == 1) {
                replayDisposableArr2 = f70319d;
            } else {
                ReplayDisposable[] replayDisposableArr3 = new ReplayDisposable[length - 1];
                System.arraycopy(replayDisposableArr, 0, replayDisposableArr3, 0, i2);
                System.arraycopy(replayDisposableArr, i2 + 1, replayDisposableArr3, i2, (length - i2) - 1);
                replayDisposableArr2 = replayDisposableArr3;
            }
        } while (!this.f70323b.compareAndSet(replayDisposableArr, replayDisposableArr2));
    }

    int y8() {
        return this.f70322a.size();
    }

    ReplayDisposable<T>[] z8(Object obj) {
        if (this.f70322a.compareAndSet(null, obj)) {
            return this.f70323b.getAndSet(f70320e);
        }
        return f70320e;
    }
}
