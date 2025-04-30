package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class CompletableConcatArray extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g[] f65967a;

    /* loaded from: classes5.dex */
    static final class ConcatInnerObserver extends AtomicInteger implements io.reactivex.d {
        private static final long serialVersionUID = -7965400327305809232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f65968a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g[] f65969b;

        /* renamed from: c  reason: collision with root package name */
        int f65970c;

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f65971d = new SequentialDisposable();

        ConcatInnerObserver(io.reactivex.d dVar, io.reactivex.g[] gVarArr) {
            this.f65968a = dVar;
            this.f65969b = gVarArr;
        }

        void a() {
            if (!this.f65971d.isDisposed() && getAndIncrement() == 0) {
                io.reactivex.g[] gVarArr = this.f65969b;
                while (!this.f65971d.isDisposed()) {
                    int i2 = this.f65970c;
                    this.f65970c = i2 + 1;
                    if (i2 == gVarArr.length) {
                        this.f65968a.onComplete();
                        return;
                    }
                    gVarArr[i2].a(this);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.d
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f65968a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f65971d.a(bVar);
        }
    }

    public CompletableConcatArray(io.reactivex.g[] gVarArr) {
        this.f65967a = gVarArr;
    }

    @Override // io.reactivex.a
    public void F0(io.reactivex.d dVar) {
        ConcatInnerObserver concatInnerObserver = new ConcatInnerObserver(dVar, this.f65967a);
        dVar.onSubscribe(concatInnerObserver.f65971d);
        concatInnerObserver.a();
    }
}
