package com.facebook.common.executors;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: DefaultSerialExecutorService.java */
/* loaded from: classes2.dex */
public class c extends b implements g {
    public c(Executor executor) {
        super("SerialExecutor", 1, executor, new LinkedBlockingQueue());
    }

    @Override // com.facebook.common.executors.b, java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        super.execute(runnable);
    }
}
