package com.bytedance.sdk.openadsdk.b;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: TTThreadManager.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f10626b;

    /* renamed from: a  reason: collision with root package name */
    private volatile ScheduledExecutorService f10627a = Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC0045a());

    /* compiled from: TTThreadManager.java */
    /* renamed from: com.bytedance.sdk.openadsdk.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class ThreadFactoryC0045a implements ThreadFactory {

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f10629b = new AtomicInteger(1);

        /* renamed from: a  reason: collision with root package name */
        private final ThreadGroup f10628a = new ThreadGroup("tt_pangle_group_pl_mgr");

        /* renamed from: c  reason: collision with root package name */
        private final String f10630c = "tt_pangle_thread_pl_mgr";

        ThreadFactoryC0045a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f10628a;
            Thread thread = new Thread(threadGroup, runnable, this.f10630c + this.f10629b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    public static a a() {
        if (f10626b == null) {
            synchronized (a.class) {
                f10626b = new a();
            }
        }
        return f10626b;
    }

    public void a(Runnable runnable) {
        if (runnable != null) {
            try {
                this.f10627a.execute(runnable);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
