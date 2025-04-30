package io.reactivex.subjects;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.g0;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class AsyncSubject<T> extends c<T> {

    /* renamed from: d  reason: collision with root package name */
    static final AsyncDisposable[] f70294d = new AsyncDisposable[0];

    /* renamed from: e  reason: collision with root package name */
    static final AsyncDisposable[] f70295e = new AsyncDisposable[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<AsyncDisposable<T>[]> f70296a = new AtomicReference<>(f70294d);

    /* renamed from: b  reason: collision with root package name */
    Throwable f70297b;

    /* renamed from: c  reason: collision with root package name */
    T f70298c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class AsyncDisposable<T> extends DeferredScalarDisposable<T> {
        private static final long serialVersionUID = 5629876084736248016L;

        /* renamed from: h  reason: collision with root package name */
        final AsyncSubject<T> f70299h;

        AsyncDisposable(g0<? super T> g0Var, AsyncSubject<T> asyncSubject) {
            super(g0Var);
            this.f70299h = asyncSubject;
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.b
        public void dispose() {
            if (super.d()) {
                this.f70299h.q8(this);
            }
        }

        void onComplete() {
            if (isDisposed()) {
                return;
            }
            this.f65876a.onComplete();
        }

        void onError(Throwable th) {
            if (isDisposed()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f65876a.onError(th);
            }
        }
    }

    AsyncSubject() {
    }

    @CheckReturnValue
    @NonNull
    public static <T> AsyncSubject<T> l8() {
        return new AsyncSubject<>();
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super T> g0Var) {
        AsyncDisposable<T> asyncDisposable = new AsyncDisposable<>(g0Var, this);
        g0Var.onSubscribe(asyncDisposable);
        if (k8(asyncDisposable)) {
            if (asyncDisposable.isDisposed()) {
                q8(asyncDisposable);
                return;
            }
            return;
        }
        Throwable th = this.f70297b;
        if (th != null) {
            g0Var.onError(th);
            return;
        }
        T t3 = this.f70298c;
        if (t3 != null) {
            asyncDisposable.b(t3);
        } else {
            asyncDisposable.onComplete();
        }
    }

    @Override // io.reactivex.subjects.c
    public Throwable f8() {
        if (this.f70296a.get() == f70295e) {
            return this.f70297b;
        }
        return null;
    }

    @Override // io.reactivex.subjects.c
    public boolean g8() {
        return this.f70296a.get() == f70295e && this.f70297b == null;
    }

    @Override // io.reactivex.subjects.c
    public boolean h8() {
        return this.f70296a.get().length != 0;
    }

    @Override // io.reactivex.subjects.c
    public boolean i8() {
        return this.f70296a.get() == f70295e && this.f70297b != null;
    }

    boolean k8(AsyncDisposable<T> asyncDisposable) {
        AsyncDisposable<T>[] asyncDisposableArr;
        AsyncDisposable<T>[] asyncDisposableArr2;
        do {
            asyncDisposableArr = this.f70296a.get();
            if (asyncDisposableArr == f70295e) {
                return false;
            }
            int length = asyncDisposableArr.length;
            asyncDisposableArr2 = new AsyncDisposable[length + 1];
            System.arraycopy(asyncDisposableArr, 0, asyncDisposableArr2, 0, length);
            asyncDisposableArr2[length] = asyncDisposable;
        } while (!this.f70296a.compareAndSet(asyncDisposableArr, asyncDisposableArr2));
        return true;
    }

    @Nullable
    public T m8() {
        if (this.f70296a.get() == f70295e) {
            return this.f70298c;
        }
        return null;
    }

    @Deprecated
    public Object[] n8() {
        T m8 = m8();
        return m8 != null ? new Object[]{m8} : new Object[0];
    }

    @Deprecated
    public T[] o8(T[] tArr) {
        T m8 = m8();
        if (m8 == null) {
            if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        if (tArr.length == 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 1);
        }
        tArr[0] = m8;
        if (tArr.length != 1) {
            tArr[1] = null;
        }
        return tArr;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        AsyncDisposable<T>[] asyncDisposableArr = this.f70296a.get();
        AsyncDisposable<T>[] asyncDisposableArr2 = f70295e;
        if (asyncDisposableArr == asyncDisposableArr2) {
            return;
        }
        T t3 = this.f70298c;
        AsyncDisposable<T>[] andSet = this.f70296a.getAndSet(asyncDisposableArr2);
        int i2 = 0;
        if (t3 == null) {
            int length = andSet.length;
            while (i2 < length) {
                andSet[i2].onComplete();
                i2++;
            }
            return;
        }
        int length2 = andSet.length;
        while (i2 < length2) {
            andSet[i2].b(t3);
            i2++;
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        AsyncDisposable<T>[] asyncDisposableArr = this.f70296a.get();
        AsyncDisposable<T>[] asyncDisposableArr2 = f70295e;
        if (asyncDisposableArr == asyncDisposableArr2) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f70298c = null;
        this.f70297b = th;
        for (AsyncDisposable<T> asyncDisposable : this.f70296a.getAndSet(asyncDisposableArr2)) {
            asyncDisposable.onError(th);
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70296a.get() == f70295e) {
            return;
        }
        this.f70298c = t3;
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (this.f70296a.get() == f70295e) {
            bVar.dispose();
        }
    }

    public boolean p8() {
        return this.f70296a.get() == f70295e && this.f70298c != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void q8(AsyncDisposable<T> asyncDisposable) {
        AsyncDisposable<T>[] asyncDisposableArr;
        AsyncDisposable[] asyncDisposableArr2;
        do {
            asyncDisposableArr = this.f70296a.get();
            int length = asyncDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (asyncDisposableArr[i4] == asyncDisposable) {
                    i2 = i4;
                    break;
                } else {
                    i4++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (length == 1) {
                asyncDisposableArr2 = f70294d;
            } else {
                AsyncDisposable[] asyncDisposableArr3 = new AsyncDisposable[length - 1];
                System.arraycopy(asyncDisposableArr, 0, asyncDisposableArr3, 0, i2);
                System.arraycopy(asyncDisposableArr, i2 + 1, asyncDisposableArr3, i2, (length - i2) - 1);
                asyncDisposableArr2 = asyncDisposableArr3;
            }
        } while (!this.f70296a.compareAndSet(asyncDisposableArr, asyncDisposableArr2));
    }
}
