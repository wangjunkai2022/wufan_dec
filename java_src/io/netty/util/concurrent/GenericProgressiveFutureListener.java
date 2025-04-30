package io.netty.util.concurrent;

import io.netty.util.concurrent.ProgressiveFuture;
/* loaded from: classes5.dex */
public interface GenericProgressiveFutureListener<F extends ProgressiveFuture<?>> extends GenericFutureListener<F> {
    void operationProgressed(F f4, long j4, long j5) throws Exception;
}
