package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeTimeoutMaybe<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<U> f67767b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.w<? extends T> f67768c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class TimeoutFallbackMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T> {
        private static final long serialVersionUID = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67769a;

        TimeoutFallbackMaybeObserver(io.reactivex.t<? super T> tVar) {
            this.f67769a = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67769a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67769a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67769a.onSuccess(t3);
        }
    }

    /* loaded from: classes5.dex */
    static final class TimeoutMainMaybeObserver<T, U> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -5955289211445418871L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67770a;

        /* renamed from: b  reason: collision with root package name */
        final TimeoutOtherMaybeObserver<T, U> f67771b = new TimeoutOtherMaybeObserver<>(this);

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.w<? extends T> f67772c;

        /* renamed from: d  reason: collision with root package name */
        final TimeoutFallbackMaybeObserver<T> f67773d;

        TimeoutMainMaybeObserver(io.reactivex.t<? super T> tVar, io.reactivex.w<? extends T> wVar) {
            this.f67770a = tVar;
            this.f67772c = wVar;
            this.f67773d = wVar != null ? new TimeoutFallbackMaybeObserver<>(tVar) : null;
        }

        public void a() {
            if (DisposableHelper.dispose(this)) {
                io.reactivex.w<? extends T> wVar = this.f67772c;
                if (wVar == null) {
                    this.f67770a.onError(new TimeoutException());
                } else {
                    wVar.a(this.f67773d);
                }
            }
        }

        public void b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f67770a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f67771b);
            TimeoutFallbackMaybeObserver<T> timeoutFallbackMaybeObserver = this.f67773d;
            if (timeoutFallbackMaybeObserver != null) {
                DisposableHelper.dispose(timeoutFallbackMaybeObserver);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            DisposableHelper.dispose(this.f67771b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67770a.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f67771b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67770a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            DisposableHelper.dispose(this.f67771b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67770a.onSuccess(t3);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class TimeoutOtherMaybeObserver<T, U> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<Object> {
        private static final long serialVersionUID = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final TimeoutMainMaybeObserver<T, U> f67774a;

        TimeoutOtherMaybeObserver(TimeoutMainMaybeObserver<T, U> timeoutMainMaybeObserver) {
            this.f67774a = timeoutMainMaybeObserver;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67774a.a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67774a.b(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(Object obj) {
            this.f67774a.a();
        }
    }

    public MaybeTimeoutMaybe(io.reactivex.w<T> wVar, io.reactivex.w<U> wVar2, io.reactivex.w<? extends T> wVar3) {
        super(wVar);
        this.f67767b = wVar2;
        this.f67768c = wVar3;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        TimeoutMainMaybeObserver timeoutMainMaybeObserver = new TimeoutMainMaybeObserver(tVar, this.f67768c);
        tVar.onSubscribe(timeoutMainMaybeObserver);
        this.f67767b.a(timeoutMainMaybeObserver.f67771b);
        this.f67812a.a(timeoutMainMaybeObserver);
    }
}
