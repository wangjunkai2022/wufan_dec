package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicBoolean;
import l3.d;
/* loaded from: classes5.dex */
public final class BooleanSubscription extends AtomicBoolean implements d {
    private static final long serialVersionUID = -8127758972444290902L;

    public boolean a() {
        return get();
    }

    @Override // l3.d
    public void cancel() {
        lazySet(true);
    }

    @Override // l3.d
    public void request(long j4) {
        SubscriptionHelper.validate(j4);
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + ")";
    }
}
