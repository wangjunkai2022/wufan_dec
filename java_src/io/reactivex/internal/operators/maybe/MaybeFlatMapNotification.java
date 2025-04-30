package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeFlatMapNotification<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super T, ? extends io.reactivex.w<? extends R>> f67691b;

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends io.reactivex.w<? extends R>> f67692c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<? extends io.reactivex.w<? extends R>> f67693d;

    /* loaded from: classes5.dex */
    static final class FlatMapMaybeObserver<T, R> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 4375739915521278546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f67694a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.w<? extends R>> f67695b;

        /* renamed from: c  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends io.reactivex.w<? extends R>> f67696c;

        /* renamed from: d  reason: collision with root package name */
        final Callable<? extends io.reactivex.w<? extends R>> f67697d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.b f67698e;

        /* loaded from: classes5.dex */
        final class a implements io.reactivex.t<R> {
            a() {
            }

            @Override // io.reactivex.t
            public void onComplete() {
                FlatMapMaybeObserver.this.f67694a.onComplete();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                FlatMapMaybeObserver.this.f67694a.onError(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(FlatMapMaybeObserver.this, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r3) {
                FlatMapMaybeObserver.this.f67694a.onSuccess(r3);
            }
        }

        FlatMapMaybeObserver(io.reactivex.t<? super R> tVar, w2.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, w2.o<? super Throwable, ? extends io.reactivex.w<? extends R>> oVar2, Callable<? extends io.reactivex.w<? extends R>> callable) {
            this.f67694a = tVar;
            this.f67695b = oVar;
            this.f67696c = oVar2;
            this.f67697d = callable;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f67698e.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            try {
                ((io.reactivex.w) io.reactivex.internal.functions.a.g(this.f67697d.call(), "The onCompleteSupplier returned a null MaybeSource")).a(new a());
            } catch (Exception e4) {
                io.reactivex.exceptions.a.b(e4);
                this.f67694a.onError(e4);
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            try {
                ((io.reactivex.w) io.reactivex.internal.functions.a.g(this.f67696c.apply(th), "The onErrorMapper returned a null MaybeSource")).a(new a());
            } catch (Exception e4) {
                io.reactivex.exceptions.a.b(e4);
                this.f67694a.onError(new CompositeException(th, e4));
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67698e, bVar)) {
                this.f67698e = bVar;
                this.f67694a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            try {
                ((io.reactivex.w) io.reactivex.internal.functions.a.g(this.f67695b.apply(t3), "The onSuccessMapper returned a null MaybeSource")).a(new a());
            } catch (Exception e4) {
                io.reactivex.exceptions.a.b(e4);
                this.f67694a.onError(e4);
            }
        }
    }

    public MaybeFlatMapNotification(io.reactivex.w<T> wVar, w2.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, w2.o<? super Throwable, ? extends io.reactivex.w<? extends R>> oVar2, Callable<? extends io.reactivex.w<? extends R>> callable) {
        super(wVar);
        this.f67691b = oVar;
        this.f67692c = oVar2;
        this.f67693d = callable;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super R> tVar) {
        this.f67812a.a(new FlatMapMaybeObserver(tVar, this.f67691b, this.f67692c, this.f67693d));
    }
}
