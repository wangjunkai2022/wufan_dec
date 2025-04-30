package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeDelay<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f67631b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f67632c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f67633d;

    /* loaded from: classes5.dex */
    static final class DelayMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 5566860102500855068L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67634a;

        /* renamed from: b  reason: collision with root package name */
        final long f67635b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f67636c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f67637d;

        /* renamed from: e  reason: collision with root package name */
        T f67638e;

        /* renamed from: f  reason: collision with root package name */
        Throwable f67639f;

        DelayMaybeObserver(io.reactivex.t<? super T> tVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f67634a = tVar;
            this.f67635b = j4;
            this.f67636c = timeUnit;
            this.f67637d = h0Var;
        }

        void a() {
            DisposableHelper.replace(this, this.f67637d.f(this, this.f67635b, this.f67636c));
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67639f = th;
            a();
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.f67634a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67638e = t3;
            a();
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f67639f;
            if (th != null) {
                this.f67634a.onError(th);
                return;
            }
            T t3 = this.f67638e;
            if (t3 != null) {
                this.f67634a.onSuccess(t3);
            } else {
                this.f67634a.onComplete();
            }
        }
    }

    public MaybeDelay(io.reactivex.w<T> wVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(wVar);
        this.f67631b = j4;
        this.f67632c = timeUnit;
        this.f67633d = h0Var;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67812a.a(new DelayMaybeObserver(tVar, this.f67631b, this.f67632c, this.f67633d));
    }
}
