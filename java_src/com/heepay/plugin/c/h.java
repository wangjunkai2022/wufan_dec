package com.heepay.plugin.c;

import android.os.Looper;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class h {

    /* renamed from: e  reason: collision with root package name */
    private static BlockingQueue<Runnable> f16785e = new ArrayBlockingQueue(10);

    /* renamed from: f  reason: collision with root package name */
    private static ThreadFactory f16786f = new ThreadFactory() { // from class: com.heepay.plugin.c.h.1

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f16787a = new AtomicInteger();

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "threadPool thread:" + this.f16787a.getAndIncrement());
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private static int f16781a = 5;

    /* renamed from: b  reason: collision with root package name */
    private static int f16782b = 100;

    /* renamed from: c  reason: collision with root package name */
    private static int f16783c = 10000;

    /* renamed from: d  reason: collision with root package name */
    private static ThreadPoolExecutor f16784d = new ThreadPoolExecutor(f16781a, f16782b, f16783c, TimeUnit.SECONDS, f16785e, f16786f);

    public static void a(Runnable runnable) {
        f16784d.execute(runnable);
    }

    public static boolean a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
