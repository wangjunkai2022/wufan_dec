package io.reactivex.subjects;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.g0;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;
import java.lang.reflect.Array;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* compiled from: BehaviorSubject.java */
/* loaded from: classes5.dex */
public final class a<T> extends c<T> {

    /* renamed from: h  reason: collision with root package name */
    private static final Object[] f70366h = new Object[0];

    /* renamed from: i  reason: collision with root package name */
    static final C0472a[] f70367i = new C0472a[0];

    /* renamed from: j  reason: collision with root package name */
    static final C0472a[] f70368j = new C0472a[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<Object> f70369a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<C0472a<T>[]> f70370b;

    /* renamed from: c  reason: collision with root package name */
    final ReadWriteLock f70371c;

    /* renamed from: d  reason: collision with root package name */
    final Lock f70372d;

    /* renamed from: e  reason: collision with root package name */
    final Lock f70373e;

    /* renamed from: f  reason: collision with root package name */
    final AtomicReference<Throwable> f70374f;

    /* renamed from: g  reason: collision with root package name */
    long f70375g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BehaviorSubject.java */
    /* renamed from: io.reactivex.subjects.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0472a<T> implements io.reactivex.disposables.b, a.InterfaceC0469a<Object> {

        /* renamed from: a  reason: collision with root package name */
        final g0<? super T> f70376a;

        /* renamed from: b  reason: collision with root package name */
        final a<T> f70377b;

        /* renamed from: c  reason: collision with root package name */
        boolean f70378c;

        /* renamed from: d  reason: collision with root package name */
        boolean f70379d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.internal.util.a<Object> f70380e;

        /* renamed from: f  reason: collision with root package name */
        boolean f70381f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f70382g;

        /* renamed from: h  reason: collision with root package name */
        long f70383h;

        C0472a(g0<? super T> g0Var, a<T> aVar) {
            this.f70376a = g0Var;
            this.f70377b = aVar;
        }

        void a() {
            if (this.f70382g) {
                return;
            }
            synchronized (this) {
                if (this.f70382g) {
                    return;
                }
                if (this.f70378c) {
                    return;
                }
                a<T> aVar = this.f70377b;
                Lock lock = aVar.f70372d;
                lock.lock();
                this.f70383h = aVar.f70375g;
                Object obj = aVar.f70369a.get();
                lock.unlock();
                this.f70379d = obj != null;
                this.f70378c = true;
                if (obj == null || test(obj)) {
                    return;
                }
                b();
            }
        }

        void b() {
            io.reactivex.internal.util.a<Object> aVar;
            while (!this.f70382g) {
                synchronized (this) {
                    aVar = this.f70380e;
                    if (aVar == null) {
                        this.f70379d = false;
                        return;
                    }
                    this.f70380e = null;
                }
                aVar.d(this);
            }
        }

        void c(Object obj, long j4) {
            if (this.f70382g) {
                return;
            }
            if (!this.f70381f) {
                synchronized (this) {
                    if (this.f70382g) {
                        return;
                    }
                    if (this.f70383h == j4) {
                        return;
                    }
                    if (this.f70379d) {
                        io.reactivex.internal.util.a<Object> aVar = this.f70380e;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f70380e = aVar;
                        }
                        aVar.c(obj);
                        return;
                    }
                    this.f70378c = true;
                    this.f70381f = true;
                }
            }
            test(obj);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f70382g) {
                return;
            }
            this.f70382g = true;
            this.f70377b.r8(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f70382g;
        }

