package io.reactivex.internal.util;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class AtomicThrowable extends AtomicReference<Throwable> {
    private static final long serialVersionUID = 3949248817947090603L;

    public boolean a(Throwable th) {
        return ExceptionHelper.a(this, th);
    }

    public boolean b() {
        return get() == ExceptionHelper.f70084a;
    }

    public Throwable c() {
        return ExceptionHelper.c(this);
    }
}
