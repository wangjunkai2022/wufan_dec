package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeOnErrorNext<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends io.reactivex.w<? extends T>> f67736b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f67737c;

    /* loaded from: classes5.dex */
    static final class OnErrorNextMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 2026620218879969836L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67738a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends io.reactivex.w<? extends T>> f67739b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f67740c;

        /* loaded from: classes5.dex */
        static final class a<T> implements io.reactivex.t<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.t<? super T> f67741a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<io.reactivex.disposables.b> f67742b;

            a(io.reactivex.t<? super T> tVar, AtomicReference<io.reactivex.disposables.b> atomicReference) {
                this.f67741a = tVar;
                this.f67742b = atomicReference;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f67741a.onComplete();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f67741a.onError(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this.f67742b, bVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(T t3) {
                this.f67741a.onSuccess(t3);
            }
        }

        OnErrorNextMaybeObserver(io.reactivex.t<? super T> tVar, w2.o<? super Throwable, ? extends io.reactivex.w<? extends T>> oVar, boolean z3) {
            this.f67738a = tVar;
            this.f67739b = oVar;
            this.f67740c = z3;
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
            this.f67738a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            if (!this.f67740c && !(th instanceof Exception)) {
                this.f67738a.onError(th);
                return;
            }
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.a.g(this.f67739b.apply(th), "The resumeFunction returned a null MaybeSource");
                DisposableHelper.replace(this, null);
                wVar.a(new a(this.f67738a, this));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f67738a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f67738a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67738a.onSuccess(t3);
        }
    }

    public MaybeOnErrorNext(io.reactivex.w<T> wVar, w2.o<? super Throwable, ? extends io.reactivex.w<? extends T>> oVar, boolean z3) {
        super(wVar);
        this.f67736b = oVar;
        this.f67737c = z3;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new OnErrorNextMaybeObserver(tVar, this.f67736b, this.f67737c));
    }
}
