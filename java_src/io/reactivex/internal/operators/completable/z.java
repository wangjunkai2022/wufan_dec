package io.reactivex.internal.operators.completable;

import io.reactivex.i0;
import io.reactivex.l0;
import java.util.concurrent.Callable;
/* compiled from: CompletableToSingle.java */
/* loaded from: classes5.dex */
public final class z<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66121a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends T> f66122b;

    /* renamed from: c  reason: collision with root package name */
    final T f66123c;

    /* compiled from: CompletableToSingle.java */
    /* loaded from: classes5.dex */
    final class a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        private final l0<? super T> f66124a;

        a(l0<? super T> l0Var) {
            this.f66124a = l0Var;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            T call;
            z zVar = z.this;
            Callable<? extends T> callable = zVar.f66122b;
            if (callable != null) {
                try {
                    call = callable.call();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f66124a.onError(th);
                    return;
                }
            } else {
                call = zVar.f66123c;
            }
            if (call == null) {
                this.f66124a.onError(new NullPointerException("The value supplied is null"));
            } else {
                this.f66124a.onSuccess(call);
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f66124a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f66124a.onSubscribe(bVar);
        }
    }

    public z(io.reactivex.g gVar, Callable<? extends T> callable, T t3) {
        this.f66121a = gVar;
        this.f66123c = t3;
        this.f66122b = callable;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        this.f66121a.a(new a(l0Var));
    }
}
