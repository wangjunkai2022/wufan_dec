package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleDoAfterTerminate.java */
/* loaded from: classes5.dex */
public final class f<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69755a;

    /* renamed from: b  reason: collision with root package name */
    final w2.a f69756b;

    /* compiled from: SingleDoAfterTerminate.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements l0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69757a;

        /* renamed from: b  reason: collision with root package name */
        final w2.a f69758b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69759c;

        a(l0<? super T> l0Var, w2.a aVar) {
            this.f69757a = l0Var;
            this.f69758b = aVar;
        }

        private void a() {
            try {
                this.f69758b.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69759c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69759c.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69757a.onError(th);
            a();
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69759c, bVar)) {
                this.f69759c = bVar;
                this.f69757a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69757a.onSuccess(t3);
            a();
        }
    }

    public f(o0<T> o0Var, w2.a aVar) {
        this.f69755a = o0Var;
        this.f69756b = aVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69755a.a(new a(l0Var, this.f69756b));
    }
}
