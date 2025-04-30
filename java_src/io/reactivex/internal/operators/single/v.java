package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.single.SingleZipArray;
import io.reactivex.internal.operators.single.s;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.Arrays;
import java.util.NoSuchElementException;
/* compiled from: SingleZipIterable.java */
/* loaded from: classes5.dex */
public final class v<T, R> extends i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends o0<? extends T>> f69809a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Object[], ? extends R> f69810b;

    /* compiled from: SingleZipIterable.java */
    /* loaded from: classes5.dex */
    final class a implements w2.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // w2.o
        public R apply(T t3) throws Exception {
            return (R) io.reactivex.internal.functions.a.g(v.this.f69810b.apply(new Object[]{t3}), "The zipper returned a null value");
        }
    }

    public v(Iterable<? extends o0<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar) {
        this.f69809a = iterable;
        this.f69810b = oVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super R> l0Var) {
        o0[] o0VarArr = new o0[8];
        try {
            int i2 = 0;
            for (o0<? extends T> o0Var : this.f69809a) {
                if (o0Var == null) {
                    EmptyDisposable.error(new NullPointerException("One of the sources is null"), l0Var);
                    return;
                }
                if (i2 == o0VarArr.length) {
                    o0VarArr = (o0[]) Arrays.copyOf(o0VarArr, (i2 >> 2) + i2);
                }
                int i4 = i2 + 1;
                o0VarArr[i2] = o0Var;
                i2 = i4;
            }
            if (i2 == 0) {
                EmptyDisposable.error(new NoSuchElementException(), l0Var);
            } else if (i2 == 1) {
                o0VarArr[0].a(new s.a(l0Var, new a()));
            } else {
                SingleZipArray.ZipCoordinator zipCoordinator = new SingleZipArray.ZipCoordinator(l0Var, i2, this.f69810b);
                l0Var.onSubscribe(zipCoordinator);
                for (int i5 = 0; i5 < i2 && !zipCoordinator.isDisposed(); i5++) {
                    o0VarArr[i5].a(zipCoordinator.f69724c[i5]);
                }
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }
}
