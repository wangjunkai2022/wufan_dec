package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes5.dex */
public abstract class DeferredScalarObserver<T, R> extends DeferredScalarDisposable<R> implements g0<T> {
    private static final long serialVersionUID = -266195175408988651L;

    /* renamed from: h  reason: collision with root package name */
    protected io.reactivex.disposables.b f65878h;

    public DeferredScalarObserver(g0<? super R> g0Var) {
        super(g0Var);
    }

    @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.b
    public void dispose() {
        super.dispose();
        this.f65878h.dispose();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        T t3 = this.f65877b;
        if (t3 != null) {
            this.f65877b = null;
            b(t3);
            return;
        }
        a();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        this.f65877b = null;
        c(th);
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (DisposableHelper.validate(this.f65878h, bVar)) {
            this.f65878h = bVar;
            this.f65876a.onSubscribe(this);
        }
    }
}
