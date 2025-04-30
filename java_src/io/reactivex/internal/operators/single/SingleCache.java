package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleCache<T> extends i0<T> implements l0<T> {

    /* renamed from: f  reason: collision with root package name */
    static final CacheDisposable[] f69589f = new CacheDisposable[0];

    /* renamed from: g  reason: collision with root package name */
    static final CacheDisposable[] f69590g = new CacheDisposable[0];

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69591a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicInteger f69592b = new AtomicInteger();

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<CacheDisposable<T>[]> f69593c = new AtomicReference<>(f69589f);

    /* renamed from: d  reason: collision with root package name */
    T f69594d;

    /* renamed from: e  reason: collision with root package name */
    Throwable f69595e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class CacheDisposable<T> extends AtomicBoolean implements io.reactivex.disposables.b {
        private static final long serialVersionUID = 7514387411091976596L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69596a;

        /* renamed from: b  reason: collision with root package name */
        final SingleCache<T> f69597b;

        CacheDisposable(l0<? super T> l0Var, SingleCache<T> singleCache) {
            this.f69596a = l0Var;
            this.f69597b = singleCache;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f69597b.L1(this);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get();
        }
    }

    public SingleCache(o0<? extends T> o0Var) {
        this.f69591a = o0Var;
    }

    boolean K1(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable<T>[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f69593c.get();
            if (cacheDisposableArr == f69590g) {
                return false;
            }
            int length = cacheDisposableArr.length;
            cacheDisposableArr2 = new CacheDisposable[length + 1];
            System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, length);
            cacheDisposableArr2[length] = cacheDisposable;
        } while (!this.f69593c.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void L1(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f69593c.get();
            int length = cacheDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (cacheDisposableArr[i4] == cacheDisposable) {
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
                cacheDisposableArr2 = f69589f;
            } else {
                CacheDisposable[] cacheDisposableArr3 = new CacheDisposable[length - 1];
                System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr3, 0, i2);
                System.arraycopy(cacheDisposableArr, i2 + 1, cacheDisposableArr3, i2, (length - i2) - 1);
                cacheDisposableArr2 = cacheDisposableArr3;
            }
        } while (!this.f69593c.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        CacheDisposable<T> cacheDisposable = new CacheDisposable<>(l0Var, this);
        l0Var.onSubscribe(cacheDisposable);
        if (K1(cacheDisposable)) {
            if (cacheDisposable.isDisposed()) {
                L1(cacheDisposable);
            }
            if (this.f69592b.getAndIncrement() == 0) {
                this.f69591a.a(this);
                return;
            }
            return;
        }
        Throwable th = this.f69595e;
        if (th != null) {
            l0Var.onError(th);
        } else {
            l0Var.onSuccess((T) this.f69594d);
        }
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        CacheDisposable<T>[] andSet;
        this.f69595e = th;
        for (CacheDisposable<T> cacheDisposable : this.f69593c.getAndSet(f69590g)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.f69596a.onError(th);
            }
        }
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t3) {
        CacheDisposable<T>[] andSet;
        this.f69594d = t3;
        for (CacheDisposable<T> cacheDisposable : this.f69593c.getAndSet(f69590g)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.f69596a.onSuccess(t3);
            }
        }
    }
}
