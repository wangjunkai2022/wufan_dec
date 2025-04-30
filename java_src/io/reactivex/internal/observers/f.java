package io.reactivex.internal.observers;

import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.l0;
import io.reactivex.t;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: BlockingMultiObserver.java */
/* loaded from: classes5.dex */
public final class f<T> extends CountDownLatch implements l0<T>, io.reactivex.d, t<T> {

    /* renamed from: a  reason: collision with root package name */
    T f65901a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f65902b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.disposables.b f65903c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f65904d;

    public f() {
        super(1);
    }

    public boolean a(long j4, TimeUnit timeUnit) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                if (!await(j4, timeUnit)) {
                    f();
                    return false;
                }
            } catch (InterruptedException e4) {
                f();
                throw ExceptionHelper.e(e4);
            }
        }
        Throwable th = this.f65902b;
        if (th == null) {
            return true;
        }
        throw ExceptionHelper.e(th);
    }

    public T b() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                f();
                throw ExceptionHelper.e(e4);
            }
        }
        Throwable th = this.f65902b;
        if (th == null) {
            return this.f65901a;
        }
        throw ExceptionHelper.e(th);
    }

    public T c(T t3) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                f();
                throw ExceptionHelper.e(e4);
            }
        }
        Throwable th = this.f65902b;
        if (th == null) {
            T t4 = this.f65901a;
            return t4 != null ? t4 : t3;
        }
        throw ExceptionHelper.e(th);
    }

    public Throwable d() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                f();
                return e4;
            }
        }
        return this.f65902b;
    }

    public Throwable e(long j4, TimeUnit timeUnit) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                if (!await(j4, timeUnit)) {
                    f();
                    throw ExceptionHelper.e(new TimeoutException());
                }
            } catch (InterruptedException e4) {
                f();
                throw ExceptionHelper.e(e4);
            }
        }
        return this.f65902b;
    }

    void f() {
        this.f65904d = true;
        io.reactivex.disposables.b bVar = this.f65903c;
        if (bVar != null) {
            bVar.dispose();
        }
    }

    @Override // io.reactivex.d
    public void onComplete() {
        countDown();
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        this.f65902b = th;
        countDown();
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.b bVar) {
        this.f65903c = bVar;
        if (this.f65904d) {
            bVar.dispose();
        }
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t3) {
        this.f65901a = t3;
        countDown();
    }
}
