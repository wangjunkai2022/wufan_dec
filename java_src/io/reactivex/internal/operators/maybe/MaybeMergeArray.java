package io.reactivex.internal.operators.maybe;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
public final class MaybeMergeArray<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T>[] f67717b;

    /* loaded from: classes5.dex */
    static final class ClqSimpleQueue<T> extends ConcurrentLinkedQueue<T> implements a<T> {
        private static final long serialVersionUID = -4025173261791142821L;

        /* renamed from: a  reason: collision with root package name */
        int f67718a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f67719b = new AtomicInteger();

        ClqSimpleQueue() {
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.a
        public int A() {
            return this.f67718a;
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.a
        public int k0() {
            return this.f67719b.get();
        }

        @Override // x2.o
        public boolean offer(T t3, T t4) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue, io.reactivex.internal.operators.maybe.MaybeMergeArray.a, x2.o
        @Nullable
        public T poll() {
            T t3 = (T) super.poll();
            if (t3 != null) {
                this.f67718a++;
            }
            return t3;
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.a
        public void x() {
            poll();
        }

        @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue, x2.o
        public boolean offer(T t3) {
            this.f67719b.getAndIncrement();
            return super.offer(t3);
        }
    }

    /* loaded from: classes5.dex */
    static final class MergeMaybeObserver<T> extends BasicIntQueueSubscription<T> implements io.reactivex.t<T> {
        private static final long serialVersionUID = -660395290758764731L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f67720a;

        /* renamed from: d  reason: collision with root package name */
        final a<Object> f67723d;

        /* renamed from: f  reason: collision with root package name */
        final int f67725f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f67726g;

        /* renamed from: h  reason: collision with root package name */
        boolean f67727h;

        /* renamed from: i  reason: collision with root package name */
        long f67728i;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.a f67721b = new io.reactivex.disposables.a();

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f67722c = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f67724e = new AtomicThrowable();

        MergeMaybeObserver(l3.c<? super T> cVar, int i2, a<Object> aVar) {
            this.f67720a = cVar;
            this.f67725f = i2;
            this.f67723d = aVar;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f67727h) {
                d();
            } else {
                e();
            }
        }

        @Override // l3.d
        public void cancel() {
            if (this.f67726g) {
                return;
            }
            this.f67726g = true;
            this.f67721b.dispose();
            if (getAndIncrement() == 0) {
                this.f67723d.clear();
            }
        }

        @Override // x2.o
        public void clear() {
            this.f67723d.clear();
        }

        void d() {
            l3.c<? super T> cVar = this.f67720a;
            a<Object> aVar = this.f67723d;
            int i2 = 1;
            while (!this.f67726g) {
                Throwable th = this.f67724e.get();
                if (th != null) {
                    aVar.clear();
                    cVar.onError(th);
                    return;
                }
                boolean z3 = aVar.k0() == this.f67725f;
                if (!aVar.isEmpty()) {
                    cVar.onNext(null);
                }
                if (z3) {
                    cVar.onComplete();
                    return;
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
            aVar.clear();
        }

        void e() {
            l3.c<? super T> cVar = this.f67720a;
            a<Object> aVar = this.f67723d;
            long j4 = this.f67728i;
            int i2 = 1;
            do {
                long j5 = this.f67722c.get();
                while (j4 != j5) {
                    if (this.f67726g) {
                        aVar.clear();
                        return;
                    } else if (this.f67724e.get() != null) {
                        aVar.clear();
                        cVar.onError(this.f67724e.c());
                        return;
                    } else if (aVar.A() == this.f67725f) {
                        cVar.onComplete();
                        return;
                    } else {
                        Object poll = aVar.poll();
                        if (poll == null) {
                            break;
                        } else if (poll != NotificationLite.COMPLETE) {
                            cVar.onNext(poll);
                            j4++;
                        }
                    }
                }
                if (j4 == j5) {
                    if (this.f67724e.get() != null) {
                        aVar.clear();
                        cVar.onError(this.f67724e.c());
                        return;
                    }
                    while (aVar.peek() == NotificationLite.COMPLETE) {
                        aVar.x();
                    }
                    if (aVar.A() == this.f67725f) {
                        cVar.onComplete();
                        return;
                    }
                }
                this.f67728i = j4;
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }

        boolean f() {
            return this.f67726g;
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f67723d.isEmpty();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67723d.offer(NotificationLite.COMPLETE);
            b();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            if (this.f67724e.a(th)) {
                this.f67721b.dispose();
                this.f67723d.offer(NotificationLite.COMPLETE);
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f67721b.b(bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67723d.offer(t3);
            b();
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T t3;
            do {
                t3 = (T) this.f67723d.poll();
            } while (t3 == NotificationLite.COMPLETE);
            return t3;
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f67722c, j4);
                b();
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 2) != 0) {
                this.f67727h = true;
                return 2;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a<T> extends x2.o<T> {
        int A();

        int k0();

        T peek();

        @Override // java.util.Queue, io.reactivex.internal.operators.maybe.MaybeMergeArray.a, x2.o
        @Nullable
        T poll();

        void x();
    }

    public MaybeMergeArray(io.reactivex.w<? extends T>[] wVarArr) {
        this.f67717b = wVarArr;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        a clqSimpleQueue;
        io.reactivex.w[] wVarArr = this.f67717b;
        int length = wVarArr.length;
        if (length <= io.reactivex.j.V()) {
            clqSimpleQueue = new MpscFillOnceSimpleQueue(length);
        } else {
            clqSimpleQueue = new ClqSimpleQueue();
        }
        MergeMaybeObserver mergeMaybeObserver = new MergeMaybeObserver(cVar, length, clqSimpleQueue);
        cVar.onSubscribe(mergeMaybeObserver);
        AtomicThrowable atomicThrowable = mergeMaybeObserver.f67724e;
        for (io.reactivex.w wVar : wVarArr) {
            if (mergeMaybeObserver.f() || atomicThrowable.get() != null) {
                return;
            }
            wVar.a(mergeMaybeObserver);
        }
    }

    /* loaded from: classes5.dex */
    static final class MpscFillOnceSimpleQueue<T> extends AtomicReferenceArray<T> implements a<T> {
        private static final long serialVersionUID = -7969063454040569579L;

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f67729a;

        /* renamed from: b  reason: collision with root package name */
        int f67730b;

        MpscFillOnceSimpleQueue(int i2) {
            super(i2);
            this.f67729a = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.a
        public int A() {
            return this.f67730b;
        }

        @Override // x2.o
        public void clear() {
            while (poll() != null && !isEmpty()) {
            }
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f67730b == k0();
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.a
        public int k0() {
            return this.f67729a.get();
        }

        @Override // x2.o
        public boolean offer(T t3) {
            io.reactivex.internal.functions.a.g(t3, "value is null");
            int andIncrement = this.f67729a.getAndIncrement();
            if (andIncrement < length()) {
                lazySet(andIncrement, t3);
                return true;
            }
            return false;
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.a
        public T peek() {
            int i2 = this.f67730b;
            if (i2 == length()) {
                return null;
            }
            return get(i2);
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.a, java.util.Queue, x2.o
        @Nullable
        public T poll() {
            int i2 = this.f67730b;
            if (i2 == length()) {
                return null;
            }
            AtomicInteger atomicInteger = this.f67729a;
            do {
                T t3 = get(i2);
                if (t3 != null) {
                    this.f67730b = i2 + 1;
                    lazySet(i2, null);
                    return t3;
                }
            } while (atomicInteger.get() != i2);
            return null;
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.a
        public void x() {
            int i2 = this.f67730b;
            lazySet(i2, null);
            this.f67730b = i2 + 1;
        }

        @Override // x2.o
        public boolean offer(T t3, T t4) {
            throw new UnsupportedOperationException();
        }
    }
}
