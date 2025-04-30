package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;
/* compiled from: BlockingBaseObserver.java */
/* loaded from: classes5.dex */
public abstract class c<T> extends CountDownLatch implements g0<T>, io.reactivex.disposables.b {

    /* renamed from: a  reason: collision with root package name */
    T f65897a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f65898b;

    /* renamed from: c  reason: collision with root package name */
    io.reactivex.disposables.b f65899c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f65900d;

    public c() {
        super(1);
    }

    public final T a() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                dispose();
                throw ExceptionHelper.e(e4);
            }
        }
        Throwable th = this.f65898b;
        if (th == null) {
            return this.f65897a;
        }
        throw ExceptionHelper.e(th);
    }

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        this.f65900d = true;
        io.reactivex.disposables.b bVar = this.f65899c;
        if (bVar != null) {
            bVar.dispose();
        }
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return this.f65900d;
    }

    @Override // io.reactivex.g0
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.g0
    public final void onSubscribe(io.reactivex.disposables.b bVar) {
        this.f65899c = bVar;
        if (this.f65900d) {
            bVar.dispose();
        }
    }
}
