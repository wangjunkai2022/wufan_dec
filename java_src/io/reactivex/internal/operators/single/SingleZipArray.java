package io.reactivex.internal.operators.single;

import io.reactivex.i0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.operators.single.s;
import io.reactivex.l0;
import io.reactivex.o0;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleZipArray<T, R> extends i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final o0<? extends T>[] f69720a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Object[], ? extends R> f69721b;

    /* loaded from: classes5.dex */
    static final class ZipCoordinator<T, R> extends AtomicInteger implements io.reactivex.disposables.b {
        private static final long serialVersionUID = -5556924161382950569L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super R> f69722a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Object[], ? extends R> f69723b;

        /* renamed from: c  reason: collision with root package name */
        final ZipSingleObserver<T>[] f69724c;

        /* renamed from: d  reason: collision with root package name */
        final Object[] f69725d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ZipCoordinator(l0<? super R> l0Var, int i2, w2.o<? super Object[], ? extends R> oVar) {
            super(i2);
            this.f69722a = l0Var;
            this.f69723b = oVar;
            ZipSingleObserver<T>[] zipSingleObserverArr = new ZipSingleObserver[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                zipSingleObserverArr[i4] = new ZipSingleObserver<>(this, i4);
            }
            this.f69724c = zipSingleObserverArr;
            this.f69725d = new Object[i2];
        }

        void a(int i2) {
            ZipSingleObserver<T>[] zipSingleObserverArr = this.f69724c;
            int length = zipSingleObserverArr.length;
            for (int i4 = 0; i4 < i2; i4++) {
                zipSingleObserverArr[i4].a();
            }
            while (true) {
                i2++;
                if (i2 >= length) {
                    return;
                }
                zipSingleObserverArr[i2].a();
            }
        }

        void b(Throwable th, int i2) {
            if (getAndSet(0) > 0) {
                a(i2);
                this.f69722a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void c(T t3, int i2) {
            this.f69725d[i2] = t3;
            if (decrementAndGet() == 0) {
                try {
                    this.f69722a.onSuccess(io.reactivex.internal.functions.a.g(this.f69723b.apply(this.f69725d), "The zipper returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f69722a.onError(th);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (ZipSingleObserver<T> zipSingleObserver : this.f69724c) {
                    zipSingleObserver.a();
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() <= 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ZipSingleObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements l0<T> {
        private static final long serialVersionUID = 3323743579927613702L;

        /* renamed from: a  reason: collision with root package name */
        final ZipCoordinator<T, ?> f69726a;

        /* renamed from: b  reason: collision with root package name */
        final int f69727b;

        ZipSingleObserver(ZipCoordinator<T, ?> zipCoordinator, int i2) {
            this.f69726a = zipCoordinator;
            this.f69727b = i2;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f69726a.b(th, this.f69727b);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t3) {
            this.f69726a.c(t3, this.f69727b);
        }
    }

    /* loaded from: classes5.dex */
    final class a implements w2.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // w2.o
        public R apply(T t3) throws Exception {
            return (R) io.reactivex.internal.functions.a.g(SingleZipArray.this.f69721b.apply(new Object[]{t3}), "The zipper returned a null value");
        }
    }

    public SingleZipArray(o0<? extends T>[] o0VarArr, w2.o<? super Object[], ? extends R> oVar) {
        this.f69720a = o0VarArr;
        this.f69721b = oVar;
    }

    @Override // io.reactivex.i0
    protected void Y0(l0<? super R> l0Var) {
        o0<? extends T>[] o0VarArr = this.f69720a;
        int length = o0VarArr.length;
        if (length == 1) {
            o0VarArr[0].a(new s.a(l0Var, new a()));
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(l0Var, length, this.f69721b);
        l0Var.onSubscribe(zipCoordinator);
        for (int i2 = 0; i2 < length && !zipCoordinator.isDisposed(); i2++) {
            o0<? extends T> o0Var = o0VarArr[i2];
            if (o0Var == null) {
                zipCoordinator.b(new NullPointerException("One of the sources is null"), i2);
                return;
            }
            o0Var.a(zipCoordinator.f69724c[i2]);
        }
    }
}
