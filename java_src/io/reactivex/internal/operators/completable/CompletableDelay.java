package io.reactivex.internal.operators.completable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableDelay extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f65978a;

    /* renamed from: b  reason: collision with root package name */
    final long f65979b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f65980c;

    /* renamed from: d  reason: collision with root package name */
    final h0 f65981d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f65982e;

    /* loaded from: classes5.dex */
    static final class Delay extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.d, Runnable, io.reactivex.disposables.b {
        private static final long serialVersionUID = 465972761105851022L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f65983a;

        /* renamed from: b  reason: collision with root package name */
        final long f65984b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f65985c;

        /* renamed from: d  reason: collision with root package name */
        final h0 f65986d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f65987e;

        /* renamed from: f  reason: collision with root package name */
        Throwable f65988f;

        Delay(io.reactivex.d dVar, long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
            this.f65983a = dVar;
            this.f65984b = j4;
            this.f65985c = timeUnit;
            this.f65986d = h0Var;
            this.f65987e = z3;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            DisposableHelper.replace(this, this.f65986d.f(this, this.f65984b, this.f65985c));
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f65988f = th;
            DisposableHelper.replace(this, this.f65986d.f(this, this.f65987e ? this.f65984b : 0L, this.f65985c));
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f65983a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f65988f;
            this.f65988f = null;
            if (th != null) {
                this.f65983a.onError(th);
            } else {
                this.f65983a.onComplete();
            }
        }
    }

    public CompletableDelay(io.reactivex.g gVar, long j4, TimeUnit timeUnit, h0 h0Var, boolean z3) {
        this.f65978a = gVar;
        this.f65979b = j4;
        this.f65980c = timeUnit;
        this.f65981d = h0Var;
        this.f65982e = z3;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        this.f65978a.a(new Delay(dVar, this.f65979b, this.f65980c, this.f65981d, this.f65982e));
    }
}
