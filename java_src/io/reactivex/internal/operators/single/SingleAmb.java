package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class SingleAmb<T> extends i0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final o0<? extends T>[] f69585a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends o0<? extends T>> f69586b;

    /* loaded from: classes5.dex */
    static final class AmbSingleObserver<T> extends AtomicBoolean implements l0<T> {
        private static final long serialVersionUID = -1944085461036028108L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.disposables.a f69587a;

        /* renamed from: b  reason: collision with root package name */
        final l0<? super T> f69588b;

        AmbSingleObserver(l0<? super T> l0Var, io.reactivex.disposables.a aVar) {
            this.f69588b = l0Var;
            this.f69587a = aVar;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.f69587a.dispose();
                this.f69588b.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69587a.b(bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            if (compareAndSet(false, true)) {
                this.f69587a.dispose();
                this.f69588b.onSuccess(t3);
            }
        }
    }

    public SingleAmb(o0<? extends T>[] o0VarArr, Iterable<? extends o0<? extends T>> iterable) {
        this.f69585a = o0VarArr;
        this.f69586b = iterable;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super T> l0Var) {
        int length;
        o0<? extends T>[] o0VarArr = this.f69585a;
        if (o0VarArr == null) {
            o0VarArr = new o0[8];
            try {
                length = 0;
                for (o0<? extends T> o0Var : this.f69586b) {
                    if (o0Var == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), l0Var);
                        return;
                    }
                    if (length == o0VarArr.length) {
                        o0<? extends T>[] o0VarArr2 = new o0[(length >> 2) + length];
                        System.arraycopy(o0VarArr, 0, o0VarArr2, 0, length);
                        o0VarArr = o0VarArr2;
                    }
                    int i2 = length + 1;
                    o0VarArr[length] = o0Var;
                    length = i2;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, l0Var);
                return;
            }
        } else {
            length = o0VarArr.length;
        }
        io.reactivex.disposables.a aVar = new io.reactivex.disposables.a();
        AmbSingleObserver ambSingleObserver = new AmbSingleObserver(l0Var, aVar);
        l0Var.onSubscribe(aVar);
        for (int i4 = 0; i4 < length; i4++) {
            o0<? extends T> o0Var2 = o0VarArr[i4];
            if (ambSingleObserver.get()) {
                return;
            }
            if (o0Var2 == null) {
                aVar.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                if (ambSingleObserver.compareAndSet(false, true)) {
                    l0Var.onError(nullPointerException);
                    return;
                } else {
                    io.reactivex.plugins.a.Y(nullPointerException);
                    return;
                }
            }
            o0Var2.a(ambSingleObserver);
        }
    }
}
