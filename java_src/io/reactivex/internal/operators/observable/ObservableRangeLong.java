package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
/* loaded from: classes5.dex */
public final class ObservableRangeLong extends io.reactivex.z<Long> {

    /* renamed from: a  reason: collision with root package name */
    private final long f68555a;

    /* renamed from: b  reason: collision with root package name */
    private final long f68556b;

    /* loaded from: classes5.dex */
    static final class RangeDisposable extends BasicIntQueueDisposable<Long> {
        private static final long serialVersionUID = 396518478098735504L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super Long> f68557a;

        /* renamed from: b  reason: collision with root package name */
        final long f68558b;

        /* renamed from: c  reason: collision with root package name */
        long f68559c;

        /* renamed from: d  reason: collision with root package name */
        boolean f68560d;

        RangeDisposable(io.reactivex.g0<? super Long> g0Var, long j4, long j5) {
            this.f68557a = g0Var;
            this.f68559c = j4;
            this.f68558b = j5;
        }

        @Override // x2.o
        @Nullable
        /* renamed from: a */
        public Long poll() throws Exception {
            long j4 = this.f68559c;
            if (j4 != this.f68558b) {
                this.f68559c = 1 + j4;
                return Long.valueOf(j4);
            }
            lazySet(1);
            return null;
        }

        @Override // x2.o
        public void clear() {
            this.f68559c = this.f68558b;
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
            return this.f68559c == this.f68558b;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            if ((i2 & 1) != 0) {
                this.f68560d = true;
                return 1;
            }
            return 0;
        }

        void run() {
            if (this.f68560d) {
                return;
            }
            io.reactivex.g0<? super Long> g0Var = this.f68557a;
            long j4 = this.f68558b;
            for (long j5 = this.f68559c; j5 != j4 && get() == 0; j5++) {
                g0Var.onNext(Long.valueOf(j5));
            }
            if (get() == 0) {
                lazySet(1);
                g0Var.onComplete();
            }
        }
    }

    public ObservableRangeLong(long j4, long j5) {
        this.f68555a = j4;
        this.f68556b = j5;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super Long> g0Var) {
        long j4 = this.f68555a;
        RangeDisposable rangeDisposable = new RangeDisposable(g0Var, j4, j4 + this.f68556b);
        g0Var.onSubscribe(rangeDisposable);
        rangeDisposable.run();
    }
}
