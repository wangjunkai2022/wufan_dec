package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.maybe.MaybeZipArray;
import io.reactivex.internal.operators.maybe.a0;
import java.util.Arrays;
/* compiled from: MaybeZipIterable.java */
/* loaded from: classes5.dex */
public final class h0<T, R> extends io.reactivex.q<R> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.w<? extends T>> f67860a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Object[], ? extends R> f67861b;

    /* compiled from: MaybeZipIterable.java */
    /* loaded from: classes5.dex */
    final class a implements w2.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // w2.o
        public R apply(T t3) throws Exception {
            return (R) io.reactivex.internal.functions.a.g(h0.this.f67861b.apply(new Object[]{t3}), "The zipper returned a null value");
        }
    }

    public h0(Iterable<? extends io.reactivex.w<? extends T>> iterable, w2.o<? super Object[], ? extends R> oVar) {
        this.f67860a = iterable;
        this.f67861b = oVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super R> tVar) {
        io.reactivex.w[] wVarArr = new io.reactivex.w[8];
        try {
            int i2 = 0;
            for (io.reactivex.w<? extends T> wVar : this.f67860a) {
                if (wVar == null) {
                    EmptyDisposable.error(new NullPointerException("One of the sources is null"), tVar);
                    return;
                }
                if (i2 == wVarArr.length) {
                    wVarArr = (io.reactivex.w[]) Arrays.copyOf(wVarArr, (i2 >> 2) + i2);
                }
                int i4 = i2 + 1;
                wVarArr[i2] = wVar;
                i2 = i4;
            }
            if (i2 == 0) {
                EmptyDisposable.complete(tVar);
            } else if (i2 == 1) {
                wVarArr[0].a(new a0.a(tVar, new a()));
            } else {
                MaybeZipArray.ZipCoordinator zipCoordinator = new MaybeZipArray.ZipCoordinator(tVar, i2, this.f67861b);
                tVar.onSubscribe(zipCoordinator);
                for (int i5 = 0; i5 < i2 && !zipCoordinator.isDisposed(); i5++) {
                    wVarArr[i5].a(zipCoordinator.f67807c[i5]);
                }
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, tVar);
        }
    }
}
