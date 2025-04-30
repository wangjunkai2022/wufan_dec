package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleDoAfterSuccess.java */
/* loaded from: classes5.dex */
public final class e<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69750a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super T> f69751b;

    /* compiled from: SingleDoAfterSuccess.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements l0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69752a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super T> f69753b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f69754c;

        a(l0<? super T> l0Var, w2.g<? super T> gVar) {
            this.f69752a = l0Var;
            this.f69753b = gVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f69754c.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f69754c.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69752a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f69754c, bVar)) {
                this.f69754c = bVar;
                this.f69752a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69752a.onSuccess(t3);
            try {
                this.f69753b.accept(t3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }
    }

    public e(o0<T> o0Var, w2.g<? super T> gVar) {
        this.f69750a = o0Var;
        this.f69751b = gVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69750a.a(new a(l0Var, this.f69751b));
    }
}
