package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeSwitchIfEmpty<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T> f67748b;

    /* loaded from: classes5.dex */
    static final class SwitchIfEmptyMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -2223459372976438024L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67749a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.w<? extends T> f67750b;

        /* loaded from: classes5.dex */
        static final class a<T> implements io.reactivex.t<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.t<? super T> f67751a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<io.reactivex.disposables.b> f67752b;

            a(io.reactivex.t<? super T> tVar, AtomicReference<io.reactivex.disposables.b> atomicReference) {
                this.f67751a = tVar;
                this.f67752b = atomicReference;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f67751a.onComplete();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f67751a.onError(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this.f67752b, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(T t3) {
                this.f67751a.onSuccess(t3);
            }
        }

        SwitchIfEmptyMaybeObserver(io.reactivex.t<? super T> tVar, io.reactivex.w<? extends T> wVar) {
            this.f67749a = tVar;
            this.f67750b = wVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            io.reactivex.disposables.b bVar = get();
            if (bVar == DisposableHelper.DISPOSED || !compareAndSet(bVar, null)) {
                return;
            }
            this.f67750b.a(new a(this.f67749a, this));
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67749a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f67749a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67749a.onSuccess(t3);
        }
    }

    public MaybeSwitchIfEmpty(io.reactivex.w<T> wVar, io.reactivex.w<? extends T> wVar2) {
        super(wVar);
        this.f67748b = wVar2;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new SwitchIfEmptyMaybeObserver(tVar, this.f67748b));
    }
}
