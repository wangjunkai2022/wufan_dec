package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeCreate<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.u<T> f67629a;

    /* loaded from: classes5.dex */
    static final class Emitter<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.s<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -2467358622224974244L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67630a;

        Emitter(io.reactivex.t<? super T> tVar) {
            this.f67630a = tVar;
        }

        @Override // io.reactivex.s
        public boolean a(Throwable th) {
            io.reactivex.disposables.b andSet;
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return false;
            }
            try {
                this.f67630a.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.s
        public void b(w2.f fVar) {
            c(new CancellableDisposable(fVar));
        }

        @Override // io.reactivex.s
        public void c(io.reactivex.disposables.b bVar) {
            DisposableHelper.set(this, bVar);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.s, io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.s
        public void onComplete() {
            io.reactivex.disposables.b andSet;
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                this.f67630a.onComplete();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.s
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.s
        public void onSuccess(T t3) {
            io.reactivex.disposables.b andSet;
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                if (t3 == null) {
                    this.f67630a.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.f67630a.onSuccess(t3);
                }
                if (andSet != null) {
                    andSet.dispose();
                }
            } catch (Throwable th) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th;
            }
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", Emitter.class.getSimpleName(), super.toString());
        }
    }

    public MaybeCreate(io.reactivex.u<T> uVar) {
        this.f67629a = uVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        Emitter emitter = new Emitter(tVar);
        tVar.onSubscribe(emitter);
        try {
            this.f67629a.a(emitter);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            emitter.onError(th);
        }
    }
}
