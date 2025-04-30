package io.reactivex.internal.subscriptions;

import io.reactivex.disposables.b;
import java.util.concurrent.atomic.AtomicReferenceArray;
import l3.d;
/* loaded from: classes5.dex */
public final class ArrayCompositeSubscription extends AtomicReferenceArray<d> implements b {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeSubscription(int i2) {
        super(i2);
    }

    public d a(int i2, d dVar) {
        d dVar2;
        do {
            dVar2 = get(i2);
            if (dVar2 == SubscriptionHelper.CANCELLED) {
                if (dVar != null) {
                    dVar.cancel();
                    return null;
                }
                return null;
            }
        } while (!compareAndSet(i2, dVar2, dVar));
        return dVar2;
    }

    public boolean b(int i2, d dVar) {
        d dVar2;
        do {
            dVar2 = get(i2);
            if (dVar2 == SubscriptionHelper.CANCELLED) {
                if (dVar != null) {
                    dVar.cancel();
                    return false;
                }
                return false;
            }
        } while (!compareAndSet(i2, dVar2, dVar));
        if (dVar2 != null) {
            dVar2.cancel();
            return true;
        }
        return true;
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        d andSet;
        if (get(0) != SubscriptionHelper.CANCELLED) {
            int length = length();
            for (int i2 = 0; i2 < length; i2++) {
                d dVar = get(i2);
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (dVar != subscriptionHelper && (andSet = getAndSet(i2, subscriptionHelper)) != subscriptionHelper && andSet != null) {
                    andSet.cancel();
                }
            }
        }
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return get(0) == SubscriptionHelper.CANCELLED;
    }
}
