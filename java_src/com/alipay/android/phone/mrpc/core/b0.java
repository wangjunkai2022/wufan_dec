package com.alipay.android.phone.mrpc.core;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
final class b0 implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f9424a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "com.alipay.mobile.common.transport.http.HttpManager.HttpWorker #" + this.f9424a.getAndIncrement());
        thread.setPriority(4);
        return thread;
    }
}
