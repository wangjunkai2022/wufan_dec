package io.reactivex.processors;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;
import java.lang.reflect.Array;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import l3.c;
import l3.d;
/* loaded from: classes5.dex */
public final class BehaviorProcessor<T> extends a<T> {

    /* renamed from: i  reason: collision with root package name */
    static final Object[] f70180i = new Object[0];

    /* renamed from: j  reason: collision with root package name */
    static final BehaviorSubscription[] f70181j = new BehaviorSubscription[0];

    /* renamed from: k  reason: collision with root package name */
    static final BehaviorSubscription[] f70182k = new BehaviorSubscription[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<BehaviorSubscription<T>[]> f70183b;

    /* renamed from: c  reason: collision with root package name */
    final ReadWriteLock f70184c;

    /* renamed from: d  reason: collision with root package name */
    final Lock f70185d;

    /* renamed from: e  reason: collision with root package name */
    final Lock f70186e;

    /* renamed from: f  reason: collision with root package name */
    final AtomicReference<Object> f70187f;

    /* renamed from: g  reason: collision with root package name */
    final AtomicReference<Throwable> f70188g;

    /* renamed from: h  reason: collision with root package name */
    long f70189h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class BehaviorSubscription<T> extends AtomicLong implements d, a.InterfaceC0469a<Object> {
        private static final long serialVersionUID = 3293175281126227086L;

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f70190a;

        /* renamed from: b  reason: collision with root package name */
        final BehaviorProcessor<T> f70191b;

        /* renamed from: c  reason: collision with root package name */
        boolean f70192c;

        /* renamed from: d  reason: collision with root package name */
        boolean f70193d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.internal.util.a<Object> f70194e;

        /* renamed from: f  reason: collision with root package name */
        boolean f70195f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f70196g;

        /* renamed from: h  reason: collision with root package name */
        long f70197h;

        BehaviorSubscription(c<? super T> cVar, BehaviorProcessor<T> behaviorProcessor) {
            this.f70190a = cVar;
            this.f70191b = behaviorProcessor;
        }

        void a() {
            if (this.f70196g) {
                return;
            }
            synchronized (this) {
                if (this.f70196g) {
                    return;
                }
                if (this.f70192c) {
                    return;
                }
                BehaviorProcessor<T> behaviorProcessor = this.f70191b;
                Lock lock = behaviorProcessor.f70185d;
                lock.lock();
                this.f70197h = behaviorProcessor.f70189h;
                Object obj = behaviorProcessor.f70187f.get();
                lock.unlock();
                this.f70193d = obj != null;
                this.f70192c = true;
                if (obj == null || test(obj)) {
                    return;
                }
                b();
            }
        }

        void b() {
            io.reactivex.internal.util.a<Object> aVar;
            while (!this.f70196g) {
                synchronized (this) {
                    aVar = this.f70194e;
                    if (aVar == null) {
                        this.f70193d = false;
                        return;
                    }
                    this.f70194e = null;
                }
                aVar.d(this);
            }
        }

        void c(Object obj, long j4) {
            if (this.f70196g) {
                return;
            }
            if (!this.f70195f) {
                synchronized (this) {
                    if (this.f70196g) {
                        return;
                    }
                    if (this.f70197h == j4) {
                        return;
                    }
                    if (this.f70193d) {
                        io.reactivex.internal.util.a<Object> aVar = this.f70194e;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f70194e = aVar;
                        }
                        aVar.c(obj);
                        return;
                    }
                    this.f70192c = true;
                    this.f70195f = true;
                }
            }
            test(obj);
        }

        @Override // l3.d
        public void cancel() {
            if (this.f70196g) {
                return;
            }
            this.f70196g = true;
            this.f70191b.W8(this);
        }

        public boolean d() {
            return get() == 0;
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }

        @Override // io.reactivex.internal.util.a.InterfaceC0469a, w2.r
        public boolean test(Object obj) {
            if (this.f70196g) {
                return true;
            }
            if (NotificationLite.isComplete(obj)) {
                this.f70190a.onComplete();
                return true;
            } else if (NotificationLite.isError(obj)) {
                this.f70190a.onError(NotificationLite.getError(obj));
                return true;
            } else {
                long j4 = get();
                if (j4 != 0) {
                    this.f70190a.onNext((Object) NotificationLite.getValue(obj));
                    if (j4 != Long.MAX_VALUE) {
                        decrementAndGet();
                        return false;
                    }
                    return false;
                }
                cancel();
                this.f70190a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
                return true;
            }
        }
    }

