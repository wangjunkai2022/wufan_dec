package io.reactivex.internal.subscriptions;

import io.reactivex.annotations.Nullable;
import l3.c;
import x2.l;
/* loaded from: classes5.dex */
public enum EmptySubscription implements l<Object> {
    INSTANCE;

    public static void complete(c<?> cVar) {
        cVar.onSubscribe(INSTANCE);
        cVar.onComplete();
    }

    public static void error(Throwable th, c<?> cVar) {
        cVar.onSubscribe(INSTANCE);
        cVar.onError(th);
    }

    @Override // l3.d
    public void cancel() {
    }

    @Override // x2.o
    public void clear() {
    }

    @Override // x2.o
    public boolean isEmpty() {
        return true;
    }

    @Override // x2.o
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // x2.o
    @Nullable
    public Object poll() {
        return null;
    }

    @Override // l3.d
    public void request(long j4) {
        SubscriptionHelper.validate(j4);
    }

    @Override // x2.k
    public int requestFusion(int i2) {
        return i2 & 2;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "EmptySubscription";
    }

    @Override // x2.o
    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
