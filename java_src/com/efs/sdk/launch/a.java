package com.efs.sdk.launch;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f11423a = "com.efs.sdk.launch.a";

    /* renamed from: b  reason: collision with root package name */
    private static volatile ScheduledThreadPoolExecutor f11424b;

    /* renamed from: c  reason: collision with root package name */
    private static ThreadFactory f11425c = new ThreadFactory() { // from class: com.efs.sdk.launch.a.1

        /* renamed from: a  reason: collision with root package name */
        private AtomicInteger f11426a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("LaunchThreadPoolExecutor" + this.f11426a.addAndGet(1));
            return thread;
        }
    };

    private static ScheduledThreadPoolExecutor a() {
        if (f11424b == null) {
            synchronized (a.class) {
                if (f11424b == null) {
                    f11424b = new ScheduledThreadPoolExecutor(4, f11425c);
                }
            }
        }
        return f11424b;
    }

    public static void a(Runnable runnable) {
        try {
            a().execute(runnable);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
