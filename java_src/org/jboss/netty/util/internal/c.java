package org.jboss.netty.util.internal;

import java.util.Objects;
import java.util.concurrent.Executor;
/* compiled from: DeadLockProofWorker.java */
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<Executor> f73730a = new ThreadLocal<>();

    /* compiled from: DeadLockProofWorker.java */
    /* loaded from: classes5.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Executor f73731a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f73732b;

        a(Executor executor, Runnable runnable) {
            this.f73731a = executor;
            this.f73732b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            ThreadLocal<Executor> threadLocal = c.f73730a;
            threadLocal.set(this.f73731a);
            try {
                this.f73732b.run();
                threadLocal.remove();
            } catch (Throwable th) {
                c.f73730a.remove();
                throw th;
            }
        }
    }

    private c() {
    }

    public static void a(Executor executor, Runnable runnable) {
        Objects.requireNonNull(executor, "parent");
        Objects.requireNonNull(runnable, "runnable");
        executor.execute(new a(executor, runnable));
    }
}
