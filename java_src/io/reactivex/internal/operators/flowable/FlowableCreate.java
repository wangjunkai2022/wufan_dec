package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureStrategy;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableCreate<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.m<T> f66314b;

    /* renamed from: c  reason: collision with root package name */
    final BackpressureStrategy f66315c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class BaseEmitter<T> extends AtomicLong implements io.reactivex.l<T>, l3.d {
        private static final long serialVersionUID = 7326289992464377023L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f66316a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f66317b = new SequentialDisposable();

        BaseEmitter(l3.c<? super T> cVar) {
            this.f66316a = cVar;
        }

        @Override // io.reactivex.l
        public boolean a(Throwable th) {
            return f(th);
        }

        @Override // io.reactivex.l
        public final void b(w2.f fVar) {
            c(new CancellableDisposable(fVar));
        }

        @Override // io.reactivex.l
        public final void c(io.reactivex.disposables.b bVar) {
            this.f66317b.update(bVar);
        }

        @Override // l3.d
        public final void cancel() {
            this.f66317b.dispose();
            h();
        }

        @Override // io.reactivex.l
        public final long d() {
            return get();
        }

        protected void e() {
            if (isCancelled()) {
                return;
            }
            try {
                this.f66316a.onComplete();
            } finally {
                this.f66317b.dispose();
            }
        }

        protected boolean f(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isCancelled()) {
                return false;
            }
            try {
                this.f66316a.onError(th);
                this.f66317b.dispose();
                return true;
            } catch (Throwable th2) {
                this.f66317b.dispose();
                throw th2;
            }
        }

        void g() {
        }

        void h() {
        }

        @Override // io.reactivex.l
        public final boolean isCancelled() {
            return this.f66317b.isDisposed();
        }

        @Override // io.reactivex.i
        public void onComplete() {
            e();
        }

        @Override // io.reactivex.i
        public final void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.d
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
                g();
            }
        }

        @Override // io.reactivex.l
        public final io.reactivex.l<T> serialize() {
            return new SerializedEmitter(this);
        }

        @Override // java.util.concurrent.atomic.AtomicLong
        public String toString() {
            return String.format("%s{%s}", getClass().getSimpleName(), super.toString());
        }
    }

    /* loaded from: classes5.dex */
    static final class BufferAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 2427151001689639875L;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.internal.queue.a<T> f66318c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f66319d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f66320e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f66321f;

        BufferAsyncEmitter(l3.c<? super T> cVar, int i2) {
            super(cVar);
            this.f66318c = new io.reactivex.internal.queue.a<>(i2);
            this.f66321f = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, io.reactivex.l
        public boolean a(Throwable th) {
            if (this.f66320e || isCancelled()) {
                return false;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f66319d = th;
            this.f66320e = true;
            i();
            return true;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        void g() {
            i();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        void h() {
            if (this.f66321f.getAndIncrement() == 0) {
                this.f66318c.clear();
            }
        }

        void i() {
            if (this.f66321f.getAndIncrement() != 0) {
                return;
            }
            l3.c<? super T> cVar = this.f66316a;
            io.reactivex.internal.queue.a<T> aVar = this.f66318c;
            int i2 = 1;
            do {
                long j4 = get();
                long j5 = 0;
                while (j5 != j4) {
                    if (isCancelled()) {
                        aVar.clear();
                        return;
                    }
                    boolean z3 = this.f66320e;
                    Object obj = (T) aVar.poll();
                    boolean z4 = obj == null;
                    if (z3 && z4) {
                        Throwable th = this.f66319d;
                        if (th != null) {
                            f(th);
                            return;
                        } else {
                            e();
                            return;
                        }
                    } else if (z4) {
                        break;
                    } else {
                        cVar.onNext(obj);
                        j5++;
                    }
                }
                if (j5 == j4) {
                    if (isCancelled()) {
                        aVar.clear();
                        return;
                    }
                    boolean z5 = this.f66320e;
                    boolean isEmpty = aVar.isEmpty();
                    if (z5 && isEmpty) {
                        Throwable th2 = this.f66319d;
                        if (th2 != null) {
                            f(th2);
                            return;
                        } else {
                            e();
                            return;
                        }
                    }
                }
                if (j5 != 0) {
                    io.reactivex.internal.util.b.e(this, j5);
                }
                i2 = this.f66321f.addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, io.reactivex.i
        public void onComplete() {
            this.f66320e = true;
            i();
        }

        @Override // io.reactivex.i
        public void onNext(T t3) {
            if (this.f66320e || isCancelled()) {
                return;
            }
            if (t3 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            this.f66318c.offer(t3);
            i();
        }
    }

    /* loaded from: classes5.dex */
    static final class DropAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 8360058422307496563L;

        DropAsyncEmitter(l3.c<? super T> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.NoOverflowBaseAsyncEmitter
        void i() {
        }
    }

    /* loaded from: classes5.dex */
    static final class ErrorAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 338953216916120960L;

        ErrorAsyncEmitter(l3.c<? super T> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.NoOverflowBaseAsyncEmitter
        void i() {
            onError(new MissingBackpressureException("create: could not emit value due to lack of requests"));
        }
    }

    /* loaded from: classes5.dex */
    static final class LatestAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 4023437720691792495L;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<T> f66322c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f66323d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f66324e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f66325f;

        LatestAsyncEmitter(l3.c<? super T> cVar) {
            super(cVar);
            this.f66322c = new AtomicReference<>();
            this.f66325f = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, io.reactivex.l
        public boolean a(Throwable th) {
            if (this.f66324e || isCancelled()) {
                return false;
            }
            if (th == null) {
                onError(new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
            this.f66323d = th;
            this.f66324e = true;
            i();
            return true;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        void g() {
            i();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        void h() {
            if (this.f66325f.getAndIncrement() == 0) {
                this.f66322c.lazySet(null);
            }
        }

        void i() {
            if (this.f66325f.getAndIncrement() != 0) {
                return;
            }
            l3.c<? super T> cVar = this.f66316a;
            AtomicReference<T> atomicReference = this.f66322c;
            int i2 = 1;
            do {
                long j4 = get();
                long j5 = 0;
                while (true) {
                    if (j5 == j4) {
                        break;
                    } else if (isCancelled()) {
                        atomicReference.lazySet(null);
                        return;
                    } else {
                        boolean z3 = this.f66324e;
                        Object obj = (T) atomicReference.getAndSet(null);
                        boolean z4 = obj == null;
                        if (z3 && z4) {
                            Throwable th = this.f66323d;
                            if (th != null) {
                                f(th);
                                return;
                            } else {
                                e();
                                return;
                            }
                        } else if (z4) {
                            break;
                        } else {
                            cVar.onNext(obj);
                            j5++;
                        }
                    }
                }
                if (j5 == j4) {
                    if (isCancelled()) {
                        atomicReference.lazySet(null);
                        return;
                    }
                    boolean z5 = this.f66324e;
                    boolean z6 = atomicReference.get() == null;
                    if (z5 && z6) {
                        Throwable th2 = this.f66323d;
                        if (th2 != null) {
                            f(th2);
                            return;
                        } else {
                            e();
                            return;
                        }
                    }
                }
                if (j5 != 0) {
                    io.reactivex.internal.util.b.e(this, j5);
                }
                i2 = this.f66325f.addAndGet(-i2);
            } while (i2 != 0);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, io.reactivex.i
        public void onComplete() {
            this.f66324e = true;
            i();
        }

        @Override // io.reactivex.i
        public void onNext(T t3) {
            if (this.f66324e || isCancelled()) {
                return;
            }
            if (t3 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            this.f66322c.set(t3);
            i();
        }
    }

    /* loaded from: classes5.dex */
    static final class MissingEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 3776720187248809713L;

        MissingEmitter(l3.c<? super T> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.i
        public void onNext(T t3) {
            long j4;
            if (isCancelled()) {
                return;
            }
            if (t3 != null) {
                this.f66316a.onNext(t3);
                do {
                    j4 = get();
                    if (j4 == 0) {
                        return;
                    }
                } while (!compareAndSet(j4, j4 - 1));
                return;
            }
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
        }
    }

    /* loaded from: classes5.dex */
    static abstract class NoOverflowBaseAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 4127754106204442833L;

        NoOverflowBaseAsyncEmitter(l3.c<? super T> cVar) {
            super(cVar);
        }

        abstract void i();

        @Override // io.reactivex.i
        public final void onNext(T t3) {
            if (isCancelled()) {
                return;
            }
            if (t3 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (get() != 0) {
                this.f66316a.onNext(t3);
                io.reactivex.internal.util.b.e(this, 1L);
            } else {
                i();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class SerializedEmitter<T> extends AtomicInteger implements io.reactivex.l<T> {
        private static final long serialVersionUID = 4883307006032401862L;

        /* renamed from: a  reason: collision with root package name */
        final BaseEmitter<T> f66326a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f66327b = new AtomicThrowable();

        /* renamed from: c  reason: collision with root package name */
        final x2.n<T> f66328c = new io.reactivex.internal.queue.a(16);

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f66329d;

        SerializedEmitter(BaseEmitter<T> baseEmitter) {
            this.f66326a = baseEmitter;
        }

        @Override // io.reactivex.l
        public boolean a(Throwable th) {
            if (!this.f66326a.isCancelled() && !this.f66329d) {
                if (th == null) {
                    th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.f66327b.a(th)) {
                    this.f66329d = true;
                    e();
                    return true;
                }
            }
            return false;
        }

        @Override // io.reactivex.l
        public void b(w2.f fVar) {
            this.f66326a.b(fVar);
        }

        @Override // io.reactivex.l
        public void c(io.reactivex.disposables.b bVar) {
            this.f66326a.c(bVar);
        }

        @Override // io.reactivex.l
        public long d() {
            return this.f66326a.d();
        }

        void e() {
            if (getAndIncrement() == 0) {
                f();
            }
        }

        void f() {
            BaseEmitter<T> baseEmitter = this.f66326a;
            x2.n<T> nVar = this.f66328c;
            AtomicThrowable atomicThrowable = this.f66327b;
            int i2 = 1;
            while (!baseEmitter.isCancelled()) {
                if (atomicThrowable.get() != null) {
                    nVar.clear();
                    baseEmitter.onError(atomicThrowable.c());
                    return;
                }
                boolean z3 = this.f66329d;
                T poll = nVar.poll();
                boolean z4 = poll == null;
                if (z3 && z4) {
                    baseEmitter.onComplete();
                    return;
                } else if (z4) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    baseEmitter.onNext(poll);
                }
            }
            nVar.clear();
        }

        @Override // io.reactivex.l
        public boolean isCancelled() {
            return this.f66326a.isCancelled();
        }

        @Override // io.reactivex.i
        public void onComplete() {
            if (this.f66326a.isCancelled() || this.f66329d) {
                return;
            }
            this.f66329d = true;
            e();
        }

        @Override // io.reactivex.i
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.i
        public void onNext(T t3) {
            if (this.f66326a.isCancelled() || this.f66329d) {
                return;
            }
            if (t3 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f66326a.onNext(t3);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                x2.n<T> nVar = this.f66328c;
                synchronized (nVar) {
                    nVar.offer(t3);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            f();
        }

        @Override // io.reactivex.l
        public io.reactivex.l<T> serialize() {
            return this;
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.f66326a.toString();
        }
    }

    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f66330a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f66330a = iArr;
            try {
                iArr[BackpressureStrategy.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66330a[BackpressureStrategy.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f66330a[BackpressureStrategy.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f66330a[BackpressureStrategy.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public FlowableCreate(io.reactivex.m<T> mVar, BackpressureStrategy backpressureStrategy) {
        this.f66314b = mVar;
        this.f66315c = backpressureStrategy;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super T> cVar) {
        BaseEmitter missingEmitter;
        int i2 = a.f66330a[this.f66315c.ordinal()];
        if (i2 == 1) {
            missingEmitter = new MissingEmitter(cVar);
        } else if (i2 == 2) {
            missingEmitter = new ErrorAsyncEmitter(cVar);
        } else if (i2 == 3) {
            missingEmitter = new DropAsyncEmitter(cVar);
        } else if (i2 != 4) {
            missingEmitter = new BufferAsyncEmitter(cVar, io.reactivex.j.V());
        } else {
            missingEmitter = new LatestAsyncEmitter(cVar);
        }
        cVar.onSubscribe(missingEmitter);
        try {
            this.f66314b.a(missingEmitter);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            missingEmitter.onError(th);
        }
    }
}
