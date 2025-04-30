package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeFlatten<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.w<? extends R>> f67712b;

    /* loaded from: classes5.dex */
    static final class FlatMapMaybeObserver<T, R> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 4375739915521278546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f67713a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.w<? extends R>> f67714b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67715c;

        /* loaded from: classes5.dex */
        final class a implements io.reactivex.t<R> {
            a() {
            }

            @Override // io.reactivex.t
            public void onComplete() {
                FlatMapMaybeObserver.this.f67713a.onComplete();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                FlatMapMaybeObserver.this.f67713a.onError(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(FlatMapMaybeObserver.this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r3) {
                FlatMapMaybeObserver.this.f67713a.onSuccess(r3);
            }
        }

        FlatMapMaybeObserver(io.reactivex.t<? super R> tVar, w2.o<? super T, ? extends io.reactivex.w<? extends R>> oVar) {
            this.f67713a = tVar;
            this.f67714b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f67715c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67713a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67713a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67715c, bVar)) {
                this.f67715c = bVar;
                this.f67713a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.a.g(this.f67714b.apply(t3), "The mapper returned a null MaybeSource");
                if (isDisposed()) {
                    return;
                }
                wVar.a(new a());
            } catch (Exception e4) {
                io.reactivex.exceptions.a.b(e4);
                this.f67713a.onError(e4);
            }
        }
    }

    public MaybeFlatten(io.reactivex.w<T> wVar, w2.o<? super T, ? extends io.reactivex.w<? extends R>> oVar) {
        super(wVar);
        this.f67712b = oVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super R> tVar) {
        this.f67812a.a(new FlatMapMaybeObserver(tVar, this.f67712b));
    }
}
