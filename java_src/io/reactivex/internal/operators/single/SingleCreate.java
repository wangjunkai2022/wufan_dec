package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.k0;
import io.reactivex.l0;
import io.reactivex.m0;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleCreate<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final m0<T> f69598a;

    /* loaded from: classes5.dex */
    static final class Emitter<T> extends AtomicReference<io.reactivex.disposables.b> implements k0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = -2467358622224974244L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69599a;

        Emitter(l0<? super T> l0Var) {
            this.f69599a = l0Var;
        }

        @Override // io.reactivex.k0
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
                this.f69599a.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // io.reactivex.k0
        public void b(w2.f fVar) {
            c(new CancellableDisposable(fVar));
        }

        @Override // io.reactivex.k0
        public void c(io.reactivex.disposables.b bVar) {
            DisposableHelper.set(this, bVar);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.k0, io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.k0
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.k0
        public void onSuccess(T t3) {
            io.reactivex.disposables.b andSet;
            io.reactivex.disposables.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar == disposableHelper || (andSet = getAndSet(disposableHelper)) == disposableHelper) {
                return;
            }
            try {
                if (t3 == null) {
                    this.f69599a.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.f69599a.onSuccess(t3);
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

    public SingleCreate(m0<T> m0Var) {
        this.f69598a = m0Var;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        Emitter emitter = new Emitter(l0Var);
        l0Var.onSubscribe(emitter);
        try {
            this.f69598a.a(emitter);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            emitter.onError(th);
        }
    }
}
