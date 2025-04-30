package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
/* loaded from: classes5.dex */
public final class ObservableDoFinally<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.a f68296b;

    /* loaded from: classes5.dex */
    static final class DoFinallyObserver<T> extends BasicIntQueueDisposable<T> implements io.reactivex.g0<T> {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68297a;

        /* renamed from: b  reason: collision with root package name */
        final w2.a f68298b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f68299c;

        /* renamed from: d  reason: collision with root package name */
        x2.j<T> f68300d;

        /* renamed from: e  reason: collision with root package name */
        boolean f68301e;

        DoFinallyObserver(io.reactivex.g0<? super T> g0Var, w2.a aVar) {
            this.f68297a = g0Var;
            this.f68298b = aVar;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f68298b.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // x2.o
        public void clear() {
            this.f68300d.clear();
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68299c.dispose();
            a();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68299c.isDisposed();
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f68300d.isEmpty();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68297a.onComplete();
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68297a.onError(th);
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68297a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68299c, bVar)) {
                this.f68299c = bVar;
                if (bVar instanceof x2.j) {
                    this.f68300d = (x2.j) bVar;
                }
                this.f68297a.onSubscribe(this);
            }
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T poll = this.f68300d.poll();
            if (poll == null && this.f68301e) {
                a();
            }
            return poll;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            x2.j<T> jVar = this.f68300d;
            if (jVar == null || (i2 & 4) != 0) {
                return 0;
            }
            int requestFusion = jVar.requestFusion(i2);
            if (requestFusion != 0) {
                this.f68301e = requestFusion == 1;
            }
            return requestFusion;
        }
    }

    public ObservableDoFinally(io.reactivex.e0<T> e0Var, w2.a aVar) {
        super(e0Var);
        this.f68296b = aVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new DoFinallyObserver(g0Var, this.f68296b));
    }
}
