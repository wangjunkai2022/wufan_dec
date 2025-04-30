package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EmptyComponent;
/* compiled from: ObservableDetach.java */
/* loaded from: classes5.dex */
public final class w<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableDetach.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.g0<? super T> f69325a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69326b;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f69325a = g0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            io.reactivex.disposables.b bVar = this.f69326b;
            this.f69326b = EmptyComponent.INSTANCE;
            this.f69325a = EmptyComponent.asObserver();
            bVar.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69326b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            io.reactivex.g0<? super T> g0Var = this.f69325a;
            this.f69326b = EmptyComponent.INSTANCE;
            this.f69325a = EmptyComponent.asObserver();
            g0Var.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.g0<? super T> g0Var = this.f69325a;
            this.f69326b = EmptyComponent.INSTANCE;
            this.f69325a = EmptyComponent.asObserver();
            g0Var.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f69325a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69326b, bVar)) {
                this.f69326b = bVar;
                this.f69325a.onSubscribe(this);
            }
        }
    }

    public w(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var));
    }
}
