package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableCache<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final a<T> f68183b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicBoolean f68184c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ReplayDisposable<T> extends AtomicInteger implements io.reactivex.disposables.b {
        private static final long serialVersionUID = 7058506693698832024L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68185a;

        /* renamed from: b  reason: collision with root package name */
        final a<T> f68186b;

        /* renamed from: c  reason: collision with root package name */
        Object[] f68187c;

        /* renamed from: d  reason: collision with root package name */
        int f68188d;

        /* renamed from: e  reason: collision with root package name */
        int f68189e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f68190f;

        ReplayDisposable(io.reactivex.g0<? super T> g0Var, a<T> aVar) {
            this.f68185a = g0Var;
            this.f68186b = aVar;
        }

        public void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super T> g0Var = this.f68185a;
            int i2 = 1;
            while (!this.f68190f) {
                int c4 = this.f68186b.c();
                if (c4 != 0) {
                    Object[] objArr = this.f68187c;
                    if (objArr == null) {
                        objArr = this.f68186b.b();
                        this.f68187c = objArr;
                    }
                    int length = objArr.length - 1;
                    int i4 = this.f68189e;
                    int i5 = this.f68188d;
                    while (i4 < c4) {
                        if (this.f68190f) {
                            return;
                        }
                        if (i5 == length) {
                            objArr = (Object[]) objArr[length];
                            i5 = 0;
                        }
                        if (NotificationLite.accept(objArr[i5], g0Var)) {
                            return;
                        }
                        i5++;
                        i4++;
                    }
                    if (this.f68190f) {
                        return;
                    }
                    this.f68189e = i4;
                    this.f68188d = i5;
                    this.f68187c = objArr;
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68190f) {
                return;
            }
            this.f68190f = true;
            this.f68186b.f(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68190f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T> extends io.reactivex.internal.util.h implements io.reactivex.g0<T> {

        /* renamed from: k  reason: collision with root package name */
        static final ReplayDisposable[] f68191k = new ReplayDisposable[0];

        /* renamed from: l  reason: collision with root package name */
        static final ReplayDisposable[] f68192l = new ReplayDisposable[0];

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.z<? extends T> f68193f;

        /* renamed from: g  reason: collision with root package name */
        final SequentialDisposable f68194g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicReference<ReplayDisposable<T>[]> f68195h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f68196i;

        /* renamed from: j  reason: collision with root package name */
        boolean f68197j;

        a(io.reactivex.z<? extends T> zVar, int i2) {
            super(i2);
            this.f68193f = zVar;
            this.f68195h = new AtomicReference<>(f68191k);
            this.f68194g = new SequentialDisposable();
        }

        public boolean d(ReplayDisposable<T> replayDisposable) {
            ReplayDisposable<T>[] replayDisposableArr;
            ReplayDisposable<T>[] replayDisposableArr2;
            do {
                replayDisposableArr = this.f68195h.get();
                if (replayDisposableArr == f68192l) {
                    return false;
                }
                int length = replayDisposableArr.length;
                replayDisposableArr2 = new ReplayDisposable[length + 1];
                System.arraycopy(replayDisposableArr, 0, replayDisposableArr2, 0, length);
                replayDisposableArr2[length] = replayDisposable;
            } while (!this.f68195h.compareAndSet(replayDisposableArr, replayDisposableArr2));
            return true;
        }

        public void e() {
            this.f68193f.a(this);
            this.f68196i = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void f(ReplayDisposable<T> replayDisposable) {
            ReplayDisposable<T>[] replayDisposableArr;
            ReplayDisposable[] replayDisposableArr2;
            do {
                replayDisposableArr = this.f68195h.get();
                int length = replayDisposableArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = -1;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    } else if (replayDisposableArr[i4].equals(replayDisposable)) {
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
                    replayDisposableArr2 = f68191k;
                } else {
                    ReplayDisposable[] replayDisposableArr3 = new ReplayDisposable[length - 1];
                    System.arraycopy(replayDisposableArr, 0, replayDisposableArr3, 0, i2);
                    System.arraycopy(replayDisposableArr, i2 + 1, replayDisposableArr3, i2, (length - i2) - 1);
                    replayDisposableArr2 = replayDisposableArr3;
                }
            } while (!this.f68195h.compareAndSet(replayDisposableArr, replayDisposableArr2));
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68197j) {
                return;
            }
            this.f68197j = true;
            a(NotificationLite.complete());
            this.f68194g.dispose();
            for (ReplayDisposable<T> replayDisposable : this.f68195h.getAndSet(f68192l)) {
                replayDisposable.a();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68197j) {
                return;
            }
            this.f68197j = true;
            a(NotificationLite.error(th));
            this.f68194g.dispose();
            for (ReplayDisposable<T> replayDisposable : this.f68195h.getAndSet(f68192l)) {
                replayDisposable.a();
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68197j) {
                return;
            }
            a(NotificationLite.next(t3));
            for (ReplayDisposable<T> replayDisposable : this.f68195h.get()) {
                replayDisposable.a();
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f68194g.update(bVar);
        }
    }

    private ObservableCache(io.reactivex.z<T> zVar, a<T> aVar) {
        super(zVar);
        this.f68183b = aVar;
        this.f68184c = new AtomicBoolean();
    }

    public static <T> io.reactivex.z<T> g8(io.reactivex.z<T> zVar) {
        return h8(zVar, 16);
    }

    public static <T> io.reactivex.z<T> h8(io.reactivex.z<T> zVar, int i2) {
        io.reactivex.internal.functions.a.h(i2, "capacityHint");
        return io.reactivex.plugins.a.R(new ObservableCache(zVar, new a(zVar, i2)));
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        ReplayDisposable<T> replayDisposable = new ReplayDisposable<>(g0Var, this.f68183b);
        g0Var.onSubscribe(replayDisposable);
        this.f68183b.d(replayDisposable);
        if (!this.f68184c.get() && this.f68184c.compareAndSet(false, true)) {
            this.f68183b.e();
        }
        replayDisposable.a();
    }

    int f8() {
        return this.f68183b.c();
    }

    boolean i8() {
        return this.f68183b.f68195h.get().length != 0;
    }

    boolean j8() {
        return this.f68183b.f68196i;
    }
}
