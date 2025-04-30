package com.umeng.umzid;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static volatile ScheduledThreadPoolExecutor f61568a;

    /* renamed from: b  reason: collision with root package name */
    public static ThreadFactory f61569b = new a();

    /* loaded from: classes4.dex */
    public static class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        public AtomicInteger f61570a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("ZIDThreadPoolExecutor" + this.f61570a.addAndGet(1));
            return thread;
        }
    }

    public static ScheduledThreadPoolExecutor a() {
        if (f61568a == null) {
            synchronized (b.class) {
                if (f61568a == null) {
                    f61568a = new ScheduledThreadPoolExecutor(Runtime.getRuntime().availableProcessors() * 4, f61569b);
                }
            }
        }
        return f61568a;
    }

    public static void a(Runnable runnable) {
        try {
            a().execute(runnable);
        } catch (Throwable unused) {
        }
    }
}
