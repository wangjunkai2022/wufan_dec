package io.reactivex.internal.operators.single;

import io.reactivex.h0;
import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleSubscribeOn<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69679a;

    /* renamed from: b  reason: collision with root package name */
    final h0 f69680b;

    /* loaded from: classes5.dex */
    static final class SubscribeOnObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 7000911171163930287L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69681a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f69682b = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final o0<? extends T> f69683c;

        SubscribeOnObserver(l0<? super T> l0Var, o0<? extends T> o0Var) {
            this.f69681a = l0Var;
            this.f69683c = o0Var;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f69682b.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69681a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69681a.onSuccess(t3);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f69683c.a(this);
        }
    }

    public SingleSubscribeOn(o0<? extends T> o0Var, h0 h0Var) {
        this.f69679a = o0Var;
        this.f69680b = h0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(l0Var, this.f69679a);
        l0Var.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.f69682b.a(this.f69680b.e(subscribeOnObserver));
    }
}
