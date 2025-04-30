package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class SingleDoFinally<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69619a;

    /* renamed from: b  reason: collision with root package name */
    final w2.a f69620b;

    /* loaded from: classes5.dex */
    static final class DoFinallyObserver<T> extends AtomicInteger implements l0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69621a;

        /* renamed from: b  reason: collision with root package name */
        final w2.a f69622b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69623c;

        DoFinallyObserver(l0<? super T> l0Var, w2.a aVar) {
            this.f69621a = l0Var;
            this.f69622b = aVar;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f69622b.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69623c.dispose();
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69623c.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69621a.onError(th);
            a();
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69623c, bVar)) {
                this.f69623c = bVar;
                this.f69621a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69621a.onSuccess(t3);
            a();
        }
    }

    public SingleDoFinally(o0<T> o0Var, w2.a aVar) {
        this.f69619a = o0Var;
        this.f69620b = aVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69619a.a(new DoFinallyObserver(l0Var, this.f69620b));
    }
}
