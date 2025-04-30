package io.reactivex.internal.operators.maybe;
/* loaded from: classes5.dex */
public enum MaybeToPublisher implements w2.o<io.reactivex.w<Object>, l3.b<Object>> {
    INSTANCE;

    public static <T> w2.o<io.reactivex.w<T>, l3.b<T>> instance() {
        return INSTANCE;
    }

    @Override // w2.o
    public l3.b<Object> apply(io.reactivex.w<Object> wVar) throws Exception {
        return new MaybeToFlowable(wVar);
    }
}
