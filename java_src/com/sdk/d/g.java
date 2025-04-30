package com.sdk.d;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class g implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadFactory f56616a = new f();

    /* renamed from: b  reason: collision with root package name */
    public final BlockingQueue<Runnable> f56617b;

    /* renamed from: c  reason: collision with root package name */
    public final ThreadPoolExecutor f56618c;

    public g() {
        i iVar = new i();
        this.f56617b = iVar;
        this.f56618c = new ThreadPoolExecutor(5, 256, 1L, TimeUnit.SECONDS, iVar, f56616a);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f56618c.execute(runnable);
    }
}
