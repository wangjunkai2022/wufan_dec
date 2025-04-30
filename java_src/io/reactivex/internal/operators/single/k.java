package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: SingleEquals.java */
/* loaded from: classes5.dex */
public final class k<T> extends i0<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T> f69777a;

    /* renamed from: b  reason: collision with root package name */
    final o0<? extends T> f69778b;

    /* compiled from: SingleEquals.java */
    /* loaded from: classes5.dex */
    static class a<T> implements l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f69779a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.a f69780b;

        /* renamed from: c  reason: collision with root package name */
        final Object[] f69781c;

        /* renamed from: d  reason: collision with root package name */
        final l0<? super Boolean> f69782d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f69783e;

        a(int i2, io.reactivex.disposables.a aVar, Object[] objArr, l0<? super Boolean> l0Var, AtomicInteger atomicInteger) {
            this.f69779a = i2;
            this.f69780b = aVar;
            this.f69781c = objArr;
            this.f69782d = l0Var;
            this.f69783e = atomicInteger;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            int i2;
            do {
                i2 = this.f69783e.get();
                if (i2 >= 2) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                }
            } while (!this.f69783e.compareAndSet(i2, 2));
            this.f69780b.dispose();
            this.f69782d.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.f69780b.b(bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69781c[this.f69779a] = t3;
            if (this.f69783e.incrementAndGet() == 2) {
                l0<? super Boolean> l0Var = this.f69782d;
                Object[] objArr = this.f69781c;
                l0Var.onSuccess(Boolean.valueOf(io.reactivex.internal.functions.a.c(objArr[0], objArr[1])));
            }
        }
    }

    public k(o0<? extends T> o0Var, o0<? extends T> o0Var2) {
        this.f69777a = o0Var;
        this.f69778b = o0Var2;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super Boolean> l0Var) {
        AtomicInteger atomicInteger = new AtomicInteger();
        Object[] objArr = {null, null};
        io.reactivex.disposables.a aVar = new io.reactivex.disposables.a();
        l0Var.onSubscribe(aVar);
        this.f69777a.a(new a(0, aVar, objArr, l0Var, atomicInteger));
        this.f69778b.a(new a(1, aVar, objArr, l0Var, atomicInteger));
    }
}
