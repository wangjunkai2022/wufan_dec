package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: MaybeFilterSingle.java */
/* loaded from: classes5.dex */
public final class l<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f67869a;

    /* renamed from: b  reason: collision with root package name */
    final w2.r<? super T> f67870b;

    /* compiled from: MaybeFilterSingle.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements l0<T>, io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f67871a;

        /* renamed from: b  reason: collision with root package name */
        final w2.r<? super T> f67872b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.b f67873c;

        a(io.reactivex.t<? super T> tVar, w2.r<? super T> rVar) {
            this.f67871a = tVar;
            this.f67872b = rVar;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            io.reactivex.disposables.b bVar = this.f67873c;
            this.f67873c = DisposableHelper.DISPOSED;
            bVar.dispose();
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f67873c.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f67871a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f67873c, bVar)) {
                this.f67873c = bVar;
                this.f67871a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            try {
                if (this.f67872b.test(t3)) {
                    this.f67871a.onSuccess(t3);
                } else {
                    this.f67871a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f67871a.onError(th);
            }
        }
    }

    public l(o0<T> o0Var, w2.r<? super T> rVar) {
        this.f67869a = o0Var;
        this.f67870b = rVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super T> tVar) {
        this.f67869a.a(new a(tVar, this.f67870b));
    }
}
