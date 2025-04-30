package io.reactivex.internal.subscriptions;

import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.util.b;
import io.reactivex.plugins.a;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import l3.d;
/* loaded from: classes5.dex */
public enum SubscriptionHelper implements d {
    CANCELLED;

    public static boolean cancel(AtomicReference<d> atomicReference) {
        d andSet;
        d dVar = atomicReference.get();
        SubscriptionHelper subscriptionHelper = CANCELLED;
        if (dVar == subscriptionHelper || (andSet = atomicReference.getAndSet(subscriptionHelper)) == subscriptionHelper) {
            return false;
        }
        if (andSet != null) {
            andSet.cancel();
            return true;
        }
        return true;
    }

    public static void deferredRequest(AtomicReference<d> atomicReference, AtomicLong atomicLong, long j4) {
        d dVar = atomicReference.get();
        if (dVar != null) {
            dVar.request(j4);
        } else if (validate(j4)) {
            b.a(atomicLong, j4);
            d dVar2 = atomicReference.get();
            if (dVar2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    dVar2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<d> atomicReference, AtomicLong atomicLong, d dVar) {
        if (setOnce(atomicReference, dVar)) {
            long andSet = atomicLong.getAndSet(0L);
            if (andSet != 0) {
                dVar.request(andSet);
                return true;
            }
            return true;
        }
        return false;
    }

    public static boolean isCancelled(d dVar) {
        return dVar == CANCELLED;
    }

    public static boolean replace(AtomicReference<d> atomicReference, d dVar) {
        d dVar2;
        do {
            dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar != null) {
                    dVar.cancel();
                    return false;
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(dVar2, dVar));
        return true;
    }

    public static void reportMoreProduced(long j4) {
        a.Y(new ProtocolViolationException("More produced than requested: " + j4));
    }

    public static void reportSubscriptionSet() {
        a.Y(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean set(AtomicReference<d> atomicReference, d dVar) {
        d dVar2;
        do {
            dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar != null) {
                    dVar.cancel();
                    return false;
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(dVar2, dVar));
        if (dVar2 != null) {
            dVar2.cancel();
            return true;
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<d> atomicReference, d dVar) {
        io.reactivex.internal.functions.a.g(dVar, "s is null");
        if (atomicReference.compareAndSet(null, dVar)) {
            return true;
        }
        dVar.cancel();
        if (atomicReference.get() != CANCELLED) {
            reportSubscriptionSet();
            return false;
        }
        return false;
    }

    public static boolean validate(d dVar, d dVar2) {
        if (dVar2 == null) {
            a.Y(new NullPointerException("next is null"));
            return false;
        } else if (dVar != null) {
            dVar2.cancel();
            reportSubscriptionSet();
            return false;
        } else {
            return true;
        }
    }

    @Override // l3.d
    public void cancel() {
    }

    @Override // l3.d
    public void request(long j4) {
    }

    public static boolean validate(long j4) {
        if (j4 <= 0) {
            a.Y(new IllegalArgumentException("n > 0 required but it was " + j4));
            return false;
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<d> atomicReference, d dVar, long j4) {
        if (setOnce(atomicReference, dVar)) {
            dVar.request(j4);
            return true;
        }
        return false;
    }
}
