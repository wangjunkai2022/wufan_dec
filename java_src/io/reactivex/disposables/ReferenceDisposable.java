package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
abstract class ReferenceDisposable<T> extends AtomicReference<T> implements b {
    private static final long serialVersionUID = 6537757548749041217L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReferenceDisposable(T t3) {
        super(io.reactivex.internal.functions.a.g(t3, "value is null"));
    }

    protected abstract void a(@NonNull T t3);

    @Override // io.reactivex.disposables.b
    public final void dispose() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        a(andSet);
    }

    @Override // io.reactivex.disposables.b
    public final boolean isDisposed() {
        return get() == null;
    }
}
