package io.reactivex.internal.operators.maybe;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeCache<T> extends io.reactivex.q<T> implements io.reactivex.t<T> {

    /* renamed from: e  reason: collision with root package name */
    static final CacheDisposable[] f67595e = new CacheDisposable[0];

    /* renamed from: f  reason: collision with root package name */
    static final CacheDisposable[] f67596f = new CacheDisposable[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.w<T>> f67597a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<CacheDisposable<T>[]> f67598b = new AtomicReference<>(f67595e);

    /* renamed from: c  reason: collision with root package name */
    T f67599c;

    /* renamed from: d  reason: collision with root package name */
    Throwable f67600d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class CacheDisposable<T> extends AtomicReference<MaybeCache<T>> implements io.reactivex.disposables.b {
        private static final long serialVersionUID = -5791853038359966195L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67601a;

        CacheDisposable(io.reactivex.t<? super T> tVar, MaybeCache<T> maybeCache) {
            super(maybeCache);
            this.f67601a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            MaybeCache<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.d2(this);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == null;
        }
    }

    public MaybeCache(io.reactivex.w<T> wVar) {
        this.f67597a = new AtomicReference<>(wVar);
    }

    boolean c2(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable<T>[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f67598b.get();
            if (cacheDisposableArr == f67596f) {
                return false;
            }
            int length = cacheDisposableArr.length;
            cacheDisposableArr2 = new CacheDisposable[length + 1];
            System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, length);
            cacheDisposableArr2[length] = cacheDisposable;
        } while (!this.f67598b.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void d2(CacheDisposable<T> cacheDisposable) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f67598b.get();
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
                cacheDisposableArr2 = f67595e;
            } else {
                CacheDisposable[] cacheDisposableArr3 = new CacheDisposable[length - 1];
                System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr3, 0, i2);
                System.arraycopy(cacheDisposableArr, i2 + 1, cacheDisposableArr3, i2, (length - i2) - 1);
                cacheDisposableArr2 = cacheDisposableArr3;
            }
        } while (!this.f67598b.compareAndSet(cacheDisposableArr, cacheDisposableArr2));
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        CacheDisposable<T> cacheDisposable = new CacheDisposable<>(tVar, this);
        tVar.onSubscribe(cacheDisposable);
        if (c2(cacheDisposable)) {
            if (cacheDisposable.isDisposed()) {
                d2(cacheDisposable);
                return;
            }
            io.reactivex.w<T> andSet = this.f67597a.getAndSet(null);
            if (andSet != null) {
                andSet.a(this);
            }
        } else if (cacheDisposable.isDisposed()) {
        } else {
            Throwable th = this.f67600d;
            if (th != null) {
                tVar.onError(th);
                return;
            }
            Object obj = (T) this.f67599c;
            if (obj != null) {
                tVar.onSuccess(obj);
            } else {
                tVar.onComplete();
            }
        }
    }

    @Override // io.reactivex.t
    public void onComplete() {
        CacheDisposable<T>[] andSet;
        for (CacheDisposable<T> cacheDisposable : this.f67598b.getAndSet(f67596f)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.f67601a.onComplete();
            }
        }
    }

    @Override // io.reactivex.t
    public void onError(Throwable th) {
        CacheDisposable<T>[] andSet;
        this.f67600d = th;
        for (CacheDisposable<T> cacheDisposable : this.f67598b.getAndSet(f67596f)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.f67601a.onError(th);
            }
        }
    }

    @Override // io.reactivex.t
    public void onSubscribe(io.reactivex.disposables.b bVar) {
    }

    @Override // io.reactivex.t
    public void onSuccess(T t3) {
        CacheDisposable<T>[] andSet;
        this.f67599c = t3;
        for (CacheDisposable<T> cacheDisposable : this.f67598b.getAndSet(f67596f)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.f67601a.onSuccess(t3);
            }
        }
    }
}
