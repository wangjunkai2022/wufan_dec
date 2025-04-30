package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.operators.maybe.a0;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeZipArray<T, R> extends io.reactivex.q<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<? extends T>[] f67803a;

    /* renamed from: b  reason: collision with root package name */
    final w2.o<? super Object[], ? extends R> f67804b;

    /* loaded from: classes5.dex */
    static final class ZipCoordinator<T, R> extends AtomicInteger implements io.reactivex.disposables.b {
        private static final long serialVersionUID = -5556924161382950569L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f67805a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Object[], ? extends R> f67806b;

        /* renamed from: c  reason: collision with root package name */
        final ZipMaybeObserver<T>[] f67807c;

        /* renamed from: d  reason: collision with root package name */
        final Object[] f67808d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ZipCoordinator(io.reactivex.t<? super R> tVar, int i2, w2.o<? super Object[], ? extends R> oVar) {
            super(i2);
            this.f67805a = tVar;
            this.f67806b = oVar;
            ZipMaybeObserver<T>[] zipMaybeObserverArr = new ZipMaybeObserver[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                zipMaybeObserverArr[i4] = new ZipMaybeObserver<>(this, i4);
            }
            this.f67807c = zipMaybeObserverArr;
            this.f67808d = new Object[i2];
        }

        void a(int i2) {
            ZipMaybeObserver<T>[] zipMaybeObserverArr = this.f67807c;
            int length = zipMaybeObserverArr.length;
            for (int i4 = 0; i4 < i2; i4++) {
                zipMaybeObserverArr[i4].a();
            }
            while (true) {
                i2++;
                if (i2 >= length) {
                    return;
                }
                zipMaybeObserverArr[i2].a();
            }
        }

        void b(int i2) {
            if (getAndSet(0) > 0) {
                a(i2);
                this.f67805a.onComplete();
            }
        }

        void c(Throwable th, int i2) {
            if (getAndSet(0) > 0) {
                a(i2);
                this.f67805a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void d(T t3, int i2) {
            this.f67808d[i2] = t3;
            if (decrementAndGet() == 0) {
                try {
                    this.f67805a.onSuccess(io.reactivex.internal.functions.a.g(this.f67806b.apply(this.f67808d), "The zipper returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f67805a.onError(th);
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (ZipMaybeObserver<T> zipMaybeObserver : this.f67807c) {
                    zipMaybeObserver.a();
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
    public static final class ZipMaybeObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.t<T> {
        private static final long serialVersionUID = 3323743579927613702L;

        /* renamed from: a  reason: collision with root package name */
        final ZipCoordinator<T, ?> f67809a;

        /* renamed from: b  reason: collision with root package name */
        final int f67810b;

        ZipMaybeObserver(ZipCoordinator<T, ?> zipCoordinator, int i2) {
            this.f67809a = zipCoordinator;
            this.f67810b = i2;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f67809a.b(this.f67810b);
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f67809a.c(th, this.f67810b);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t3) {
            this.f67809a.d(t3, this.f67810b);
        }
    }

    /* loaded from: classes5.dex */
    final class a implements w2.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // w2.o
        public R apply(T t3) throws Exception {
            return (R) io.reactivex.internal.functions.a.g(MaybeZipArray.this.f67804b.apply(new Object[]{t3}), "The zipper returned a null value");
        }
    }

    public MaybeZipArray(io.reactivex.w<? extends T>[] wVarArr, w2.o<? super Object[], ? extends R> oVar) {
        this.f67803a = wVarArr;
        this.f67804b = oVar;
    }

    @Override // io.reactivex.q
    protected void o1(io.reactivex.t<? super R> tVar) {
        io.reactivex.w<? extends T>[] wVarArr = this.f67803a;
        int length = wVarArr.length;
        if (length == 1) {
            wVarArr[0].a(new a0.a(tVar, new a()));
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(tVar, length, this.f67804b);
        tVar.onSubscribe(zipCoordinator);
        for (int i2 = 0; i2 < length && !zipCoordinator.isDisposed(); i2++) {
            io.reactivex.w<? extends T> wVar = wVarArr[i2];
            if (wVar == null) {
                zipCoordinator.c(new NullPointerException("One of the sources is null"), i2);
                return;
            }
            wVar.a(zipCoordinator.f67807c[i2]);
        }
    }
}
