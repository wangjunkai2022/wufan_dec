package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleResumeNext<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69675a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Throwable, ? extends o0<? extends T>> f69676b;

    /* loaded from: classes5.dex */
    static final class ResumeMainSingleObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -5314538511045349925L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69677a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Throwable, ? extends o0<? extends T>> f69678b;

        ResumeMainSingleObserver(l0<? super T> l0Var, w2.o<? super Throwable, ? extends o0<? extends T>> oVar) {
            this.f69677a = l0Var;
            this.f69678b = oVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            try {
                ((o0) io.reactivex.internal.functions.a.g(this.f69678b.apply(th), "The nextFunction returned a null SingleSource.")).a(new io.reactivex.internal.observers.o(this, this.f69677a));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f69677a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f69677a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69677a.onSuccess(t3);
        }
    }

    public SingleResumeNext(o0<? extends T> o0Var, w2.o<? super Throwable, ? extends o0<? extends T>> oVar) {
        this.f69675a = o0Var;
        this.f69676b = oVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69675a.a(new ResumeMainSingleObserver(l0Var, this.f69676b));
    }
}
