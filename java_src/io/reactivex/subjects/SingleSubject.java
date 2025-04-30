package io.reactivex.subjects;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.i0;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class SingleSubject<T> extends i0<T> implements l0<T> {

    /* renamed from: e  reason: collision with root package name */
    static final SingleDisposable[] f70348e = new SingleDisposable[0];

    /* renamed from: f  reason: collision with root package name */
    static final SingleDisposable[] f70349f = new SingleDisposable[0];

    /* renamed from: c  reason: collision with root package name */
    T f70352c;

    /* renamed from: d  reason: collision with root package name */
    Throwable f70353d;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f70351b = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<SingleDisposable<T>[]> f70350a = new AtomicReference<>(f70348e);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class SingleDisposable<T> extends AtomicReference<SingleSubject<T>> implements io.reactivex.disposables.b {
        private static final long serialVersionUID = -7650903191002190468L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f70354a;

        SingleDisposable(l0<? super T> l0Var, SingleSubject<T> singleSubject) {
            this.f70354a = l0Var;
            lazySet(singleSubject);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            SingleSubject<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.S1(this);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == null;
        }
    }

    SingleSubject() {
    }

    @CheckReturnValue
    @NonNull
    public static <T> SingleSubject<T> L1() {
        return new SingleSubject<>();
    }

    boolean K1(@NonNull SingleDisposable<T> singleDisposable) {
        SingleDisposable<T>[] singleDisposableArr;
        SingleDisposable<T>[] singleDisposableArr2;
        do {
            singleDisposableArr = this.f70350a.get();
            if (singleDisposableArr == f70349f) {
                return false;
            }
            int length = singleDisposableArr.length;
            singleDisposableArr2 = new SingleDisposable[length + 1];
            System.arraycopy(singleDisposableArr, 0, singleDisposableArr2, 0, length);
            singleDisposableArr2[length] = singleDisposable;
        } while (!this.f70350a.compareAndSet(singleDisposableArr, singleDisposableArr2));
        return true;
    }

    @Nullable
    public Throwable M1() {
        if (this.f70350a.get() == f70349f) {
            return this.f70353d;
        }
        return null;
    }

    @Nullable
    public T N1() {
        if (this.f70350a.get() == f70349f) {
            return this.f70352c;
        }
        return null;
    }

    public boolean O1() {
        return this.f70350a.get().length != 0;
    }

    public boolean P1() {
        return this.f70350a.get() == f70349f && this.f70353d != null;
    }

    public boolean Q1() {
        return this.f70350a.get() == f70349f && this.f70352c != null;
    }

    int R1() {
        return this.f70350a.get().length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void S1(@NonNull SingleDisposable<T> singleDisposable) {
        SingleDisposable<T>[] singleDisposableArr;
        SingleDisposable[] singleDisposableArr2;
        do {
            singleDisposableArr = this.f70350a.get();
            int length = singleDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (singleDisposableArr[i4] == singleDisposable) {
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
                singleDisposableArr2 = f70348e;
            } else {
                SingleDisposable[] singleDisposableArr3 = new SingleDisposable[length - 1];
                System.arraycopy(singleDisposableArr, 0, singleDisposableArr3, 0, i2);
                System.arraycopy(singleDisposableArr, i2 + 1, singleDisposableArr3, i2, (length - i2) - 1);
                singleDisposableArr2 = singleDisposableArr3;
            }
        } while (!this.f70350a.compareAndSet(singleDisposableArr, singleDisposableArr2));
    }

    @Override // io.reactivex.i0
    protected void Y0(@NonNull l0<? super T> l0Var) {
        SingleDisposable<T> singleDisposable = new SingleDisposable<>(l0Var, this);
        l0Var.onSubscribe(singleDisposable);
        if (K1(singleDisposable)) {
            if (singleDisposable.isDisposed()) {
                S1(singleDisposable);
                return;
            }
            return;
        }
        Throwable th = this.f70353d;
        if (th != null) {
            l0Var.onError(th);
        } else {
            l0Var.onSuccess((T) this.f70352c);
        }
    }

    @Override // io.reactivex.l0
    public void onError(@NonNull Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70351b.compareAndSet(false, true)) {
            this.f70353d = th;
            for (SingleDisposable<T> singleDisposable : this.f70350a.getAndSet(f70349f)) {
                singleDisposable.f70354a.onError(th);
            }
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.l0
    public void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (this.f70350a.get() == f70349f) {
            bVar.dispose();
        }
    }

    @Override // io.reactivex.l0
    public void onSuccess(@NonNull T t3) {
        io.reactivex.internal.functions.a.g(t3, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70351b.compareAndSet(false, true)) {
            this.f70352c = t3;
            for (SingleDisposable<T> singleDisposable : this.f70350a.getAndSet(f70349f)) {
                singleDisposable.f70354a.onSuccess(t3);
            }
        }
    }
}
