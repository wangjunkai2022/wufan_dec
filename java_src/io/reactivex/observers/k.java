package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
/* compiled from: SafeObserver.java */
/* loaded from: classes5.dex */
public final class k<T> implements g0<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    final g0<? super T> f70138a;

    /* renamed from: b  reason: collision with root package name */
    io.reactivex.disposables.b f70139b;

    /* renamed from: c  reason: collision with root package name */
    boolean f70140c;

    public k(@NonNull g0<? super T> g0Var) {
        this.f70138a = g0Var;
    }

    void a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f70138a.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f70138a.onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th2));
        }
    }

    void b() {
        this.f70140c = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f70138a.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f70138a.onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(nullPointerException, th2));
        }
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        this.f70139b.dispose();
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f70139b.isDisposed();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f70140c) {
            return;
        }
        this.f70140c = true;
        if (this.f70139b == null) {
            a();
            return;
        }
        try {
            this.f70138a.onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.g0
    public void onError(@NonNull Throwable th) {
        if (this.f70140c) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f70140c = true;
        if (this.f70139b == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f70138a.onSubscribe(EmptyDisposable.INSTANCE);
                try {
                    this.f70138a.onError(new CompositeException(th, nullPointerException));
                    return;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    io.reactivex.plugins.a.Y(new CompositeException(th, nullPointerException, th2));
                    return;
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(new CompositeException(th, nullPointerException, th3));
                return;
            }
        }
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        try {
            this.f70138a.onError(th);
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            io.reactivex.plugins.a.Y(new CompositeException(th, th4));
        }
    }

    @Override // io.reactivex.g0
    public void onNext(@NonNull T t3) {
        if (this.f70140c) {
            return;
        }
        if (this.f70139b == null) {
            b();
        } else if (t3 == null) {
            NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            try {
                this.f70139b.dispose();
                onError(nullPointerException);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(new CompositeException(nullPointerException, th));
            }
        } else {
            try {
                this.f70138a.onNext(t3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f70139b.dispose();
                    onError(th2);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    onError(new CompositeException(th2, th3));
                }
            }
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (DisposableHelper.validate(this.f70139b, bVar)) {
            this.f70139b = bVar;
            try {
                this.f70138a.onSubscribe(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f70140c = true;
                try {
                    bVar.dispose();
                    io.reactivex.plugins.a.Y(th);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                }
            }
        }
    }
}
