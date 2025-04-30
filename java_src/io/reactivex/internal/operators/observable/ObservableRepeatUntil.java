package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class ObservableRepeatUntil<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w2.e f68580b;

    /* loaded from: classes5.dex */
    static final class RepeatUntilObserver<T> extends AtomicInteger implements io.reactivex.g0<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68581a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f68582b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f68583c;

        /* renamed from: d  reason: collision with root package name */
        final w2.e f68584d;

        RepeatUntilObserver(io.reactivex.g0<? super T> g0Var, w2.e eVar, SequentialDisposable sequentialDisposable, io.reactivex.e0<? extends T> e0Var) {
            this.f68581a = g0Var;
            this.f68582b = sequentialDisposable;
            this.f68583c = e0Var;
            this.f68584d = eVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i2 = 1;
                do {
                    this.f68583c.a(this);
                    i2 = addAndGet(-i2);
                } while (i2 != 0);
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            try {
                if (this.f68584d.a()) {
                    this.f68581a.onComplete();
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f68581a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68581a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68581a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f68582b.a(bVar);
        }
    }

    public ObservableRepeatUntil(io.reactivex.z<T> zVar, w2.e eVar) {
        super(zVar);
        this.f68580b = eVar;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        g0Var.onSubscribe(sequentialDisposable);
        new RepeatUntilObserver(g0Var, this.f68580b, sequentialDisposable, this.f68961a).a();
    }
}
