package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicInteger;
import x2.l;
/* loaded from: classes5.dex */
public abstract class BasicIntQueueSubscription<T> extends AtomicInteger implements l<T> {
    private static final long serialVersionUID = -6671519529404341862L;

    @Override // x2.o
    public final boolean offer(T t3) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // x2.o
    public final boolean offer(T t3, T t4) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
