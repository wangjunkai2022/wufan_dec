package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableWithLatestFrom<T, U, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final w2.c<? super T, ? super U, ? extends R> f68921b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.e0<? extends U> f68922c;

    /* loaded from: classes5.dex */
    static final class WithLatestFromObserver<T, U, R> extends AtomicReference<U> implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -312246233408980075L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68923a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<? super T, ? super U, ? extends R> f68924b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68925c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68926d = new AtomicReference<>();

        WithLatestFromObserver(io.reactivex.g0<? super R> g0Var, w2.c<? super T, ? super U, ? extends R> cVar) {
            this.f68923a = g0Var;
            this.f68924b = cVar;
        }

        public void a(Throwable th) {
            DisposableHelper.dispose(this.f68925c);
            this.f68923a.onError(th);
        }

        public boolean b(io.reactivex.disposables.b bVar) {
            return DisposableHelper.setOnce(this.f68926d, bVar);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68925c);
            DisposableHelper.dispose(this.f68926d);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68925c.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            DisposableHelper.dispose(this.f68926d);
            this.f68923a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f68926d);
            this.f68923a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            U u3 = get();
            if (u3 != null) {
                try {
                    this.f68923a.onNext(io.reactivex.internal.functions.a.g(this.f68924b.apply(t3, u3), "The combiner returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    dispose();
                    this.f68923a.onError(th);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68925c, bVar);
        }
    }

    /* loaded from: classes5.dex */
    final class a implements io.reactivex.g0<U> {

        /* renamed from: a  reason: collision with root package name */
        private final WithLatestFromObserver<T, U, R> f68927a;

        a(WithLatestFromObserver<T, U, R> withLatestFromObserver) {
            this.f68927a = withLatestFromObserver;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68927a.a(th);
        }

        @Override // io.reactivex.g0
        public void onNext(U u3) {
            this.f68927a.lazySet(u3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f68927a.b(bVar);
        }
    }

    public ObservableWithLatestFrom(io.reactivex.e0<T> e0Var, w2.c<? super T, ? super U, ? extends R> cVar, io.reactivex.e0<? extends U> e0Var2) {
        super(e0Var);
        this.f68921b = cVar;
        this.f68922c = e0Var2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super R> g0Var) {
        io.reactivex.observers.l lVar = new io.reactivex.observers.l(g0Var);
        WithLatestFromObserver withLatestFromObserver = new WithLatestFromObserver(lVar, this.f68921b);
        lVar.onSubscribe(withLatestFromObserver);
        this.f68922c.a(new a(withLatestFromObserver));
        this.f68961a.a(withLatestFromObserver);
    }
}
