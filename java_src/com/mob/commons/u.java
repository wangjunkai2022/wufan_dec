package com.mob.commons;

import android.text.TextUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    public static final String f53112a = "M-" + o.a("0022hdhi");

    /* renamed from: b  reason: collision with root package name */
    public static final String f53113b = "M-" + o.a("003Fghekhi");

    /* renamed from: c  reason: collision with root package name */
    public static final ThreadPoolExecutor f53114c;

    /* renamed from: d  reason: collision with root package name */
    public static final ThreadPoolExecutor f53115d;

    /* renamed from: e  reason: collision with root package name */
    public static final ExecutorService f53116e;

    /* renamed from: f  reason: collision with root package name */
    public static final ExecutorService f53117f;

    /* loaded from: classes4.dex */
    private static class a implements RejectedExecutionHandler {
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            try {
                com.mob.commons.a.o.a().c(500L, runnable);
            } catch (Throwable unused) {
            }
        }
    }

    /* loaded from: classes4.dex */
    private static class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private static final AtomicInteger f53118a = new AtomicInteger(1);

        /* renamed from: b  reason: collision with root package name */
        private final ThreadGroup f53119b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicInteger f53120c = new AtomicInteger(1);

        /* renamed from: d  reason: collision with root package name */
        private final String f53121d;

        b(int i2) {
            SecurityManager securityManager = System.getSecurityManager();
            this.f53119b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            if (TextUtils.isEmpty("M-")) {
                this.f53121d = o.a("005eMececedhi") + f53118a.getAndIncrement() + o.a("0086hiLdcYdhKiFdf'hIhi");
                return;
            }
            this.f53121d = u.f53113b + i2 + "-" + f53118a.getAndIncrement() + "-";
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f53119b;
            Thread thread = new Thread(threadGroup, runnable, this.f53121d + this.f53120c.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    static {
        int max = Math.max(2, 5);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f53114c = new ThreadPoolExecutor(2, max, 60L, timeUnit, new SynchronousQueue(), new b(0), new a());
        f53115d = new ThreadPoolExecutor(1, 1, 120L, timeUnit, new LinkedBlockingQueue(), new b(1));
        f53116e = Executors.newCachedThreadPool(new b(2));
        f53117f = Executors.newCachedThreadPool(new b(3));
    }
}
