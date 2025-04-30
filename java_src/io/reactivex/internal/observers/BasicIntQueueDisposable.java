package io.reactivex.internal.observers;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public abstract class BasicIntQueueDisposable<T> extends AtomicInteger implements x2.j<T> {
    private static final long serialVersionUID = -1001730202384742097L;

    @Override // x2.o
    public final boolean offer(T t3) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // x2.o
    public final boolean offer(T t3, T t4) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