        @Override // io.reactivex.internal.util.a.InterfaceC0469a, w2.r
        public boolean test(Object obj) {
            return this.f70382g || NotificationLite.accept(obj, this.f70376a);
        }
    }

    a() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f70371c = reentrantReadWriteLock;
        this.f70372d = reentrantReadWriteLock.readLock();
        this.f70373e = reentrantReadWriteLock.writeLock();
        this.f70370b = new AtomicReference<>(f70367i);
        this.f70369a = new AtomicReference<>();
        this.f70374f = new AtomicReference<>();
    }

    @CheckReturnValue
    @NonNull
    public static <T> a<T> l8() {
        return new a<>();
    }

    @CheckReturnValue
    @NonNull
    public static <T> a<T> m8(T t3) {
        return new a<>(t3);
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super T> g0Var) {
        C0472a<T> c0472a = new C0472a<>(g0Var, this);
        g0Var.onSubscribe(c0472a);
        if (k8(c0472a)) {
            if (c0472a.f70382g) {
                r8(c0472a);
                return;
            } else {
                c0472a.a();
                return;
            }
        }
        Throwable th = this.f70374f.get();
        if (th == ExceptionHelper.f70084a) {
            g0Var.onComplete();
        } else {
            g0Var.onError(th);
        }
    }

    @Override // io.reactivex.subjects.c
    @Nullable
    public Throwable f8() {
        Object obj = this.f70369a.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Override // io.reactivex.subjects.c
    public boolean g8() {
        return NotificationLite.isComplete(this.f70369a.get());
    }

    @Override // io.reactivex.subjects.c
    public boolean h8() {
        return this.f70370b.get().length != 0;
    }

    @Override // io.reactivex.subjects.c
    public boolean i8() {
        return NotificationLite.isError(this.f70369a.get());
    }

    boolean k8(C0472a<T> c0472a) {
        C0472a<T>[] c0472aArr;
        C0472a<T>[] c0472aArr2;
        do {
            c0472aArr = this.f70370b.get();
            if (c0472aArr == f70368j) {
                return false;
            }
            int length = c0472aArr.length;
            c0472aArr2 = new C0472a[length + 1];
            System.arraycopy(c0472aArr, 0, c0472aArr2, 0, length);
            c0472aArr2[length] = c0472a;
        } while (!this.f70370b.compareAndSet(c0472aArr, c0472aArr2));
        return true;
    }

    @Nullable
    public T n8() {
        Object obj = this.f70369a.get();
        if (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) NotificationLite.getValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public Object[] o8() {
        Object[] objArr = f70366h;
        Object[] p8 = p8(objArr);
        return p8 == objArr ? new Object[0] : p8;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f70374f.compareAndSet(null, ExceptionHelper.f70084a)) {
            Object complete = NotificationLite.complete();
            for (C0472a<T> c0472a : u8(complete)) {
                c0472a.c(complete, this.f70375g);
            }
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f70374f.compareAndSet(null, th)) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        Object error = NotificationLite.error(th);
        for (C0472a<T> c0472a : u8(error)) {
            c0472a.c(error, this.f70375g);
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70374f.get() != null) {
            return;
        }
        Object next = NotificationLite.next(t3);
        s8(next);
        for (C0472a<T> c0472a : this.f70370b.get()) {
            c0472a.c(next, this.f70375g);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (this.f70374f.get() != null) {
            bVar.dispose();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public T[] p8(T[] tArr) {
        Object obj = this.f70369a.get();
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

    public boolean q8() {
        Object obj = this.f70369a.get();
        return (obj == null || NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void r8(C0472a<T> c0472a) {
        C0472a<T>[] c0472aArr;
        C0472a[] c0472aArr2;
        do {
            c0472aArr = this.f70370b.get();
            int length = c0472aArr.length;
            if (length == 0) {
                return;
            }
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (c0472aArr[i4] == c0472a) {
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
                c0472aArr2 = f70367i;
            } else {
                C0472a[] c0472aArr3 = new C0472a[length - 1];
                System.arraycopy(c0472aArr, 0, c0472aArr3, 0, i2);
                System.arraycopy(c0472aArr, i2 + 1, c0472aArr3, i2, (length - i2) - 1);
                c0472aArr2 = c0472aArr3;
            }
        } while (!this.f70370b.compareAndSet(c0472aArr, c0472aArr2));
    }

    void s8(Object obj) {
        this.f70373e.lock();
        this.f70375g++;
        this.f70369a.lazySet(obj);
        this.f70373e.unlock();
    }

    int t8() {
        return this.f70370b.get().length;
    }

    C0472a<T>[] u8(Object obj) {
        AtomicReference<C0472a<T>[]> atomicReference = this.f70370b;
        C0472a<T>[] c0472aArr = f70368j;
        C0472a<T>[] andSet = atomicReference.getAndSet(c0472aArr);
        if (andSet != c0472aArr) {
            s8(obj);
        }
        return andSet;
    }

    a(T t3) {
        this();
        this.f70369a.lazySet(io.reactivex.internal.functions.a.g(t3, "defaultValue is null"));
    }
}
