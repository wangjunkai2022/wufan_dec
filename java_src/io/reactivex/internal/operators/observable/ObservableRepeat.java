package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class ObservableRepeat<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f68575b;

    /* loaded from: classes5.dex */
    static final class RepeatObserver<T> extends AtomicInteger implements io.reactivex.g0<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68576a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f68577b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f68578c;

        /* renamed from: d  reason: collision with root package name */
        long f68579d;

        RepeatObserver(io.reactivex.g0<? super T> g0Var, long j4, SequentialDisposable sequentialDisposable, io.reactivex.e0<? extends T> e0Var) {
            this.f68576a = g0Var;
            this.f68577b = sequentialDisposable;
            this.f68578c = e0Var;
            this.f68579d = j4;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i2 = 1;
                while (!this.f68577b.isDisposed()) {
                    this.f68578c.a(this);
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            long j4 = this.f68579d;
            if (j4 != Long.MAX_VALUE) {
                this.f68579d = j4 - 1;
            }
            if (j4 != 0) {
                a();
            } else {
                this.f68576a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68576a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68576a.onNext(t3);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f68577b.a(bVar);
        }
    }

    public ObservableRepeat(io.reactivex.z<T> zVar, long j4) {
        super(zVar);
        this.f68575b = j4;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        g0Var.onSubscribe(sequentialDisposable);
        long j4 = this.f68575b;
        new RepeatObserver(g0Var, j4 != Long.MAX_VALUE ? j4 - 1 : Long.MAX_VALUE, sequentialDisposable, this.f68961a).a();
    }
}
