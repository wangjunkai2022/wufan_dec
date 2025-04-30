package io.reactivex.internal.operators.single;

import io.reactivex.h0;
import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleTimeout<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69689a;

    /* renamed from: b  reason: collision with root package name */
    final long f69690b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f69691c;

    /* renamed from: d  reason: collision with root package name */
    final h0 f69692d;

    /* renamed from: e  reason: collision with root package name */
    final o0<? extends T> f69693e;

    /* loaded from: classes5.dex */
    static final class TimeoutMainObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T>, Runnable, io.reactivex.disposables.b {
        private static final long serialVersionUID = 37497744973048446L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69694a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f69695b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final TimeoutFallbackObserver<T> f69696c;

        /* renamed from: d  reason: collision with root package name */
        o0<? extends T> f69697d;

        /* loaded from: classes5.dex */
        static final class TimeoutFallbackObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T> {
            private static final long serialVersionUID = 2071387740092105509L;

            /* renamed from: a  reason: collision with root package name */
            final l0<? super T> f69698a;

            TimeoutFallbackObserver(l0<? super T> l0Var) {
                this.f69698a = l0Var;
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f69698a.onError(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(T t3) {
                this.f69698a.onSuccess(t3);
            }
        }

        TimeoutMainObserver(l0<? super T> l0Var, o0<? extends T> o0Var) {
            this.f69694a = l0Var;
            this.f69697d = o0Var;
            if (o0Var != null) {
                this.f69696c = new TimeoutFallbackObserver<>(l0Var);
            } else {
                this.f69696c = null;
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f69695b);
            TimeoutFallbackObserver<T> timeoutFallbackObserver = this.f69696c;
            if (timeoutFallbackObserver != null) {
                DisposableHelper.dispose(timeoutFallbackObserver);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper && compareAndSet(bVar, disposableHelper)) {
                DisposableHelper.dispose(this.f69695b);
                this.f69694a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper || !compareAndSet(bVar, disposableHelper)) {
                return;
            }
            DisposableHelper.dispose(this.f69695b);
            this.f69694a.onSuccess(t3);
        }

        @Override // java.lang.Runnable
        public void run() {
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper || !compareAndSet(bVar, disposableHelper)) {
                return;
            }
            if (bVar != null) {
                bVar.dispose();
            }
            o0<? extends T> o0Var = this.f69697d;
            if (o0Var == null) {
                this.f69694a.onError(new TimeoutException());
                return;
            }
            this.f69697d = null;
            o0Var.a(this.f69696c);
        }
    }

    public SingleTimeout(o0<T> o0Var, long j4, TimeUnit timeUnit, h0 h0Var, o0<? extends T> o0Var2) {
        this.f69689a = o0Var;
        this.f69690b = j4;
        this.f69691c = timeUnit;
        this.f69692d = h0Var;
        this.f69693e = o0Var2;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        TimeoutMainObserver timeoutMainObserver = new TimeoutMainObserver(l0Var, this.f69693e);
        l0Var.onSubscribe(timeoutMainObserver);
        DisposableHelper.replace(timeoutMainObserver.f69695b, this.f69692d.f(timeoutMainObserver, this.f69690b, this.f69691c));
        this.f69689a.a(timeoutMainObserver);
    }
}
