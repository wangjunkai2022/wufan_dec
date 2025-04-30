package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableCreate extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e f65976a;

    /* loaded from: classes5.dex */
    static final class Emitter extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.c, io.reactivex.disposables.b {
        private static final long serialVersionUID = -2467358622224974244L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f65977a;

        Emitter(io.reactivex.d dVar) {
            this.f65977a = dVar;
        }

        @Override // io.reactivex.c
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
                this.f65977a.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.c
        public void b(w2.f fVar) {
            c(new CancellableDisposable(fVar));
        }

        @Override // io.reactivex.c
        public void c(io.reactivex.disposables.b bVar) {
            DisposableHelper.set(this, bVar);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.c, io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.c
        public void onComplete() {
            io.reactivex.disposables.b andSet;
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                this.f65977a.onComplete();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.c
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", Emitter.class.getSimpleName(), super.toString());
        }
    }

    public CompletableCreate(io.reactivex.e eVar) {
        this.f65976a = eVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        Emitter emitter = new Emitter(dVar);
        dVar.onSubscribe(emitter);
        try {
            this.f65976a.a(emitter);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            emitter.onError(th);
        }
    }
}
