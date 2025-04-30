package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
public final class ObservableWithLatestFromMany<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<?>[] f68929b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends io.reactivex.e0<?>> f68930c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    final w2.o<? super Object[], R> f68931d;

    /* loaded from: classes5.dex */
    static final class WithLatestFromObserver<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b {
        private static final long serialVersionUID = 1577321883966341961L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f68932a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Object[], R> f68933b;

        /* renamed from: c  reason: collision with root package name */
        final WithLatestInnerObserver[] f68934c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceArray<Object> f68935d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.b> f68936e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f68937f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68938g;

        WithLatestFromObserver(io.reactivex.g0<? super R> g0Var, w2.o<? super Object[], R> oVar, int i2) {
            this.f68932a = g0Var;
            this.f68933b = oVar;
            WithLatestInnerObserver[] withLatestInnerObserverArr = new WithLatestInnerObserver[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                withLatestInnerObserverArr[i4] = new WithLatestInnerObserver(this, i4);
            }
            this.f68934c = withLatestInnerObserverArr;
            this.f68935d = new AtomicReferenceArray<>(i2);
            this.f68936e = new AtomicReference<>();
            this.f68937f = new AtomicThrowable();
        }

        void a(int i2) {
            WithLatestInnerObserver[] withLatestInnerObserverArr = this.f68934c;
            for (int i4 = 0; i4 < withLatestInnerObserverArr.length; i4++) {
                if (i4 != i2) {
                    withLatestInnerObserverArr[i4].a();
                }
            }
        }

        void b(int i2, boolean z3) {
            if (z3) {
                return;
            }
            this.f68938g = true;
            a(i2);
            io.reactivex.internal.util.g.a(this.f68932a, this, this.f68937f);
        }

        void c(int i2, Throwable th) {
            this.f68938g = true;
            DisposableHelper.dispose(this.f68936e);
            a(i2);
            io.reactivex.internal.util.g.c(this.f68932a, th, this, this.f68937f);
        }

        void d(int i2, Object obj) {
            this.f68935d.set(i2, obj);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            DisposableHelper.dispose(this.f68936e);
            for (WithLatestInnerObserver withLatestInnerObserver : this.f68934c) {
                withLatestInnerObserver.a();
            }
        }

        void e(io.reactivex.e0<?>[] e0VarArr, int i2) {
            WithLatestInnerObserver[] withLatestInnerObserverArr = this.f68934c;
            AtomicReference<io.reactivex.disposables.b> atomicReference = this.f68936e;
            for (int i4 = 0; i4 < i2 && !DisposableHelper.isDisposed(atomicReference.get()) && !this.f68938g; i4++) {
                e0VarArr[i4].a(withLatestInnerObserverArr[i4]);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f68936e.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68938g) {
                return;
            }
            this.f68938g = true;
            a(-1);
            io.reactivex.internal.util.g.a(this.f68932a, this, this.f68937f);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68938g) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f68938g = true;
            a(-1);
            io.reactivex.internal.util.g.c(this.f68932a, th, this, this.f68937f);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68938g) {
                return;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f68935d;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            int i2 = 0;
            objArr[0] = t3;
            while (i2 < length) {
                Object obj = atomicReferenceArray.get(i2);
                if (obj == null) {
                    return;
                }
                i2++;
                objArr[i2] = obj;
            }
            try {
                io.reactivex.internal.util.g.e(this.f68932a, io.reactivex.internal.functions.a.g(this.f68933b.apply(objArr), "combiner returned a null value"), this, this.f68937f);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this.f68936e, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class WithLatestInnerObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<Object> {
        private static final long serialVersionUID = 3256684027868224024L;

        /* renamed from: a  reason: collision with root package name */
        final WithLatestFromObserver<?, ?> f68939a;

        /* renamed from: b  reason: collision with root package name */
        final int f68940b;

        /* renamed from: c  reason: collision with root package name */
        boolean f68941c;

        WithLatestInnerObserver(WithLatestFromObserver<?, ?> withLatestFromObserver, int i2) {
            this.f68939a = withLatestFromObserver;
            this.f68940b = i2;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68939a.b(this.f68940b, this.f68941c);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68939a.c(this.f68940b, th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            if (!this.f68941c) {
                this.f68941c = true;
            }
            this.f68939a.d(this.f68940b, obj);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    /* loaded from: classes5.dex */
    final class a implements w2.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // w2.o
        public R apply(T t3) throws Exception {
            return (R) io.reactivex.internal.functions.a.g(ObservableWithLatestFromMany.this.f68931d.apply(new Object[]{t3}), "The combiner returned a null value");
        }
    }

    public ObservableWithLatestFromMany(@NonNull io.reactivex.e0<T> e0Var, @NonNull io.reactivex.e0<?>[] e0VarArr, @NonNull w2.o<? super Object[], R> oVar) {
        super(e0Var);
        this.f68929b = e0VarArr;
        this.f68930c = null;
        this.f68931d = oVar;
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super R> g0Var) {
        int length;
        io.reactivex.e0<?>[] e0VarArr = this.f68929b;
        if (e0VarArr == null) {
            e0VarArr = new io.reactivex.e0[8];
            try {
                length = 0;
                for (io.reactivex.e0<?> e0Var : this.f68930c) {
                    if (length == e0VarArr.length) {
                        e0VarArr = (io.reactivex.e0[]) Arrays.copyOf(e0VarArr, (length >> 1) + length);
                    }
                    int i2 = length + 1;
                    e0VarArr[length] = e0Var;
                    length = i2;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
                return;
            }
        } else {
            length = e0VarArr.length;
        }
        if (length == 0) {
            new x0(this.f68961a, new a()).F5(g0Var);
            return;
        }
        WithLatestFromObserver withLatestFromObserver = new WithLatestFromObserver(g0Var, this.f68931d, length);
        g0Var.onSubscribe(withLatestFromObserver);
        withLatestFromObserver.e(e0VarArr, length);
        this.f68961a.a(withLatestFromObserver);
    }

    public ObservableWithLatestFromMany(@NonNull io.reactivex.e0<T> e0Var, @NonNull Iterable<? extends io.reactivex.e0<?>> iterable, @NonNull w2.o<? super Object[], R> oVar) {
        super(e0Var);
        this.f68929b = null;
        this.f68930c = iterable;
        this.f68931d = oVar;
    }
}
