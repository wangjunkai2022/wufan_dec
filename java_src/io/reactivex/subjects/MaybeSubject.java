package io.reactivex.subjects;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.q;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class MaybeSubject<T> extends q<T> implements t<T> {

    /* renamed from: e  reason: collision with root package name */
    static final MaybeDisposable[] f70306e = new MaybeDisposable[0];

    /* renamed from: f  reason: collision with root package name */
    static final MaybeDisposable[] f70307f = new MaybeDisposable[0];

    /* renamed from: c  reason: collision with root package name */
    T f70310c;

    /* renamed from: d  reason: collision with root package name */
    Throwable f70311d;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f70309b = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<MaybeDisposable<T>[]> f70308a = new AtomicReference<>(f70306e);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class MaybeDisposable<T> extends AtomicReference<MaybeSubject<T>> implements io.reactivex.disposables.b {
        private static final long serialVersionUID = -7650903191002190468L;

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f70312a;

        MaybeDisposable(t<? super T> tVar, MaybeSubject<T> maybeSubject) {
            this.f70312a = tVar;
            lazySet(maybeSubject);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            MaybeSubject<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.l2(this);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == null;
        }
    }

    MaybeSubject() {
    }

    @CheckReturnValue
    @NonNull
    public static <T> MaybeSubject<T> d2() {
        return new MaybeSubject<>();
    }

    boolean c2(MaybeDisposable<T> maybeDisposable) {
        MaybeDisposable<T>[] maybeDisposableArr;
        MaybeDisposable<T>[] maybeDisposableArr2;
        do {
            maybeDisposableArr = this.f70308a.get();
            if (maybeDisposableArr == f70307f) {
                return false;
            }
            int length = maybeDisposableArr.length;
            maybeDisposableArr2 = new MaybeDisposable[length + 1];
            System.arraycopy(maybeDisposableArr, 0, maybeDisposableArr2, 0, length);
            maybeDisposableArr2[length] = maybeDisposable;
        } while (!this.f70308a.compareAndSet(maybeDisposableArr, maybeDisposableArr2));
        return true;
    }

    @Nullable
    public Throwable e2() {
        if (this.f70308a.get() == f70307f) {
            return this.f70311d;
        }
        return null;
    }

    @Nullable
    public T f2() {
        if (this.f70308a.get() == f70307f) {
            return this.f70310c;
        }
        return null;
    }

    public boolean g2() {
        return this.f70308a.get() == f70307f && this.f70310c == null && this.f70311d == null;
    }

    public boolean h2() {
        return this.f70308a.get().length != 0;
    }

    public boolean i2() {
        return this.f70308a.get() == f70307f && this.f70311d != null;
    }

    public boolean j2() {
        return this.f70308a.get() == f70307f && this.f70310c != null;
    }

    int k2() {
        return this.f70308a.get().length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void l2(MaybeDisposable<T> maybeDisposable) {
        MaybeDisposable<T>[] maybeDisposableArr;
        MaybeDisposable[] maybeDisposableArr2;
        do {
            maybeDisposableArr = this.f70308a.get();
            int length = maybeDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (maybeDisposableArr[i4] == maybeDisposable) {
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
                maybeDisposableArr2 = f70306e;
            } else {
                MaybeDisposable[] maybeDisposableArr3 = new MaybeDisposable[length - 1];
                System.arraycopy(maybeDisposableArr, 0, maybeDisposableArr3, 0, i2);
                System.arraycopy(maybeDisposableArr, i2 + 1, maybeDisposableArr3, i2, (length - i2) - 1);
                maybeDisposableArr2 = maybeDisposableArr3;
            }
        } while (!this.f70308a.compareAndSet(maybeDisposableArr, maybeDisposableArr2));
    }

    @Override // io.reactivex.q
    protected void o1(t<? super T> tVar) {
        MaybeDisposable<T> maybeDisposable = new MaybeDisposable<>(tVar, this);
        tVar.onSubscribe(maybeDisposable);
        if (c2(maybeDisposable)) {
            if (maybeDisposable.isDisposed()) {
                l2(maybeDisposable);
                return;
            }
            return;
        }
        Throwable th = this.f70311d;
        if (th != null) {
            tVar.onError(th);
            return;
        }
        Object obj = (T) this.f70310c;
        if (obj == null) {
            tVar.onComplete();
        } else {
            tVar.onSuccess(obj);
        }
    }

    @Override // io.reactivex.t
    public void onComplete() {
        if (this.f70309b.compareAndSet(false, true)) {
            for (MaybeDisposable<T> maybeDisposable : this.f70308a.getAndSet(f70307f)) {
                maybeDisposable.f70312a.onComplete();
            }
        }
    }

    @Override // io.reactivex.t
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70309b.compareAndSet(false, true)) {
            this.f70311d = th;
            for (MaybeDisposable<T> maybeDisposable : this.f70308a.getAndSet(f70307f)) {
                maybeDisposable.f70312a.onError(th);
            }
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.t
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (this.f70308a.get() == f70307f) {
            bVar.dispose();
        }
    }

    @Override // io.reactivex.t
    public void onSuccess(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70309b.compareAndSet(false, true)) {
            this.f70310c = t3;
            for (MaybeDisposable<T> maybeDisposable : this.f70308a.getAndSet(f70307f)) {
                maybeDisposable.f70312a.onSuccess(t3);
            }
        }
    }
}