    BehaviorProcessor() {
        this.f70187f = new AtomicReference<>();
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f70184c = reentrantReadWriteLock;
        this.f70185d = reentrantReadWriteLock.readLock();
        this.f70186e = reentrantReadWriteLock.writeLock();
        this.f70183b = new AtomicReference<>(f70181j);
        this.f70188g = new AtomicReference<>();
    }

    @CheckReturnValue
    @NonNull
    public static <T> BehaviorProcessor<T> P8() {
        return new BehaviorProcessor<>();
    }

    @CheckReturnValue
    @NonNull
    public static <T> BehaviorProcessor<T> Q8(T t3) {
        io.reactivex.internal.functions.a.g(t3, "defaultValue is null");
        return new BehaviorProcessor<>(t3);
    }

    @Override // io.reactivex.processors.a
    @Nullable
    public Throwable J8() {
        Object obj = this.f70187f.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Override // io.reactivex.processors.a
    public boolean K8() {
        return NotificationLite.isComplete(this.f70187f.get());
    }

    @Override // io.reactivex.processors.a
    public boolean L8() {
        return this.f70183b.get().length != 0;
    }

    @Override // io.reactivex.processors.a
    public boolean M8() {
        return NotificationLite.isError(this.f70187f.get());
    }

    boolean O8(BehaviorSubscription<T> behaviorSubscription) {
        BehaviorSubscription<T>[] behaviorSubscriptionArr;
        BehaviorSubscription<T>[] behaviorSubscriptionArr2;
        do {
            behaviorSubscriptionArr = this.f70183b.get();
            if (behaviorSubscriptionArr == f70182k) {
                return false;
            }
            int length = behaviorSubscriptionArr.length;
            behaviorSubscriptionArr2 = new BehaviorSubscription[length + 1];
            System.arraycopy(behaviorSubscriptionArr, 0, behaviorSubscriptionArr2, 0, length);
            behaviorSubscriptionArr2[length] = behaviorSubscription;
        } while (!this.f70183b.compareAndSet(behaviorSubscriptionArr, behaviorSubscriptionArr2));
        return true;
    }

    @Nullable
    public T R8() {
        Object obj = this.f70187f.get();
        if (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) NotificationLite.getValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public Object[] S8() {
        Object[] objArr = f70180i;
        Object[] T8 = T8(objArr);
        return T8 == objArr ? new Object[0] : T8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public T[] T8(T[] tArr) {
        Object obj = this.f70187f.get();
        if (obj != null && !NotificationLite.isComplete(obj) && !NotificationLite.isError(obj)) {
            Object value = NotificationLite.getValue(obj);
            if (tArr.length != 0) {
                tArr[0] = value;
                if (tArr.length != 1) {
                    tArr[1] = 0;
                    return tArr;
                }
                return tArr;
            }
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
            tArr2[0] = value;
            return tArr2;
        }
        if (tArr.length != 0) {
            tArr[0] = 0;
        }
        return tArr;
    }

    public boolean U8() {
        Object obj = this.f70187f.get();
        return (obj == null || NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? false : true;
    }

    public boolean V8(T t3) {
        if (t3 == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return true;
        }
        BehaviorSubscription<T>[] behaviorSubscriptionArr = this.f70183b.get();
        for (BehaviorSubscription<T> behaviorSubscription : behaviorSubscriptionArr) {
            if (behaviorSubscription.d()) {
                return false;
            }
        }
        Object next = NotificationLite.next(t3);
        X8(next);
        for (BehaviorSubscription<T> behaviorSubscription2 : behaviorSubscriptionArr) {
            behaviorSubscription2.c(next, this.f70189h);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void W8(BehaviorSubscription<T> behaviorSubscription) {
        BehaviorSubscription<T>[] behaviorSubscriptionArr;
        BehaviorSubscription[] behaviorSubscriptionArr2;
        do {
            behaviorSubscriptionArr = this.f70183b.get();
            int length = behaviorSubscriptionArr.length;
            if (length == 0) {
                return;
            }
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (behaviorSubscriptionArr[i4] == behaviorSubscription) {
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
                behaviorSubscriptionArr2 = f70181j;
            } else {
                BehaviorSubscription[] behaviorSubscriptionArr3 = new BehaviorSubscription[length - 1];
                System.arraycopy(behaviorSubscriptionArr, 0, behaviorSubscriptionArr3, 0, i2);
                System.arraycopy(behaviorSubscriptionArr, i2 + 1, behaviorSubscriptionArr3, i2, (length - i2) - 1);
                behaviorSubscriptionArr2 = behaviorSubscriptionArr3;
            }
        } while (!this.f70183b.compareAndSet(behaviorSubscriptionArr, behaviorSubscriptionArr2));
    }

    void X8(Object obj) {
        Lock lock = this.f70186e;
        lock.lock();
        this.f70189h++;
        this.f70187f.lazySet(obj);
        lock.unlock();
    }

    int Y8() {
        return this.f70183b.get().length;
    }

    BehaviorSubscription<T>[] Z8(Object obj) {
        BehaviorSubscription<T>[] behaviorSubscriptionArr = this.f70183b.get();
        BehaviorSubscription<T>[] behaviorSubscriptionArr2 = f70182k;
        if (behaviorSubscriptionArr != behaviorSubscriptionArr2 && (behaviorSubscriptionArr = this.f70183b.getAndSet(behaviorSubscriptionArr2)) != behaviorSubscriptionArr2) {
            X8(obj);
        }
        return behaviorSubscriptionArr;
    }

    @Override // io.reactivex.j
    protected void h6(c<? super T> cVar) {
        BehaviorSubscription<T> behaviorSubscription = new BehaviorSubscription<>(cVar, this);
        cVar.onSubscribe(behaviorSubscription);
        if (O8(behaviorSubscription)) {
            if (behaviorSubscription.f70196g) {
                W8(behaviorSubscription);
                return;
            } else {
                behaviorSubscription.a();
                return;
            }
        }
        Throwable th = this.f70188g.get();
        if (th == ExceptionHelper.f70084a) {
            cVar.onComplete();
        } else {
            cVar.onError(th);
        }
    }

    @Override // l3.c
    public void onComplete() {
        if (this.f70188g.compareAndSet(null, ExceptionHelper.f70084a)) {
            Object complete = NotificationLite.complete();
            for (BehaviorSubscription<T> behaviorSubscription : Z8(complete)) {
                behaviorSubscription.c(complete, this.f70189h);
            }
        }
    }

    @Override // l3.c
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f70188g.compareAndSet(null, th)) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        Object error = NotificationLite.error(th);
        for (BehaviorSubscription<T> behaviorSubscription : Z8(error)) {
            behaviorSubscription.c(error, this.f70189h);
        }
    }

    @Override // l3.c
    public void onNext(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70188g.get() != null) {
            return;
        }
        Object next = NotificationLite.next(t3);
        X8(next);
        for (BehaviorSubscription<T> behaviorSubscription : this.f70183b.get()) {
            behaviorSubscription.c(next, this.f70189h);
        }
    }

    @Override // l3.c
    public void onSubscribe(d dVar) {
        if (this.f70188g.get() != null) {
            dVar.cancel();
        } else {
            dVar.request(Long.MAX_VALUE);
        }
    }

    BehaviorProcessor(T t3) {
        this();
        this.f70187f.lazySet(io.reactivex.internal.functions.a.g(t3, "defaultValue is null"));
    }
}
