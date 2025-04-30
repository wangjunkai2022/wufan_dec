package com.sdk.d;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
class f implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicInteger f56615a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "PriorityExecutor #" + this.f56615a.getAndIncrement());
    }
}
