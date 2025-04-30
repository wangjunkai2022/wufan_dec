package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.subjects.PublishSubject;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservablePublishSelector<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super io.reactivex.z<T>, ? extends io.reactivex.e0<R>> f68544b;

    /* loaded from: classes5.dex */
    static final class TargetObserver<T, R> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<R>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 854110278590336484L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68545a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f68546b;

        TargetObserver(io.reactivex.g0<? super R> g0Var) {
            this.f68545a = g0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68546b.dispose();
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68546b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            DisposableHelper.dispose(this);
            this.f68545a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this);
            this.f68545a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(R r3) {
            this.f68545a.onNext(r3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68546b, bVar)) {
                this.f68546b = bVar;
                this.f68545a.onSubscribe(this);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T, R> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final PublishSubject<T> f68547a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68548b;

        a(PublishSubject<T> publishSubject, AtomicReference<io.reactivex.disposables.b> atomicReference) {
            this.f68547a = publishSubject;
            this.f68548b = atomicReference;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68547a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68547a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68547a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68548b, bVar);
        }
    }

    public ObservablePublishSelector(io.reactivex.e0<T> e0Var, w2.o<? super io.reactivex.z<T>, ? extends io.reactivex.e0<R>> oVar) {
        super(e0Var);
        this.f68544b = oVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super R> g0Var) {
        PublishSubject l8 = PublishSubject.l8();
        try {
            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68544b.apply(l8), "The selector returned a null ObservableSource");
            TargetObserver targetObserver = new TargetObserver(g0Var);
            e0Var.a(targetObserver);
            this.f68961a.a(new a(l8, targetObserver));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
