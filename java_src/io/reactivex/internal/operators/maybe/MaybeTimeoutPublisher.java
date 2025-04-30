package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeTimeoutPublisher<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final l3.b<U> f67775b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.w<? extends T> f67776c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class TimeoutFallbackMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T> {
        private static final long serialVersionUID = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67777a;

        TimeoutFallbackMaybeObserver(io.reactivex.t<? super T> tVar) {
            this.f67777a = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67777a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67777a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67777a.onSuccess(t3);
        }
    }

    /* loaded from: classes5.dex */
    static final class TimeoutMainMaybeObserver<T, U> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -5955289211445418871L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67778a;

        /* renamed from: b  reason: collision with root package name */
        final TimeoutOtherMaybeObserver<T, U> f67779b = new TimeoutOtherMaybeObserver<>(this);

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.w<? extends T> f67780c;

        /* renamed from: d  reason: collision with root package name */
        final TimeoutFallbackMaybeObserver<T> f67781d;

        TimeoutMainMaybeObserver(io.reactivex.t<? super T> tVar, io.reactivex.w<? extends T> wVar) {
            this.f67778a = tVar;
            this.f67780c = wVar;
            this.f67781d = wVar != null ? new TimeoutFallbackMaybeObserver<>(tVar) : null;
        }

        public void a() {
            if (DisposableHelper.dispose(this)) {
                io.reactivex.w<? extends T> wVar = this.f67780c;
                if (wVar == null) {
                    this.f67778a.onError(new TimeoutException());
                } else {
                    wVar.a(this.f67781d);
                }
            }
        }

        public void b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f67778a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
            SubscriptionHelper.cancel(this.f67779b);
            TimeoutFallbackMaybeObserver<T> timeoutFallbackMaybeObserver = this.f67781d;
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
            SubscriptionHelper.cancel(this.f67779b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67778a.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f67779b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67778a.onError(th);
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
            SubscriptionHelper.cancel(this.f67779b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f67778a.onSuccess(t3);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class TimeoutOtherMaybeObserver<T, U> extends AtomicReference<l3.d> implements io.reactivex.o<Object> {
        private static final long serialVersionUID = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final TimeoutMainMaybeObserver<T, U> f67782a;

        TimeoutOtherMaybeObserver(TimeoutMainMaybeObserver<T, U> timeoutMainMaybeObserver) {
            this.f67782a = timeoutMainMaybeObserver;
        }

        @Override // l3.c
        public void onComplete() {
            this.f67782a.a();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67782a.b(th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            get().cancel();
            this.f67782a.a();
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    public MaybeTimeoutPublisher(io.reactivex.w<T> wVar, l3.b<U> bVar, io.reactivex.w<? extends T> wVar2) {
        super(wVar);
        this.f67775b = bVar;
        this.f67776c = wVar2;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        TimeoutMainMaybeObserver timeoutMainMaybeObserver = new TimeoutMainMaybeObserver(tVar, this.f67776c);
        tVar.onSubscribe(timeoutMainMaybeObserver);
        this.f67775b.c(timeoutMainMaybeObserver.f67779b);
        this.f67812a.a(timeoutMainMaybeObserver);
    }
}
