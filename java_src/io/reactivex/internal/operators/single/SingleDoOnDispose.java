package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleDoOnDispose<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69624a;

    /* renamed from: b  reason: collision with root package name */
    final w2.a f69625b;

    /* loaded from: classes5.dex */
    static final class DoOnDisposeObserver<T> extends AtomicReference<w2.a> implements l0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -8583764624474935784L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69626a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.b f69627b;

        DoOnDisposeObserver(l0<? super T> l0Var, w2.a aVar) {
            this.f69626a = l0Var;
            lazySet(aVar);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            w2.a andSet = getAndSet(null);
            if (andSet != null) {
                try {
                    andSet.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
                this.f69627b.dispose();
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69627b.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69626a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69627b, bVar)) {
                this.f69627b = bVar;
                this.f69626a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69626a.onSuccess(t3);
        }
    }

    public SingleDoOnDispose(o0<T> o0Var, w2.a aVar) {
        this.f69624a = o0Var;
        this.f69625b = aVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69624a.a(new DoOnDisposeObserver(l0Var, this.f69625b));
    }
}
