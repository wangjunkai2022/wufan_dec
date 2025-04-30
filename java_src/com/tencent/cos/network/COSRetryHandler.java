package com.tencent.cos.network;

import java.net.SocketTimeoutException;
/* loaded from: classes4.dex */
public class COSRetryHandler {
    public static synchronized boolean retryRequest(int i2, int i4, Exception exc) {
        synchronized (COSRetryHandler.class) {
            if (i2 >= i4) {
                return false;
            }
            if (exc instanceof SocketTimeoutException) {
                return true;
            }
            return exc instanceof InterruptedException;
        }
    }
}
