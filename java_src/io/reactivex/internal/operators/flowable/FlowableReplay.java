package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscribers.SubscriberResourceWrapper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableReplay<T> extends io.reactivex.flowables.a<T> implements x2.h<T>, io.reactivex.internal.disposables.c {

    /* renamed from: f  reason: collision with root package name */
    static final Callable f66850f = new b();

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.j<T> f66851b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<ReplaySubscriber<T>> f66852c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<? extends d<T>> f66853d;

    /* renamed from: e  reason: collision with root package name */
    final l3.b<T> f66854e;

    /* loaded from: classes5.dex */
    static class BoundedReplayBuffer<T> extends AtomicReference<Node> implements d<T> {
        private static final long serialVersionUID = 2346567790059478686L;

        /* renamed from: a  reason: collision with root package name */
        Node f66855a;

        /* renamed from: b  reason: collision with root package name */
        int f66856b;

        /* renamed from: c  reason: collision with root package name */
        long f66857c;

        BoundedReplayBuffer() {
            Node node = new Node(null, 0L);
            this.f66855a = node;
            set(node);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.d
        public final void a(T t3) {
            Object e4 = e(NotificationLite.next(t3));
            long j4 = this.f66857c + 1;
            this.f66857c = j4;
            c(new Node(e4, j4));
            n();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.d
        public final void b(InnerSubscription<T> innerSubscription) {
            Node node;
            synchronized (innerSubscription) {
                if (innerSubscription.f66863e) {
                    innerSubscription.f66864f = true;
                    return;
                }
                innerSubscription.f66863e = true;
                while (!innerSubscription.isDisposed()) {
                    long j4 = innerSubscription.get();
                    boolean z3 = j4 == Long.MAX_VALUE;
                    Node node2 = (Node) innerSubscription.a();
                    if (node2 == null) {
                        node2 = f();
                        innerSubscription.f66861c = node2;
                        io.reactivex.internal.util.b.a(innerSubscription.f66862d, node2.f66866b);
                    }
                    long j5 = 0;
                    while (j4 != 0 && (node = node2.get()) != null) {
                        Object i2 = i(node.f66865a);
                        try {
                            if (NotificationLite.accept(i2, innerSubscription.f66860b)) {
                                innerSubscription.f66861c = null;
                                return;
                            }
                            j5++;
                            j4--;
                            if (innerSubscription.isDisposed()) {
                                return;
                            }
                            node2 = node;
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            innerSubscription.f66861c = null;
                            innerSubscription.dispose();
                            if (NotificationLite.isError(i2) || NotificationLite.isComplete(i2)) {
                                return;
                            }
                            innerSubscription.f66860b.onError(th);
                            return;
                        }
                    }
                    if (j5 != 0) {
                        innerSubscription.f66861c = node2;
                        if (!z3) {
                            innerSubscription.b(j5);
                        }
                    }
                    synchronized (innerSubscription) {
                        if (!innerSubscription.f66864f) {
                            innerSubscription.f66863e = false;
                            return;
                        }
                        innerSubscription.f66864f = false;
                    }
                }
            }
        }

        final void c(Node node) {
            this.f66855a.set(node);
            this.f66855a = node;
            this.f66856b++;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.d
        public final void complete() {
            Object e4 = e(NotificationLite.complete());
            long j4 = this.f66857c + 1;
            this.f66857c = j4;
            c(new Node(e4, j4));
            o();
        }

        final void d(Collection<? super T> collection) {
            Node f4 = f();
            while (true) {
                f4 = f4.get();
                if (f4 == null) {
                    return;
                }
                Object i2 = i(f4.f66865a);
                if (NotificationLite.isComplete(i2) || NotificationLite.isError(i2)) {
                    return;
                }
                collection.add((Object) NotificationLite.getValue(i2));
            }
        }

        Object e(Object obj) {
            return obj;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.d
        public final void error(Throwable th) {
            Object e4 = e(NotificationLite.error(th));
            long j4 = this.f66857c + 1;
            this.f66857c = j4;
            c(new Node(e4, j4));
            o();
        }

        Node f() {
            return get();
        }

        boolean g() {
            Object obj = this.f66855a.f66865a;
            return obj != null && NotificationLite.isComplete(i(obj));
        }

        boolean h() {
            Object obj = this.f66855a.f66865a;
            return obj != null && NotificationLite.isError(i(obj));
        }

        Object i(Object obj) {
            return obj;
        }

        final void j() {
            Node node = get().get();
            if (node != null) {
                this.f66856b--;
                l(node);
                return;
            }
            throw new IllegalStateException("Empty list!");
        }

        final void k(int i2) {
            Node node = get();
            while (i2 > 0) {
                node = node.get();
                i2--;
                this.f66856b--;
            }
            l(node);
        }

        final void l(Node node) {
            set(node);
        }

        final void m() {
            Node node = get();
            if (node.f66865a != null) {
                Node node2 = new Node(null, 0L);
                node2.lazySet(node.get());
                set(node2);
            }
        }

        void n() {
        }

        void o() {
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class InnerSubscription<T> extends AtomicLong implements l3.d, io.reactivex.disposables.b {

        /* renamed from: g  reason: collision with root package name */
        static final long f66858g = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;

        /* renamed from: a  reason: collision with root package name */
        final ReplaySubscriber<T> f66859a;

        /* renamed from: b  reason: collision with root package name */
        final l3.c<? super T> f66860b;

        /* renamed from: c  reason: collision with root package name */
        Object f66861c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f66862d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        boolean f66863e;

        /* renamed from: f  reason: collision with root package name */
        boolean f66864f;

        InnerSubscription(ReplaySubscriber<T> replaySubscriber, l3.c<? super T> cVar) {
            this.f66859a = replaySubscriber;
            this.f66860b = cVar;
        }

        <U> U a() {
            return (U) this.f66861c;
        }

        public long b(long j4) {
            return io.reactivex.internal.util.b.f(this, j4);
        }

        @Override // l3.d
        public void cancel() {
            dispose();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f66859a.c(this);
                this.f66859a.b();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == Long.MIN_VALUE;
        }

        @Override // l3.d
        public void request(long j4) {
            if (!SubscriptionHelper.validate(j4) || io.reactivex.internal.util.b.b(this, j4) == Long.MIN_VALUE) {
                return;
            }
            io.reactivex.internal.util.b.a(this.f66862d, j4);
            this.f66859a.b();
            this.f66859a.f66869a.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;

        /* renamed from: a  reason: collision with root package name */
        final Object f66865a;

        /* renamed from: b  reason: collision with root package name */
        final long f66866b;

        Node(Object obj, long j4) {
            this.f66865a = obj;
            this.f66866b = j4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ReplaySubscriber<T> extends AtomicReference<l3.d> implements io.reactivex.o<T>, io.reactivex.disposables.b {

        /* renamed from: h  reason: collision with root package name */
        static final InnerSubscription[] f66867h = new InnerSubscription[0];

        /* renamed from: i  reason: collision with root package name */
        static final InnerSubscription[] f66868i = new InnerSubscription[0];
        private static final long serialVersionUID = 7224554242710036740L;

        /* renamed from: a  reason: collision with root package name */
        final d<T> f66869a;

        /* renamed from: b  reason: collision with root package name */
        boolean f66870b;

        /* renamed from: f  reason: collision with root package name */
        long f66874f;

        /* renamed from: g  reason: collision with root package name */
        long f66875g;

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f66873e = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<InnerSubscription<T>[]> f66871c = new AtomicReference<>(f66867h);

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f66872d = new AtomicBoolean();

        ReplaySubscriber(d<T> dVar) {
            this.f66869a = dVar;
        }

        boolean a(InnerSubscription<T> innerSubscription) {
            InnerSubscription<T>[] innerSubscriptionArr;
            InnerSubscription<T>[] innerSubscriptionArr2;
            Objects.requireNonNull(innerSubscription);
            do {
                innerSubscriptionArr = this.f66871c.get();
                if (innerSubscriptionArr == f66868i) {
                    return false;
                }
                int length = innerSubscriptionArr.length;
                innerSubscriptionArr2 = new InnerSubscription[length + 1];
                System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr2, 0, length);
                innerSubscriptionArr2[length] = innerSubscription;
            } while (!this.f66871c.compareAndSet(innerSubscriptionArr, innerSubscriptionArr2));
            return true;
        }

        void b() {
            if (this.f66873e.getAndIncrement() != 0) {
                return;
            }
            int i2 = 1;
            while (!isDisposed()) {
                InnerSubscription<T>[] innerSubscriptionArr = this.f66871c.get();
                long j4 = this.f66874f;
                long j5 = j4;
                for (InnerSubscription<T> innerSubscription : innerSubscriptionArr) {
                    j5 = Math.max(j5, innerSubscription.f66862d.get());
                }
                long j6 = this.f66875g;
                l3.d dVar = get();
                long j7 = j5 - j4;
                if (j7 != 0) {
                    this.f66874f = j5;
                    if (dVar == null) {
                        long j8 = j6 + j7;
                        if (j8 < 0) {
                            j8 = Long.MAX_VALUE;
                        }
                        this.f66875g = j8;
                    } else if (j6 != 0) {
                        this.f66875g = 0L;
                        dVar.request(j6 + j7);
                    } else {
                        dVar.request(j7);
                    }
                } else if (j6 != 0 && dVar != null) {
                    this.f66875g = 0L;
                    dVar.request(j6);
                }
                i2 = this.f66873e.addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void c(InnerSubscription<T> innerSubscription) {
            InnerSubscription<T>[] innerSubscriptionArr;
            InnerSubscription[] innerSubscriptionArr2;
            do {
                innerSubscriptionArr = this.f66871c.get();
                int length = innerSubscriptionArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = -1;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    } else if (innerSubscriptionArr[i4].equals(innerSubscription)) {
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
                    innerSubscriptionArr2 = f66867h;
                } else {
                    InnerSubscription[] innerSubscriptionArr3 = new InnerSubscription[length - 1];
                    System.arraycopy(innerSubscriptionArr, 0, innerSubscriptionArr3, 0, i2);
                    System.arraycopy(innerSubscriptionArr, i2 + 1, innerSubscriptionArr3, i2, (length - i2) - 1);
                    innerSubscriptionArr2 = innerSubscriptionArr3;
                }
            } while (!this.f66871c.compareAndSet(innerSubscriptionArr, innerSubscriptionArr2));
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f66871c.set(f66868i);
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f66871c.get() == f66868i;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66870b) {
                return;
            }
            this.f66870b = true;
            this.f66869a.complete();
            for (InnerSubscription<T> innerSubscription : this.f66871c.getAndSet(f66868i)) {
                this.f66869a.b(innerSubscription);
            }
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (!this.f66870b) {
                this.f66870b = true;
                this.f66869a.error(th);
                for (InnerSubscription<T> innerSubscription : this.f66871c.getAndSet(f66868i)) {
                    this.f66869a.b(innerSubscription);
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66870b) {
                return;
            }
            this.f66869a.a(t3);
            for (InnerSubscription<T> innerSubscription : this.f66871c.get()) {
                this.f66869a.b(innerSubscription);
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                b();
                for (InnerSubscription<T> innerSubscription : this.f66871c.get()) {
                    this.f66869a.b(innerSubscription);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f66876d;

        /* renamed from: e  reason: collision with root package name */
        final long f66877e;

        /* renamed from: f  reason: collision with root package name */
        final TimeUnit f66878f;

        /* renamed from: g  reason: collision with root package name */
        final int f66879g;

        SizeAndTimeBoundReplayBuffer(int i2, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f66876d = h0Var;
            this.f66879g = i2;
            this.f66877e = j4;
            this.f66878f = timeUnit;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        Object e(Object obj) {
            return new io.reactivex.schedulers.d(obj, this.f66876d.d(this.f66878f), this.f66878f);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        Node f() {
            Node node;
            long d4 = this.f66876d.d(this.f66878f) - this.f66877e;
            Node node2 = get();
            Node node3 = node2.get();
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                if (node2 != null) {
                    io.reactivex.schedulers.d dVar = (io.reactivex.schedulers.d) node2.f66865a;
                    if (NotificationLite.isComplete(dVar.d()) || NotificationLite.isError(dVar.d()) || dVar.a() > d4) {
                        break;
                    }
                    node3 = node2.get();
                } else {
                    break;
                }
            }
            return node;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        Object i(Object obj) {
            return ((io.reactivex.schedulers.d) obj).d();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        void n() {
            Node node;
            long d4 = this.f66876d.d(this.f66878f) - this.f66877e;
            Node node2 = get();
            Node node3 = node2.get();
            int i2 = 0;
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                if (node2 != null) {
                    int i4 = this.f66856b;
                    if (i4 > this.f66879g) {
                        i2++;
                        this.f66856b = i4 - 1;
                        node3 = node2.get();
                    } else if (((io.reactivex.schedulers.d) node2.f66865a).a() > d4) {
                        break;
                    } else {
                        i2++;
                        this.f66856b--;
                        node3 = node2.get();
                    }
                } else {
                    break;
                }
            }
            if (i2 != 0) {
                l(node);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
            l(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
            return;
         */
        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void o() {
            /*
                r10 = this;
                io.reactivex.h0 r0 = r10.f66876d
                java.util.concurrent.TimeUnit r1 = r10.f66878f
                long r0 = r0.d(r1)
                long r2 = r10.f66877e
                long r0 = r0 - r2
                java.lang.Object r2 = r10.get()
                io.reactivex.internal.operators.flowable.FlowableReplay$Node r2 = (io.reactivex.internal.operators.flowable.FlowableReplay.Node) r2
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.flowable.FlowableReplay$Node r3 = (io.reactivex.internal.operators.flowable.FlowableReplay.Node) r3
                r4 = 0
            L18:
                r9 = r3
                r3 = r2
                r2 = r9
                if (r2 == 0) goto L3c
                int r5 = r10.f66856b
                r6 = 1
                if (r5 <= r6) goto L3c
                java.lang.Object r5 = r2.f66865a
                io.reactivex.schedulers.d r5 = (io.reactivex.schedulers.d) r5
                long r7 = r5.a()
                int r5 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                if (r5 > 0) goto L3c
                int r4 = r4 + 1
                int r3 = r10.f66856b
                int r3 = r3 - r6
                r10.f66856b = r3
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.flowable.FlowableReplay$Node r3 = (io.reactivex.internal.operators.flowable.FlowableReplay.Node) r3
                goto L18
            L3c:
                if (r4 == 0) goto L41
                r10.l(r3)
            L41:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableReplay.SizeAndTimeBoundReplayBuffer.o():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;

        /* renamed from: d  reason: collision with root package name */
        final int f66880d;

        SizeBoundReplayBuffer(int i2) {
            this.f66880d = i2;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.BoundedReplayBuffer
        void n() {
            if (this.f66856b > this.f66880d) {
                j();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements d<T> {
        private static final long serialVersionUID = 7063189396499112664L;

        /* renamed from: a  reason: collision with root package name */
        volatile int f66881a;

        UnboundedReplayBuffer(int i2) {
            super(i2);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.d
        public void a(T t3) {
            add(NotificationLite.next(t3));
            this.f66881a++;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.d
        public void b(InnerSubscription<T> innerSubscription) {
            synchronized (innerSubscription) {
                if (innerSubscription.f66863e) {
                    innerSubscription.f66864f = true;
                    return;
                }
                innerSubscription.f66863e = true;
                l3.c<? super T> cVar = innerSubscription.f66860b;
                while (!innerSubscription.isDisposed()) {
                    int i2 = this.f66881a;
                    Integer num = (Integer) innerSubscription.a();
                    int intValue = num != null ? num.intValue() : 0;
                    long j4 = innerSubscription.get();
                    long j5 = j4;
                    long j6 = 0;
                    while (j5 != 0 && intValue < i2) {
                        Object obj = get(intValue);
                        try {
                            if (NotificationLite.accept(obj, cVar) || innerSubscription.isDisposed()) {
                                return;
                            }
                            intValue++;
                            j5--;
                            j6++;
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            innerSubscription.dispose();
                            if (NotificationLite.isError(obj) || NotificationLite.isComplete(obj)) {
                                return;
                            }
                            cVar.onError(th);
                            return;
                        }
                    }
                    if (j6 != 0) {
                        innerSubscription.f66861c = Integer.valueOf(intValue);
                        if (j4 != Long.MAX_VALUE) {
                            innerSubscription.b(j6);
                        }
                    }
                    synchronized (innerSubscription) {
                        if (!innerSubscription.f66864f) {
                            innerSubscription.f66863e = false;
                            return;
                        }
                        innerSubscription.f66864f = false;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.d
        public void complete() {
            add(NotificationLite.complete());
            this.f66881a++;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableReplay.d
        public void error(Throwable th) {
            add(NotificationLite.error(th));
            this.f66881a++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T> extends io.reactivex.flowables.a<T> {

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.flowables.a<T> f66882b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.j<T> f66883c;

        a(io.reactivex.flowables.a<T> aVar, io.reactivex.j<T> jVar) {
            this.f66882b = aVar;
            this.f66883c = jVar;
        }

        @Override // io.reactivex.flowables.a
        public void N8(w2.g<? super io.reactivex.disposables.b> gVar) {
            this.f66882b.N8(gVar);
        }

        @Override // io.reactivex.j
        protected void h6(l3.c<? super T> cVar) {
            this.f66883c.c(cVar);
        }
    }

    /* loaded from: classes5.dex */
    static final class b implements Callable<Object> {
        b() {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return new UnboundedReplayBuffer(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c<R, U> extends io.reactivex.j<R> {

        /* renamed from: b  reason: collision with root package name */
        private final Callable<? extends io.reactivex.flowables.a<U>> f66884b;

        /* renamed from: c  reason: collision with root package name */
        private final w2.o<? super io.reactivex.j<U>, ? extends l3.b<R>> f66885c;

        /* loaded from: classes5.dex */
        final class a implements w2.g<io.reactivex.disposables.b> {

            /* renamed from: a  reason: collision with root package name */
            private final SubscriberResourceWrapper<R> f66886a;

            a(SubscriberResourceWrapper<R> subscriberResourceWrapper) {
                this.f66886a = subscriberResourceWrapper;
            }

            @Override // w2.g
            /* renamed from: a */
            public void accept(io.reactivex.disposables.b bVar) {
                this.f66886a.a(bVar);
            }
        }

        c(Callable<? extends io.reactivex.flowables.a<U>> callable, w2.o<? super io.reactivex.j<U>, ? extends l3.b<R>> oVar) {
            this.f66884b = callable;
            this.f66885c = oVar;
        }

        @Override // io.reactivex.j
        protected void h6(l3.c<? super R> cVar) {
            try {
                io.reactivex.flowables.a aVar = (io.reactivex.flowables.a) io.reactivex.internal.functions.a.g(this.f66884b.call(), "The connectableFactory returned null");
                try {
                    l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f66885c.apply(aVar), "The selector returned a null Publisher");
                    SubscriberResourceWrapper subscriberResourceWrapper = new SubscriberResourceWrapper(cVar);
                    bVar.c(subscriberResourceWrapper);
                    aVar.N8(new a(subscriberResourceWrapper));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    EmptySubscription.error(th, cVar);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptySubscription.error(th2, cVar);
            }
        }
    }

    /* loaded from: classes5.dex */
    interface d<T> {
        void a(T t3);

        void b(InnerSubscription<T> innerSubscription);

        void complete();

        void error(Throwable th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class e<T> implements Callable<d<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final int f66888a;

        e(int i2) {
            this.f66888a = i2;
        }

        @Override // java.util.concurrent.Callable
        public d<T> call() {
            return new SizeBoundReplayBuffer(this.f66888a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f<T> implements l3.b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<ReplaySubscriber<T>> f66889a;

        /* renamed from: b  reason: collision with root package name */
        private final Callable<? extends d<T>> f66890b;

        f(AtomicReference<ReplaySubscriber<T>> atomicReference, Callable<? extends d<T>> callable) {
            this.f66889a = atomicReference;
            this.f66890b = callable;
        }

        @Override // l3.b
        public void c(l3.c<? super T> cVar) {
            ReplaySubscriber<T> replaySubscriber;
            while (true) {
                replaySubscriber = this.f66889a.get();
                if (replaySubscriber != null) {
                    break;
                }
                try {
                    ReplaySubscriber<T> replaySubscriber2 = new ReplaySubscriber<>(this.f66890b.call());
                    if (this.f66889a.compareAndSet(null, replaySubscriber2)) {
                        replaySubscriber = replaySubscriber2;
                        break;
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    EmptySubscription.error(th, cVar);
                    return;
                }
            }
            InnerSubscription<T> innerSubscription = new InnerSubscription<>(replaySubscriber, cVar);
            cVar.onSubscribe(innerSubscription);
            replaySubscriber.a(innerSubscription);
            if (innerSubscription.isDisposed()) {
                replaySubscriber.c(innerSubscription);
                return;
            }
            replaySubscriber.b();
            replaySubscriber.f66869a.b(innerSubscription);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class g<T> implements Callable<d<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final int f66891a;

        /* renamed from: b  reason: collision with root package name */
        private final long f66892b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f66893c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.h0 f66894d;

        g(int i2, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f66891a = i2;
            this.f66892b = j4;
            this.f66893c = timeUnit;
            this.f66894d = h0Var;
        }

        @Override // java.util.concurrent.Callable
        public d<T> call() {
            return new SizeAndTimeBoundReplayBuffer(this.f66891a, this.f66892b, this.f66893c, this.f66894d);
        }
    }

    private FlowableReplay(l3.b<T> bVar, io.reactivex.j<T> jVar, AtomicReference<ReplaySubscriber<T>> atomicReference, Callable<? extends d<T>> callable) {
        this.f66854e = bVar;
        this.f66851b = jVar;
        this.f66852c = atomicReference;
        this.f66853d = callable;
    }

    public static <T> io.reactivex.flowables.a<T> U8(io.reactivex.j<T> jVar, int i2) {
        if (i2 == Integer.MAX_VALUE) {
            return Y8(jVar);
        }
        return X8(jVar, new e(i2));
    }

    public static <T> io.reactivex.flowables.a<T> V8(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return W8(jVar, j4, timeUnit, h0Var, Integer.MAX_VALUE);
    }

    public static <T> io.reactivex.flowables.a<T> W8(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2) {
        return X8(jVar, new g(i2, j4, timeUnit, h0Var));
    }

    static <T> io.reactivex.flowables.a<T> X8(io.reactivex.j<T> jVar, Callable<? extends d<T>> callable) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.plugins.a.T(new FlowableReplay(new f(atomicReference, callable), jVar, atomicReference, callable));
    }

    public static <T> io.reactivex.flowables.a<T> Y8(io.reactivex.j<? extends T> jVar) {
        return X8(jVar, f66850f);
    }

    public static <U, R> io.reactivex.j<R> Z8(Callable<? extends io.reactivex.flowables.a<U>> callable, w2.o<? super io.reactivex.j<U>, ? extends l3.b<R>> oVar) {
        return new c(callable, oVar);
    }

    public static <T> io.reactivex.flowables.a<T> a9(io.reactivex.flowables.a<T> aVar, io.reactivex.h0 h0Var) {
        return io.reactivex.plugins.a.T(new a(aVar, aVar.i4(h0Var)));
    }

    @Override // io.reactivex.flowables.a
    public void N8(w2.g<? super io.reactivex.disposables.b> gVar) {
        ReplaySubscriber<T> replaySubscriber;
        while (true) {
            replaySubscriber = this.f66852c.get();
            if (replaySubscriber != null && !replaySubscriber.isDisposed()) {
                break;
            }
            try {
                ReplaySubscriber<T> replaySubscriber2 = new ReplaySubscriber<>(this.f66853d.call());
                if (this.f66852c.compareAndSet(replaySubscriber, replaySubscriber2)) {
                    replaySubscriber = replaySubscriber2;
                    break;
                }
            } finally {
                io.reactivex.exceptions.a.b(th);
                RuntimeException e4 = ExceptionHelper.e(th);
            }
        }
        boolean z3 = !replaySubscriber.f66872d.get() && replaySubscriber.f66872d.compareAndSet(false, true);
        try {
            gVar.accept(replaySubscriber);
            if (z3) {
                this.f66851b.g6(replaySubscriber);
            }
        } catch (Throwable th) {
            if (z3) {
                replaySubscriber.f66872d.compareAndSet(true, false);
            }
            throw ExceptionHelper.e(th);
        }
    }

    @Override // io.reactivex.internal.disposables.c
    public void b(io.reactivex.disposables.b bVar) {
        this.f66852c.compareAndSet((ReplaySubscriber) bVar, null);
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f66854e.c(cVar);
    }

    @Override // x2.h
    public l3.b<T> source() {
        return this.f66851b;
    }
}
