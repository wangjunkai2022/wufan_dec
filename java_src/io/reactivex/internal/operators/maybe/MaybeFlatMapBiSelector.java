package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeFlatMapBiSelector<T, U, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.w<? extends U>> f67671b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<? super T, ? super U, ? extends R> f67672c;

    /* loaded from: classes5.dex */
    static final class FlatMapBiMainObserver<T, U, R> implements io.reactivex.t<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.w<? extends U>> f67673a;

        /* renamed from: b  reason: collision with root package name */
        final InnerObserver<T, U, R> f67674b;

        /* loaded from: classes5.dex */
        static final class InnerObserver<T, U, R> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<U> {
            private static final long serialVersionUID = -2897979525538174559L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.t<? super R> f67675a;

            /* renamed from: b  reason: collision with root package name */
            final w2.c<? super T, ? super U, ? extends R> f67676b;

            /* renamed from: c  reason: collision with root package name */
            T f67677c;

            InnerObserver(io.reactivex.t<? super R> tVar, w2.c<? super T, ? super U, ? extends R> cVar) {
                this.f67675a = tVar;
                this.f67676b = cVar;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f67675a.onComplete();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f67675a.onError(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(U u3) {
                T t3 = this.f67677c;
                this.f67677c = null;
                try {
                    this.f67675a.onSuccess(io.reactivex.internal.functions.a.g(this.f67676b.apply(t3, u3), "The resultSelector returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f67675a.onError(th);
                }
            }
        }

        FlatMapBiMainObserver(io.reactivex.t<? super R> tVar, w2.o<? super T, ? extends io.reactivex.w<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar) {
            this.f67674b = new InnerObserver<>(tVar, cVar);
            this.f67673a = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f67674b);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f67674b.get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67674b.f67675a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67674b.f67675a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this.f67674b, bVar)) {
                this.f67674b.f67675a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.a.g(this.f67673a.apply(t3), "The mapper returned a null MaybeSource");
                if (DisposableHelper.replace(this.f67674b, null)) {
                    InnerObserver<T, U, R> innerObserver = this.f67674b;
                    innerObserver.f67677c = t3;
                    wVar.a(innerObserver);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67674b.f67675a.onError(th);
            }
        }
    }

    public MaybeFlatMapBiSelector(io.reactivex.w<T> wVar, w2.o<? super T, ? extends io.reactivex.w<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar) {
        super(wVar);
        this.f67671b = oVar;
        this.f67672c = cVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super R> tVar) {
        this.f67812a.a(new FlatMapBiMainObserver(tVar, this.f67671b, this.f67672c));
    }
}
