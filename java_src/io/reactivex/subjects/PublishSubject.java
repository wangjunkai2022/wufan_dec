package io.reactivex.subjects;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.g0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class PublishSubject<T> extends c<T> {

    /* renamed from: c  reason: collision with root package name */
    static final PublishDisposable[] f70313c = new PublishDisposable[0];

    /* renamed from: d  reason: collision with root package name */
    static final PublishDisposable[] f70314d = new PublishDisposable[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<PublishDisposable<T>[]> f70315a = new AtomicReference<>(f70314d);

    /* renamed from: b  reason: collision with root package name */
    Throwable f70316b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class PublishDisposable<T> extends AtomicBoolean implements io.reactivex.disposables.b {
        private static final long serialVersionUID = 3562861878281475070L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super T> f70317a;

        /* renamed from: b  reason: collision with root package name */
        final PublishSubject<T> f70318b;

        PublishDisposable(g0<? super T> g0Var, PublishSubject<T> publishSubject) {
            this.f70317a = g0Var;
            this.f70318b = publishSubject;
        }

        public void a() {
            if (get()) {
                return;
            }
            this.f70317a.onComplete();
        }

        public void b(Throwable th) {
            if (get()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f70317a.onError(th);
            }
        }

        public void c(T t3) {
            if (get()) {
                return;
            }
            this.f70317a.onNext(t3);
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f70318b.m8(this);
            }
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return get();
        }
    }

    PublishSubject() {
    }

    @CheckReturnValue
    @NonNull
    public static <T> PublishSubject<T> l8() {
        return new PublishSubject<>();
    }

    @Override // io.reactivex.z
    protected void F5(g0<? super T> g0Var) {
        PublishDisposable<T> publishDisposable = new PublishDisposable<>(g0Var, this);
        g0Var.onSubscribe(publishDisposable);
        if (k8(publishDisposable)) {
            if (publishDisposable.isDisposed()) {
                m8(publishDisposable);
                return;
            }
            return;
        }
        Throwable th = this.f70316b;
        if (th != null) {
            g0Var.onError(th);
        } else {
            g0Var.onComplete();
        }
    }

    @Override // io.reactivex.subjects.c
    @Nullable
    public Throwable f8() {
        if (this.f70315a.get() == f70313c) {
            return this.f70316b;
        }
        return null;
    }

    @Override // io.reactivex.subjects.c
    public boolean g8() {
        return this.f70315a.get() == f70313c && this.f70316b == null;
    }

    @Override // io.reactivex.subjects.c
    public boolean h8() {
        return this.f70315a.get().length != 0;
    }

    @Override // io.reactivex.subjects.c
    public boolean i8() {
        return this.f70315a.get() == f70313c && this.f70316b != null;
    }

    boolean k8(PublishDisposable<T> publishDisposable) {
        PublishDisposable<T>[] publishDisposableArr;
        PublishDisposable<T>[] publishDisposableArr2;
        do {
            publishDisposableArr = this.f70315a.get();
            if (publishDisposableArr == f70313c) {
                return false;
            }
            int length = publishDisposableArr.length;
            publishDisposableArr2 = new PublishDisposable[length + 1];
            System.arraycopy(publishDisposableArr, 0, publishDisposableArr2, 0, length);
            publishDisposableArr2[length] = publishDisposable;
        } while (!this.f70315a.compareAndSet(publishDisposableArr, publishDisposableArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void m8(PublishDisposable<T> publishDisposable) {
        PublishDisposable<T>[] publishDisposableArr;
        PublishDisposable[] publishDisposableArr2;
        do {
            publishDisposableArr = this.f70315a.get();
            if (publishDisposableArr == f70313c || publishDisposableArr == f70314d) {
                return;
            }
            int length = publishDisposableArr.length;
            int i2 = -1;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (publishDisposableArr[i4] == publishDisposable) {
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
                publishDisposableArr2 = f70314d;
            } else {
                PublishDisposable[] publishDisposableArr3 = new PublishDisposable[length - 1];
                System.arraycopy(publishDisposableArr, 0, publishDisposableArr3, 0, i2);
                System.arraycopy(publishDisposableArr, i2 + 1, publishDisposableArr3, i2, (length - i2) - 1);
                publishDisposableArr2 = publishDisposableArr3;
            }
        } while (!this.f70315a.compareAndSet(publishDisposableArr, publishDisposableArr2));
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        PublishDisposable<T>[] publishDisposableArr = this.f70315a.get();
        PublishDisposable<T>[] publishDisposableArr2 = f70313c;
        if (publishDisposableArr == publishDisposableArr2) {
            return;
        }
        for (PublishDisposable<T> publishDisposable : this.f70315a.getAndSet(publishDisposableArr2)) {
            publishDisposable.a();
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.internal.functions.a.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        PublishDisposable<T>[] publishDisposableArr = this.f70315a.get();
        PublishDisposable<T>[] publishDisposableArr2 = f70313c;
        if (publishDisposableArr == publishDisposableArr2) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f70316b = th;
        for (PublishDisposable<T> publishDisposable : this.f70315a.getAndSet(publishDisposableArr2)) {
            publishDisposable.b(th);
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t3) {
        io.reactivex.internal.functions.a.g(t3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (PublishDisposable<T> publishDisposable : this.f70315a.get()) {
            publishDisposable.c(t3);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        if (this.f70315a.get() == f70313c) {
            bVar.dispose();
        }
    }
}
