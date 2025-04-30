package io.reactivex.parallel;
/* loaded from: classes5.dex */
public enum ParallelFailureHandling implements w2.c<Long, Throwable, ParallelFailureHandling> {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    @Override // w2.c
    public ParallelFailureHandling apply(Long l4, Throwable th) {
        return this;
    }
}
