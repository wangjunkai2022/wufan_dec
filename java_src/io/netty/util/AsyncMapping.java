package io.netty.util;

import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.Promise;
/* loaded from: classes5.dex */
public interface AsyncMapping<IN, OUT> {
    Future<OUT> map(IN in2, Promise<OUT> promise);
}
