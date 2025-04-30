package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
/* loaded from: classes5.dex */
public final class ObservableRange extends io.reactivex.z<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final int f68549a;

    /* renamed from: b  reason: collision with root package name */
    private final long f68550b;

    /* loaded from: classes5.dex */
    static final class RangeDisposable extends BasicIntQueueDisposable<Integer> {
        private static final long serialVersionUID = 396518478098735504L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Integer> f68551a;

        /* renamed from: b  reason: collision with root package name */
        final long f68552b;

        /* renamed from: c  reason: collision with root package name */
        long f68553c;

        /* renamed from: d  reason: collision with root package name */
        boolean f68554d;

        RangeDisposable(io.reactivex.g0<? super Integer> g0Var, long j4, long j5) {
            this.f68551a = g0Var;
            this.f68553c = j4;
            this.f68552b = j5;
        }

        @Override // x2.o
        @Nullable
        /* renamed from: a */
        public Integer poll() throws Exception {
            long j4 = this.f68553c;
            if (j4 != this.f68552b) {
                this.f68553c = 1 + j4;
                return Integer.valueOf((int) j4);
            }
            lazySet(1);
            return null;
        }

        @Override // x2.o
        public void clear() {
            this.f68553c = this.f68552b;
            lazySet(1);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            set(1);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() != 0;
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f68553c == this.f68552b;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 1) != 0) {
                this.f68554d = true;
                return 1;
            }
            return 0;
        }

        void run() {
            if (this.f68554d) {
                return;
            }
            io.reactivex.g0<? super Integer> g0Var = this.f68551a;
            long j4 = this.f68552b;
            for (long j5 = this.f68553c; j5 != j4 && get() == 0; j5++) {
                g0Var.onNext(Integer.valueOf((int) j5));
            }
            if (get() == 0) {
                lazySet(1);
                g0Var.onComplete();
            }
        }
    }

    public ObservableRange(int i2, int i4) {
        this.f68549a = i2;
        this.f68550b = i2 + i4;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super Integer> g0Var) {
        RangeDisposable rangeDisposable = new RangeDisposable(g0Var, this.f68549a, this.f68550b);
        g0Var.onSubscribe(rangeDisposable);
        rangeDisposable.run();
    }
}
