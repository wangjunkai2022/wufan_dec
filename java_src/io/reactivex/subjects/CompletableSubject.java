package io.reactivex.subjects;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.d;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class CompletableSubject extends io.reactivex.a implements d {

    /* renamed from: d  reason: collision with root package name */
    static final CompletableDisposable[] f70300d = new CompletableDisposable[0];

    /* renamed from: e  reason: collision with root package name */
    static final CompletableDisposable[] f70301e = new CompletableDisposable[0];

    /* renamed from: c  reason: collision with root package name */
    Throwable f70304c;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f70303b = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<CompletableDisposable[]> f70302a = new AtomicReference<>(f70300d);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class CompletableDisposable extends AtomicReference<CompletableSubject> implements io.reactivex.disposables.b {
        private static final long serialVersionUID = -7650903191002190468L;

        /* renamed from: a  reason: collision with root package name */
        final d f70305a;

        CompletableDisposable(d dVar, CompletableSubject completableSubject) {
            this.f70305a = dVar;
            lazySet(completableSubject);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            CompletableSubject andSet = getAndSet(null);
            if (andSet != null) {
                andSet.l1(this);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get() == null;
        }
    }

    CompletableSubject() {
    }

    @CheckReturnValue
    @NonNull
    public static CompletableSubject f1() {
        return new CompletableSubject();
    }

    @Override // io.reactivex.a
    protected void F0(d dVar) {
        CompletableDisposable completableDisposable = new CompletableDisposable(dVar, this);
        dVar.onSubscribe(completableDisposable);
        if (e1(completableDisposable)) {
            if (completableDisposable.isDisposed()) {
                l1(completableDisposable);
                return;
            }
            return;
        }
        Throwable th = this.f70304c;
        if (th != null) {
            dVar.onError(th);
        } else {
            dVar.onComplete();
        }
    }

    boolean e1(CompletableDisposable completableDisposable) {
        CompletableDisposable[] completableDisposableArr;
        CompletableDisposable[] completableDisposableArr2;
        do {
            completableDisposableArr = this.f70302a.get();
            if (completableDisposableArr == f70301e) {
                return false;
            }
            int length = completableDisposableArr.length;
            completableDisposableArr2 = new CompletableDisposable[length + 1];
            System.arraycopy(completableDisposableArr, 0, completableDisposableArr2, 0, length);
            completableDisposableArr2[length] = completableDisposable;
        } while (!this.f70302a.compareAndSet(completableDisposableArr, completableDisposableArr2));
        return true;
    }

    @Nullable
    public Throwable g1() {
        if (this.f70302a.get() == f70301e) {
            return this.f70304c;
        }
        return null;
    }

    public boolean h1() {
        return this.f70302a.get() == f70301e && this.f70304c == null;
    }

    public boolean i1() {
        return this.f70302a.get().length != 0;
    }

    public boolean j1() {
        return this.f70302a.get() == f70301e && this.f70304c != null;
    }

    int k1() {
        return this.f70302a.get().length;
    }

    void l1(CompletableDisposable completableDisposable) {
        CompletableDisposable[] completableDisposableArr;
        CompletableDisposable[] completableDisposableArr2;
        do {
            completableDisposableArr = this.f70302a.get();
            int length = completableDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (completableDisposableArr[i4] == completableDisposable) {
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
                completableDisposableArr2 = f70300d;
            } else {
                CompletableDisposable[] completableDisposableArr3 = new CompletableDisposable[length - 1];
                System.arraycopy(completableDisposableArr, 0, completableDisposableArr3, 0, i2);
                System.arraycopy(completableDisposableArr, i2 + 1, completableDisposableArr3, i2, (length - i2) - 1);
                completableDisposableArr2 = completableDisposableArr3;
            }
        } while (!this.f70302a.compareAndSet(completableDisposableArr, completableDisposableArr2));
    }

    @Override // io.reactivex.d
    public void onComplete() {
        if (this.f70303b.compareAndSet(false, true)) {
            for (CompletableDisposable completableDisposable : this.f70302a.getAndSet(f70301e)) {
                completableDisposable.f70305a.onComplete();
            }
        }
    }

    @Override // io.reactivex.d
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f70303b.compareAndSet(false, true)) {
            this.f70304c = th;
            for (CompletableDisposable completableDisposable : this.f70302a.getAndSet(f70301e)) {
                completableDisposable.f70305a.onError(th);
            }
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.d
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (this.f70302a.get() == f70301e) {
            bVar.dispose();
        }
    }
}
