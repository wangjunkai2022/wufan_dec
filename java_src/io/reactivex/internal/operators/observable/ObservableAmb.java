package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableAmb<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T>[] f68140a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.e0<? extends T>> f68141b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class AmbInnerObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T> {
        private static final long serialVersionUID = -1185974347409665484L;

        /* renamed from: a  reason: collision with root package name */
        final a<T> f68142a;

        /* renamed from: b  reason: collision with root package name */
        final int f68143b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68144c;

        /* renamed from: d  reason: collision with root package name */
        boolean f68145d;

        AmbInnerObserver(a<T> aVar, int i2, io.reactivex.g0<? super T> g0Var) {
            this.f68142a = aVar;
            this.f68143b = i2;
            this.f68144c = g0Var;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68145d) {
                this.f68144c.onComplete();
            } else if (this.f68142a.b(this.f68143b)) {
                this.f68145d = true;
                this.f68144c.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f68145d) {
                this.f68144c.onError(th);
            } else if (this.f68142a.b(this.f68143b)) {
                this.f68145d = true;
                this.f68144c.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68145d) {
                this.f68144c.onNext(t3);
            } else if (this.f68142a.b(this.f68143b)) {
                this.f68145d = true;
                this.f68144c.onNext(t3);
            } else {
                get().dispose();
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements io.reactivex.disposables.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68146a;

        /* renamed from: b  reason: collision with root package name */
        final AmbInnerObserver<T>[] f68147b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f68148c = new AtomicInteger();

        a(io.reactivex.g0<? super T> g0Var, int i2) {
            this.f68146a = g0Var;
            this.f68147b = new AmbInnerObserver[i2];
        }

        public void a(io.reactivex.e0<? extends T>[] e0VarArr) {
            AmbInnerObserver<T>[] ambInnerObserverArr = this.f68147b;
            int length = ambInnerObserverArr.length;
            int i2 = 0;
            while (i2 < length) {
                int i4 = i2 + 1;
                ambInnerObserverArr[i2] = new AmbInnerObserver<>(this, i4, this.f68146a);
                i2 = i4;
            }
            this.f68148c.lazySet(0);
            this.f68146a.onSubscribe(this);
            for (int i5 = 0; i5 < length && this.f68148c.get() == 0; i5++) {
                e0VarArr[i5].a(ambInnerObserverArr[i5]);
            }
        }

        public boolean b(int i2) {
            int i4 = this.f68148c.get();
            int i5 = 0;
            if (i4 != 0) {
                return i4 == i2;
            } else if (this.f68148c.compareAndSet(0, i2)) {
                AmbInnerObserver<T>[] ambInnerObserverArr = this.f68147b;
                int length = ambInnerObserverArr.length;
                while (i5 < length) {
                    int i6 = i5 + 1;
                    if (i6 != i2) {
                        ambInnerObserverArr[i5].a();
                    }
                    i5 = i6;
                }
                return true;
            } else {
                return false;
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68148c.get() != -1) {
                this.f68148c.lazySet(-1);
                for (AmbInnerObserver<T> ambInnerObserver : this.f68147b) {
                    ambInnerObserver.a();
                }
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68148c.get() == -1;
        }
    }

    public ObservableAmb(io.reactivex.e0<? extends T>[] e0VarArr, Iterable<? extends io.reactivex.e0<? extends T>> iterable) {
        this.f68140a = e0VarArr;
        this.f68141b = iterable;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super T> g0Var) {
        int length;
        io.reactivex.e0<? extends T>[] e0VarArr = this.f68140a;
        if (e0VarArr == null) {
            e0VarArr = new io.reactivex.z[8];
            try {
                length = 0;
                for (io.reactivex.e0<? extends T> e0Var : this.f68141b) {
                    if (e0Var == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), g0Var);
                        return;
                    }
                    if (length == e0VarArr.length) {
                        io.reactivex.e0<? extends T>[] e0VarArr2 = new io.reactivex.e0[(length >> 2) + length];
                        System.arraycopy(e0VarArr, 0, e0VarArr2, 0, length);
                        e0VarArr = e0VarArr2;
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
            EmptyDisposable.complete(g0Var);
        } else if (length == 1) {
            e0VarArr[0].a(g0Var);
        } else {
            new a(g0Var, length).a(e0VarArr);
        }
    }
}
