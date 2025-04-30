package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class MaybeDoFinally<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.a f67658b;

    /* loaded from: classes5.dex */
    static final class DoFinallyObserver<T> extends AtomicInteger implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67659a;

        /* renamed from: b  reason: collision with root package name */
        final w2.a f67660b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67661c;

        DoFinallyObserver(io.reactivex.t<? super T> tVar, w2.a aVar) {
            this.f67659a = tVar;
            this.f67660b = aVar;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f67660b.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f67661c.dispose();
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67661c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67659a.onComplete();
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67659a.onError(th);
            a();
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67661c, bVar)) {
                this.f67661c = bVar;
                this.f67659a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67659a.onSuccess(t3);
            a();
        }
    }

    public MaybeDoFinally(io.reactivex.w<T> wVar, w2.a aVar) {
        super(wVar);
        this.f67658b = aVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new DoFinallyObserver(tVar, this.f67658b));
    }
}
