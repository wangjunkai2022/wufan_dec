package io.reactivex.processors;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.h0;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ReplayProcessor<T> extends io.reactivex.processors.a<T> {

    /* renamed from: e  reason: collision with root package name */
    private static final Object[] f70221e = new Object[0];

    /* renamed from: f  reason: collision with root package name */
    static final ReplaySubscription[] f70222f = new ReplaySubscription[0];

    /* renamed from: g  reason: collision with root package name */
    static final ReplaySubscription[] f70223g = new ReplaySubscription[0];

    /* renamed from: b  reason: collision with root package name */
    final a<T> f70224b;

    /* renamed from: c  reason: collision with root package name */
    boolean f70225c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<ReplaySubscription<T>[]> f70226d = new AtomicReference<>(f70222f);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class Node<T> extends AtomicReference<Node<T>> {
        private static final long serialVersionUID = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f70227a;

        Node(T t3) {
            this.f70227a = t3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ReplaySubscription<T> extends AtomicInteger implements l3.d {
        private static final long serialVersionUID = 466549804534799122L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f70228a;

        /* renamed from: b  reason: collision with root package name */
        final ReplayProcessor<T> f70229b;

        /* renamed from: c  reason: collision with root package name */
        Object f70230c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f70231d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f70232e;

        /* renamed from: f  reason: collision with root package name */
        long f70233f;

        ReplaySubscription(l3.c<? super T> cVar, ReplayProcessor<T> replayProcessor) {
            this.f70228a = cVar;
            this.f70229b = replayProcessor;
        }

        @Override // l3.d
        public void cancel() {
            if (this.f70232e) {
                return;
            }
            this.f70232e = true;
            this.f70229b.a9(this);
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f70231d, j4);
                this.f70229b.f70224b.d(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
        private static final long serialVersionUID = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f70234a;

        /* renamed from: b  reason: collision with root package name */
        final long f70235b;

        TimedNode(T t3, long j4) {
            this.f70234a = t3;
            this.f70235b = j4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a<T> {
        void a(T t3);

        void b();

        T[] c(T[] tArr);

        void complete();

        void d(ReplaySubscription<T> replaySubscription);

        void error(Throwable th);

        Throwable getError();

        @Nullable
        T getValue();

        boolean isDone();

        int size();
    }

    /* loaded from: classes5.dex */
    static final class b<T> implements a<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f70236a;

        /* renamed from: b  reason: collision with root package name */
        final long f70237b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f70238c;

        /* renamed from: d  reason: collision with root package name */
        final h0 f70239d;

        /* renamed from: e  reason: collision with root package name */
        int f70240e;

        /* renamed from: f  reason: collision with root package name */
        volatile TimedNode<T> f70241f;

        /* renamed from: g  reason: collision with root package name */
        TimedNode<T> f70242g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f70243h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f70244i;

        b(int i2, long j4, TimeUnit timeUnit, h0 h0Var) {
            this.f70236a = io.reactivex.internal.functions.a.h(i2, "maxSize");
            this.f70237b = io.reactivex.internal.functions.a.i(j4, "maxAge");
            this.f70238c = (TimeUnit) io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
            this.f70239d = (h0) io.reactivex.internal.functions.a.g(h0Var, "scheduler is null");
            TimedNode<T> timedNode = new TimedNode<>(null, 0L);
            this.f70242g = timedNode;
            this.f70241f = timedNode;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void a(T t3) {
            TimedNode<T> timedNode = new TimedNode<>(t3, this.f70239d.d(this.f70238c));
            TimedNode<T> timedNode2 = this.f70242g;
            this.f70242g = timedNode;
            this.f70240e++;
            timedNode2.set(timedNode);
            g();
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void b() {
            if (this.f70241f.f70234a != null) {
                TimedNode<T> timedNode = new TimedNode<>(null, 0L);
                timedNode.lazySet(this.f70241f.get());
                this.f70241f = timedNode;
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
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
                    tArr[i2] = e4.f70234a;
                }
                if (tArr.length > f4) {
                    tArr[f4] = null;
                }
            }
            return tArr;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void complete() {
            h();
            this.f70244i = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void d(ReplaySubscription<T> replaySubscription) {
            if (replaySubscription.getAndIncrement() != 0) {
                return;
            }
            l3.c<? super T> cVar = replaySubscription.f70228a;
            TimedNode<T> timedNode = (TimedNode) replaySubscription.f70230c;
            if (timedNode == null) {
                timedNode = e();
            }
            long j4 = replaySubscription.f70233f;
            int i2 = 1;
            do {
                long j5 = replaySubscription.f70231d.get();
                while (j4 != j5) {
                    if (replaySubscription.f70232e) {
                        replaySubscription.f70230c = null;
                        return;
                    }
                    boolean z3 = this.f70244i;
                    TimedNode<T> timedNode2 = timedNode.get();
                    boolean z4 = timedNode2 == null;
                    if (z3 && z4) {
                        replaySubscription.f70230c = null;
                        replaySubscription.f70232e = true;
                        Throwable th = this.f70243h;
                        if (th == null) {
                            cVar.onComplete();
                            return;
                        } else {
                            cVar.onError(th);
                            return;
                        }
                    } else if (z4) {
                        break;
                    } else {
                        cVar.onNext((T) timedNode2.f70234a);
                        j4++;
                        timedNode = timedNode2;
                    }
                }
                if (j4 == j5) {
                    if (replaySubscription.f70232e) {
                        replaySubscription.f70230c = null;
                        return;
                    } else if (this.f70244i && timedNode.get() == null) {
                        replaySubscription.f70230c = null;
                        replaySubscription.f70232e = true;
                        Throwable th2 = this.f70243h;
                        if (th2 == null) {
                            cVar.onComplete();
                            return;
                        } else {
                            cVar.onError(th2);
                            return;
                        }
                    }
                }
                replaySubscription.f70230c = timedNode;
                replaySubscription.f70233f = j4;
                i2 = replaySubscription.addAndGet(-i2);
            } while (i2 != 0);
        }

        TimedNode<T> e() {
            TimedNode<T> timedNode;
            TimedNode<T> timedNode2 = this.f70241f;
            long d4 = this.f70239d.d(this.f70238c) - this.f70237b;
            TimedNode<T> timedNode3 = timedNode2.get();
            while (true) {
                TimedNode<T> timedNode4 = timedNode3;
                timedNode = timedNode2;
                timedNode2 = timedNode4;
                if (timedNode2 == null || timedNode2.f70235b > d4) {
                    break;
                }
                timedNode3 = timedNode2.get();
            }
            return timedNode;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void error(Throwable th) {
            h();
            this.f70243h = th;
            this.f70244i = true;
        }

        int f(TimedNode<T> timedNode) {
            int i2 = 0;
            while (i2 != Integer.MAX_VALUE && (timedNode = timedNode.get()) != null) {
                i2++;
            }
            return i2;
        }

        void g() {
            int i2 = this.f70240e;
            if (i2 > this.f70236a) {
                this.f70240e = i2 - 1;
                this.f70241f = this.f70241f.get();
            }
            long d4 = this.f70239d.d(this.f70238c) - this.f70237b;
            TimedNode<T> timedNode = this.f70241f;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    this.f70241f = timedNode;
                    return;
                } else if (timedNode2.f70235b > d4) {
                    this.f70241f = timedNode;
                    return;
                } else {
                    timedNode = timedNode2;
                }
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public Throwable getError() {
            return this.f70243h;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        @Nullable
        public T getValue() {
            TimedNode<T> timedNode = this.f70241f;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    break;
                }
                timedNode = timedNode2;
            }
            if (timedNode.f70235b < this.f70239d.d(this.f70238c) - this.f70237b) {
                return null;
            }
            return timedNode.f70234a;
        }

        void h() {
            long d4 = this.f70239d.d(this.f70238c) - this.f70237b;
            TimedNode<T> timedNode = this.f70241f;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    if (timedNode.f70234a != null) {
                        this.f70241f = new TimedNode<>(null, 0L);
                        return;
                    } else {
                        this.f70241f = timedNode;
                        return;
                    }
                } else if (timedNode2.f70235b > d4) {
                    if (timedNode.f70234a != null) {
                        TimedNode<T> timedNode3 = new TimedNode<>(null, 0L);
                        timedNode3.lazySet(timedNode.get());
                        this.f70241f = timedNode3;
                        return;
                    }
                    this.f70241f = timedNode;
                    return;
                } else {
                    timedNode = timedNode2;
                }
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public boolean isDone() {
            return this.f70244i;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public int size() {
            return f(e());
        }
    }

    /* loaded from: classes5.dex */
    static final class c<T> implements a<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f70245a;

        /* renamed from: b  reason: collision with root package name */
        int f70246b;

        /* renamed from: c  reason: collision with root package name */
        volatile Node<T> f70247c;

        /* renamed from: d  reason: collision with root package name */
        Node<T> f70248d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f70249e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f70250f;

        c(int i2) {
            this.f70245a = io.reactivex.internal.functions.a.h(i2, "maxSize");
            Node<T> node = new Node<>(null);
            this.f70248d = node;
            this.f70247c = node;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void a(T t3) {
            Node<T> node = new Node<>(t3);
            Node<T> node2 = this.f70248d;
            this.f70248d = node;
            this.f70246b++;
            node2.set(node);
            e();
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void b() {
            if (this.f70247c.f70227a != null) {
                Node<T> node = new Node<>(null);
                node.lazySet(this.f70247c.get());
                this.f70247c = node;
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public T[] c(T[] tArr) {
            Node<T> node = this.f70247c;
            Node<T> node2 = node;
            int i2 = 0;
            while (true) {
                node2 = node2.get();
                if (node2 == null) {
                    break;
                }
                i2++;
            }
            if (tArr.length < i2) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i2));
            }
            for (int i4 = 0; i4 < i2; i4++) {
                node = node.get();
                tArr[i4] = node.f70227a;
            }
            if (tArr.length > i2) {
                tArr[i2] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void complete() {
            b();
            this.f70250f = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void d(ReplaySubscription<T> replaySubscription) {
            if (replaySubscription.getAndIncrement() != 0) {
                return;
            }
            l3.c<? super T> cVar = replaySubscription.f70228a;
            Node<T> node = (Node) replaySubscription.f70230c;
            if (node == null) {
                node = this.f70247c;
            }
            long j4 = replaySubscription.f70233f;
            int i2 = 1;
            do {
                long j5 = replaySubscription.f70231d.get();
                while (j4 != j5) {
                    if (replaySubscription.f70232e) {
                        replaySubscription.f70230c = null;
                        return;
                    }
                    boolean z3 = this.f70250f;
                    Node<T> node2 = node.get();
                    boolean z4 = node2 == null;
                    if (z3 && z4) {
                        replaySubscription.f70230c = null;
                        replaySubscription.f70232e = true;
                        Throwable th = this.f70249e;
                        if (th == null) {
                            cVar.onComplete();
                            return;
                        } else {
                            cVar.onError(th);
                            return;
                        }
                    } else if (z4) {
                        break;
                    } else {
                        cVar.onNext((T) node2.f70227a);
                        j4++;
                        node = node2;
                    }
                }
                if (j4 == j5) {
                    if (replaySubscription.f70232e) {
                        replaySubscription.f70230c = null;
                        return;
                    } else if (this.f70250f && node.get() == null) {
                        replaySubscription.f70230c = null;
                        replaySubscription.f70232e = true;
                        Throwable th2 = this.f70249e;
                        if (th2 == null) {
                            cVar.onComplete();
                            return;
                        } else {
                            cVar.onError(th2);
                            return;
                        }
                    }
                }
                replaySubscription.f70230c = node;
                replaySubscription.f70233f = j4;
                i2 = replaySubscription.addAndGet(-i2);
            } while (i2 != 0);
        }

        void e() {
            int i2 = this.f70246b;
            if (i2 > this.f70245a) {
                this.f70246b = i2 - 1;
                this.f70247c = this.f70247c.get();
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void error(Throwable th) {
            this.f70249e = th;
            b();
            this.f70250f = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public Throwable getError() {
            return this.f70249e;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public T getValue() {
            Node<T> node = this.f70247c;
            while (true) {
                Node<T> node2 = node.get();
                if (node2 == null) {
                    return node.f70227a;
                }
                node = node2;
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public boolean isDone() {
            return this.f70250f;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public int size() {
            Node<T> node = this.f70247c;
            int i2 = 0;
            while (i2 != Integer.MAX_VALUE && (node = node.get()) != null) {
                i2++;
            }
            return i2;
        }
    }

    /* loaded from: classes5.dex */
    static final class d<T> implements a<T> {

        /* renamed from: a  reason: collision with root package name */
        final List<T> f70251a;

        /* renamed from: b  reason: collision with root package name */
        Throwable f70252b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f70253c;

        /* renamed from: d  reason: collision with root package name */
        volatile int f70254d;

        d(int i2) {
            this.f70251a = new ArrayList(io.reactivex.internal.functions.a.h(i2, "capacityHint"));
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void a(T t3) {
            this.f70251a.add(t3);
            this.f70254d++;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void b() {
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public T[] c(T[] tArr) {
            int i2 = this.f70254d;
            if (i2 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            List<T> list = this.f70251a;
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

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void complete() {
            this.f70253c = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void d(ReplaySubscription<T> replaySubscription) {
            if (replaySubscription.getAndIncrement() != 0) {
                return;
            }
            List<T> list = this.f70251a;
            l3.c<? super T> cVar = replaySubscription.f70228a;
            Integer num = (Integer) replaySubscription.f70230c;
            int i2 = 0;
            if (num != null) {
                i2 = num.intValue();
            } else {
                replaySubscription.f70230c = 0;
            }
            long j4 = replaySubscription.f70233f;
            int i4 = 1;
            do {
                long j5 = replaySubscription.f70231d.get();
                while (j4 != j5) {
                    if (replaySubscription.f70232e) {
                        replaySubscription.f70230c = null;
                        return;
                    }
                    boolean z3 = this.f70253c;
                    int i5 = this.f70254d;
                    if (z3 && i2 == i5) {
                        replaySubscription.f70230c = null;
                        replaySubscription.f70232e = true;
                        Throwable th = this.f70252b;
                        if (th == null) {
                            cVar.onComplete();
                            return;
                        } else {
                            cVar.onError(th);
                            return;
                        }
                    } else if (i2 == i5) {
                        break;
                    } else {
                        cVar.onNext(list.get(i2));
                        i2++;
                        j4++;
                    }
                }
                if (j4 == j5) {
                    if (replaySubscription.f70232e) {
                        replaySubscription.f70230c = null;
                        return;
                    }
                    boolean z4 = this.f70253c;
                    int i6 = this.f70254d;
                    if (z4 && i2 == i6) {
                        replaySubscription.f70230c = null;
                        replaySubscription.f70232e = true;
                        Throwable th2 = this.f70252b;
                        if (th2 == null) {
                            cVar.onComplete();
                            return;
                        } else {
                            cVar.onError(th2);
                            return;
                        }
                    }
                }
                replaySubscription.f70230c = Integer.valueOf(i2);
                replaySubscription.f70233f = j4;
                i4 = replaySubscription.addAndGet(-i4);
            } while (i4 != 0);
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public void error(Throwable th) {
            this.f70252b = th;
            this.f70253c = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public Throwable getError() {
            return this.f70252b;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        @Nullable
        public T getValue() {
            int i2 = this.f70254d;
            if (i2 == 0) {
                return null;
            }
            return this.f70251a.get(i2 - 1);
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public boolean isDone() {
            return this.f70253c;
        }

        @Override // io.reactivex.processors.ReplayProcessor.a
        public int size() {
            return this.f70254d;
        }
    }

    ReplayProcessor(a<T> aVar) {
        this.f70224b = aVar;
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplayProcessor<T> Q8() {
        return new ReplayProcessor<>(new d(16));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplayProcessor<T> R8(int i2) {
        return new ReplayProcessor<>(new d(i2));
    }

    static <T> ReplayProcessor<T> S8() {
        return new ReplayProcessor<>(new c(Integer.MAX_VALUE));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplayProcessor<T> T8(int i2) {
        return new ReplayProcessor<>(new c(i2));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplayProcessor<T> U8(long j4, TimeUnit timeUnit, h0 h0Var) {
        return new ReplayProcessor<>(new b(Integer.MAX_VALUE, j4, timeUnit, h0Var));
    }

    @CheckReturnValue
    @NonNull
    public static <T> ReplayProcessor<T> V8(long j4, TimeUnit timeUnit, h0 h0Var, int i2) {
        return new ReplayProcessor<>(new b(i2, j4, timeUnit, h0Var));
    }

    @Override // io.reactivex.processors.a
    @Nullable
    public Throwable J8() {
        a<T> aVar = this.f70224b;
        if (aVar.isDone()) {
            return aVar.getError();
        }
        return null;
    }

    @Override // io.reactivex.processors.a
    public boolean K8() {
        a<T> aVar = this.f70224b;
        return aVar.isDone() && aVar.getError() == null;
    }

    @Override // io.reactivex.processors.a
    public boolean L8() {
        return this.f70226d.get().length != 0;
    }

    @Override // io.reactivex.processors.a
    public boolean M8() {
        a<T> aVar = this.f70224b;
        return aVar.isDone() && aVar.getError() != null;
    }

    boolean O8(ReplaySubscription<T> replaySubscription) {
        ReplaySubscription<T>[] replaySubscriptionArr;
        ReplaySubscription<T>[] replaySubscriptionArr2;
        do {
            replaySubscriptionArr = this.f70226d.get();
            if (replaySubscriptionArr == f70223g) {
                return false;
            }
            int length = replaySubscriptionArr.length;
            replaySubscriptionArr2 = new ReplaySubscription[length + 1];
            System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr2, 0, length);
            replaySubscriptionArr2[length] = replaySubscription;
        } while (!this.f70226d.compareAndSet(replaySubscriptionArr, replaySubscriptionArr2));
        return true;
    }

    public void P8() {
        this.f70224b.b();
    }

    public T W8() {
        return this.f70224b.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] X8() {
        Object[] objArr = f70221e;
        Object[] Y8 = Y8(objArr);
        return Y8 == objArr ? new Object[0] : Y8;
    }

    public T[] Y8(T[] tArr) {
        return this.f70224b.c(tArr);
    }

    public boolean Z8() {
        return this.f70224b.size() != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void a9(ReplaySubscription<T> replaySubscription) {
        ReplaySubscription<T>[] replaySubscriptionArr;
        ReplaySubscription[] replaySubscriptionArr2;
        do {
            replaySubscriptionArr = this.f70226d.get();
            if (replaySubscriptionArr == f70223g || replaySubscriptionArr == f70222f) {
                return;
            }
            int length = replaySubscriptionArr.length;
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (replaySubscriptionArr[i4] == replaySubscription) {
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
                replaySubscriptionArr2 = f70222f;
            } else {
                ReplaySubscription[] replaySubscriptionArr3 = new ReplaySubscription[length - 1];
                System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr3, 0, i2);
                System.arraycopy(replaySubscriptionArr, i2 + 1, replaySubscriptionArr3, i2, (length - i2) - 1);
                replaySubscriptionArr2 = replaySubscriptionArr3;
            }
        } while (!this.f70226d.compareAndSet(replaySubscriptionArr, replaySubscriptionArr2));
    }

    int b9() {
        return this.f70224b.size();
    }

    int c9() {
        return this.f70226d.get().length;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        ReplaySubscription<T> replaySubscription = new ReplaySubscription<>(cVar, this);
        cVar.onSubscribe(replaySubscription);
        if (O8(replaySubscription) && replaySubscription.f70232e) {
            a9(replaySubscription);
        } else {
            this.f70224b.d(replaySubscription);
        }
    }

    @Override // l3.c
    public void onComplete() {
        if (this.f70225c) {
            return;
        }
        this.f70225c = true;
        a<T> aVar = this.f70224b;
        aVar.complete();
        for (ReplaySubscription<T> replaySubscription : this.f70226d.getAndSet(f70223g)) {
            aVar.d(replaySubscription);
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70225c) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f70225c = true;
        a<T> aVar = this.f70224b;
        aVar.error(th);
        for (ReplaySubscription<T> replaySubscription : this.f70226d.getAndSet(f70223g)) {
            aVar.d(replaySubscription);
        }
    }

    @Override // l3.c
    public void onNext(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70225c) {
            return;
        }
        a<T> aVar = this.f70224b;
        aVar.a(t3);
        for (ReplaySubscription<T> replaySubscription : this.f70226d.get()) {
            aVar.d(replaySubscription);
        }
    }

    @Override // l3.c
    public void onSubscribe(l3.d dVar) {
        if (this.f70225c) {
            dVar.cancel();
        } else {
            dVar.request(Long.MAX_VALUE);
        }
    }
}
