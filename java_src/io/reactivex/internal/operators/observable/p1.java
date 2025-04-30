package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: ObservableTake.java */
/* loaded from: classes5.dex */
public final class p1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f69231b;

    /* compiled from: ObservableTake.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f69232a;

        /* renamed from: b  reason: collision with root package name */
        boolean f69233b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69234c;

        /* renamed from: d  reason: collision with root package name */
        long f69235d;

        a(io.reactivex.g0<? super T> g0Var, long j4) {
            this.f69232a = g0Var;
            this.f69235d = j4;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69234c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69234c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f69233b) {
                return;
            }
            this.f69233b = true;
            this.f69234c.dispose();
            this.f69232a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f69233b) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69233b = true;
            this.f69234c.dispose();
            this.f69232a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f69233b) {
                return;
            }
            long j4 = this.f69235d;
            long j5 = j4 - 1;
            this.f69235d = j5;
            if (j4 > 0) {
                boolean z3 = j5 == 0;
                this.f69232a.onNext(t3);
                if (z3) {
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69234c, bVar)) {
                this.f69234c = bVar;
                if (this.f69235d == 0) {
                    this.f69233b = true;
                    bVar.dispose();
                    EmptyDisposable.complete(this.f69232a);
                    return;
                }
                this.f69232a.onSubscribe(this);
            }
        }
    }

    public p1(io.reactivex.e0<T> e0Var, long j4) {
        super(e0Var);
        this.f69231b = j4;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68961a.a(new a(g0Var, this.f69231b));
    }
}
