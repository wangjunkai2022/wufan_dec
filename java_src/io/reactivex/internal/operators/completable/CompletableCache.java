package io.reactivex.internal.operators.completable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableCache extends io.reactivex.a implements io.reactivex.d {

    /* renamed from: e  reason: collision with root package name */
    static final InnerCompletableCache[] f65945e = new InnerCompletableCache[0];

    /* renamed from: f  reason: collision with root package name */
    static final InnerCompletableCache[] f65946f = new InnerCompletableCache[0];

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f65947a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<InnerCompletableCache[]> f65948b = new AtomicReference<>(f65945e);

    /* renamed from: c  reason: collision with root package name */
    final AtomicBoolean f65949c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    Throwable f65950d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class InnerCompletableCache extends AtomicBoolean implements io.reactivex.disposables.b {
        private static final long serialVersionUID = 8943152917179642732L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f65951a;

        InnerCompletableCache(io.reactivex.d dVar) {
            this.f65951a = dVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (compareAndSet(false, true)) {
                CompletableCache.this.f1(this);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get();
        }
    }

    public CompletableCache(io.reactivex.g gVar) {
        this.f65947a = gVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        InnerCompletableCache innerCompletableCache = new InnerCompletableCache(dVar);
        dVar.onSubscribe(innerCompletableCache);
        if (e1(innerCompletableCache)) {
            if (innerCompletableCache.isDisposed()) {
                f1(innerCompletableCache);
            }
            if (this.f65949c.compareAndSet(false, true)) {
                this.f65947a.a(this);
                return;
            }
            return;
        }
        Throwable th = this.f65950d;
        if (th != null) {
            dVar.onError(th);
        } else {
            dVar.onComplete();
        }
    }

    boolean e1(InnerCompletableCache innerCompletableCache) {
        InnerCompletableCache[] innerCompletableCacheArr;
        InnerCompletableCache[] innerCompletableCacheArr2;
        do {
            innerCompletableCacheArr = this.f65948b.get();
            if (innerCompletableCacheArr == f65946f) {
                return false;
            }
            int length = innerCompletableCacheArr.length;
            innerCompletableCacheArr2 = new InnerCompletableCache[length + 1];
            System.arraycopy(innerCompletableCacheArr, 0, innerCompletableCacheArr2, 0, length);
            innerCompletableCacheArr2[length] = innerCompletableCache;
        } while (!this.f65948b.compareAndSet(innerCompletableCacheArr, innerCompletableCacheArr2));
        return true;
    }

    void f1(InnerCompletableCache innerCompletableCache) {
        InnerCompletableCache[] innerCompletableCacheArr;
        InnerCompletableCache[] innerCompletableCacheArr2;
        do {
            innerCompletableCacheArr = this.f65948b.get();
            int length = innerCompletableCacheArr.length;
            if (length == 0) {
                return;
            }
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (innerCompletableCacheArr[i4] == innerCompletableCache) {
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
                innerCompletableCacheArr2 = f65945e;
            } else {
                InnerCompletableCache[] innerCompletableCacheArr3 = new InnerCompletableCache[length - 1];
                System.arraycopy(innerCompletableCacheArr, 0, innerCompletableCacheArr3, 0, i2);
                System.arraycopy(innerCompletableCacheArr, i2 + 1, innerCompletableCacheArr3, i2, (length - i2) - 1);
                innerCompletableCacheArr2 = innerCompletableCacheArr3;
            }
        } while (!this.f65948b.compareAndSet(innerCompletableCacheArr, innerCompletableCacheArr2));
    }

    @Override // io.reactivex.d
    public void onComplete() {
        InnerCompletableCache[] andSet;
        for (InnerCompletableCache innerCompletableCache : this.f65948b.getAndSet(f65946f)) {
            if (!innerCompletableCache.get()) {
                innerCompletableCache.f65951a.onComplete();
            }
        }
    }

    @Override // io.reactivex.d
    public void onError(Throwable th) {
        InnerCompletableCache[] andSet;
        this.f65950d = th;
        for (InnerCompletableCache innerCompletableCache : this.f65948b.getAndSet(f65946f)) {
            if (!innerCompletableCache.get()) {
                innerCompletableCache.f65951a.onError(th);
            }
        }
    }

    @Override // io.reactivex.d
    public void onSubscribe(io.reactivex.disposables.b bVar) {
    }
}
