package io.netty.util.concurrent;

import io.netty.util.concurrent.Future;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PromiseNotificationUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
/* loaded from: classes5.dex */
public class PromiseNotifier<V, F extends Future<V>> implements GenericFutureListener<F> {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(PromiseNotifier.class);
    private final boolean logNotifyFailure;
    private final Promise<? super V>[] promises;

    @SafeVarargs
    public PromiseNotifier(Promise<? super V>... promiseArr) {
        this(true, promiseArr);
    }

    @Override // io.netty.util.concurrent.GenericFutureListener
    public void operationComplete(F f4) throws Exception {
        InternalLogger internalLogger = this.logNotifyFailure ? logger : null;
        int i2 = 0;
        if (f4.isSuccess()) {
            Object obj = f4.get();
            Promise<? super V>[] promiseArr = this.promises;
            int length = promiseArr.length;
            while (i2 < length) {
                PromiseNotificationUtil.trySuccess(promiseArr[i2], obj, internalLogger);
                i2++;
            }
        } else if (f4.isCancelled()) {
            Promise<? super V>[] promiseArr2 = this.promises;
            int length2 = promiseArr2.length;
            while (i2 < length2) {
                PromiseNotificationUtil.tryCancel(promiseArr2[i2], internalLogger);
                i2++;
            }
        } else {
            Throwable cause = f4.cause();
            Promise<? super V>[] promiseArr3 = this.promises;
            int length3 = promiseArr3.length;
            while (i2 < length3) {
                PromiseNotificationUtil.tryFailure(promiseArr3[i2], cause, internalLogger);
                i2++;
            }
        }
    }

    @SafeVarargs
    public PromiseNotifier(boolean z3, Promise<? super V>... promiseArr) {
        ObjectUtil.checkNotNull(promiseArr, "promises");
        for (Promise<? super V> promise : promiseArr) {
            if (promise == null) {
                throw new IllegalArgumentException("promises contains null Promise");
            }
        }
        this.promises = (Promise[]) promiseArr.clone();
        this.logNotifyFailure = z3;
    }
}
