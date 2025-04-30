package io.reactivex.disposables;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
final class FutureDisposable extends AtomicReference<Future<?>> implements b {
    private static final long serialVersionUID = 6545242830671168775L;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f65795a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FutureDisposable(Future<?> future, boolean z3) {
        super(future);
        this.f65795a = z3;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        Future<?> andSet = getAndSet(null);
        if (andSet != null) {
            andSet.cancel(this.f65795a);
        }
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        Future<?> future = get();
        return future == null || future.isDone();
    }
}
