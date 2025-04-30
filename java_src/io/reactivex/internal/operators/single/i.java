package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.l0;
import io.reactivex.o0;
/* compiled from: SingleDoOnSubscribe.java */
/* loaded from: classes5.dex */
public final class i<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final o0<T> f69768a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super io.reactivex.disposables.b> f69769b;

    /* compiled from: SingleDoOnSubscribe.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f69770a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super io.reactivex.disposables.b> f69771b;

        /* renamed from: c  reason: collision with root package name */
        boolean f69772c;

        a(l0<? super T> l0Var, w2.g<? super io.reactivex.disposables.b> gVar) {
            this.f69770a = l0Var;
            this.f69771b = gVar;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            if (this.f69772c) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f69770a.onError(th);
            }
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            try {
                this.f69771b.accept(bVar);
                this.f69770a.onSubscribe(bVar);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f69772c = true;
                bVar.dispose();
                EmptyDisposable.error(th, this.f69770a);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            if (this.f69772c) {
                return;
            }
            this.f69770a.onSuccess(t3);
        }
    }

    public i(o0<T> o0Var, w2.g<? super io.reactivex.disposables.b> gVar) {
        this.f69768a = o0Var;
        this.f69769b = gVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f69768a.a(new a(l0Var, this.f69769b));
    }
}
