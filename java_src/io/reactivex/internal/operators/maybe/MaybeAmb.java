package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class MaybeAmb<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    private final io.reactivex.w<? extends T>[] f67591a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends io.reactivex.w<? extends T>> f67592b;

    /* loaded from: classes5.dex */
    static final class AmbMaybeObserver<T> extends AtomicBoolean implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -7044685185359438206L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67593a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.a f67594b = new io.reactivex.disposables.a();

        AmbMaybeObserver(io.reactivex.t<? super T> tVar) {
            this.f67593a = tVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f67594b.dispose();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.f67594b.dispose();
                this.f67593a.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.f67594b.dispose();
                this.f67593a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f67594b.b(bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            if (compareAndSet(false, true)) {
                this.f67594b.dispose();
                this.f67593a.onSuccess(t3);
            }
        }
    }

    public MaybeAmb(io.reactivex.w<? extends T>[] wVarArr, Iterable<? extends io.reactivex.w<? extends T>> iterable) {
        this.f67591a = wVarArr;
        this.f67592b = iterable;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        int length;
        io.reactivex.w<? extends T>[] wVarArr = this.f67591a;
        if (wVarArr == null) {
            wVarArr = new io.reactivex.w[8];
            try {
                length = 0;
                for (io.reactivex.w<? extends T> wVar : this.f67592b) {
                    if (wVar == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), tVar);
                        return;
                    }
                    if (length == wVarArr.length) {
                        io.reactivex.w<? extends T>[] wVarArr2 = new io.reactivex.w[(length >> 2) + length];
                        System.arraycopy(wVarArr, 0, wVarArr2, 0, length);
                        wVarArr = wVarArr2;
                    }
                    int i2 = length + 1;
                    wVarArr[length] = wVar;
                    length = i2;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, tVar);
                return;
            }
        } else {
            length = wVarArr.length;
        }
        AmbMaybeObserver ambMaybeObserver = new AmbMaybeObserver(tVar);
        tVar.onSubscribe(ambMaybeObserver);
        for (int i4 = 0; i4 < length; i4++) {
            io.reactivex.w<? extends T> wVar2 = wVarArr[i4];
            if (ambMaybeObserver.isDisposed()) {
                return;
            }
            if (wVar2 == null) {
                ambMaybeObserver.onError(new NullPointerException("One of the MaybeSources is null"));
                return;
            }
            wVar2.a(ambMaybeObserver);
        }
        if (length == 0) {
            tVar.onComplete();
        }
    }
}
