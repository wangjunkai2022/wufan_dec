package io.reactivex.internal.schedulers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: SchedulerPoolFactory.java */
/* loaded from: classes5.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final String f69933a = "rx2.purge-enabled";

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f69934b;

    /* renamed from: c  reason: collision with root package name */
    static final String f69935c = "rx2.purge-period-seconds";

    /* renamed from: d  reason: collision with root package name */
    public static final int f69936d;

    /* renamed from: e  reason: collision with root package name */
    static final AtomicReference<ScheduledExecutorService> f69937e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    static final Map<ScheduledThreadPoolExecutor, Object> f69938f = new ConcurrentHashMap();

    /* compiled from: SchedulerPoolFactory.java */
    /* loaded from: classes5.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f69939a;

        /* renamed from: b  reason: collision with root package name */
        int f69940b;

        a() {
        }

        void a(Properties properties) {
            if (properties.containsKey(j.f69933a)) {
                this.f69939a = Boolean.parseBoolean(properties.getProperty(j.f69933a));
            } else {
                this.f69939a = true;
            }
            if (this.f69939a && properties.containsKey(j.f69935c)) {
                try {
                    this.f69940b = Integer.parseInt(properties.getProperty(j.f69935c));
                    return;
                } catch (NumberFormatException unused) {
                    this.f69940b = 1;
                    return;
                }
            }
            this.f69940b = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SchedulerPoolFactory.java */
    /* loaded from: classes5.dex */
    public static final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = new ArrayList(j.f69938f.keySet()).iterator();
            while (it2.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it2.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    j.f69938f.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    static {
        Properties properties = System.getProperties();
        a aVar = new a();
        aVar.a(properties);
        f69934b = aVar.f69939a;
        f69936d = aVar.f69940b;
        c();
    }

    private j() {
        throw new IllegalStateException("No instances!");
    }

    public static ScheduledExecutorService a(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        d(f69934b, newScheduledThreadPool);
        return newScheduledThreadPool;
    }

    public static void b() {
        ScheduledExecutorService andSet = f69937e.getAndSet(null);
        if (andSet != null) {
            andSet.shutdownNow();
        }
        f69938f.clear();
    }

    public static void c() {
        e(f69934b);
    }

    static void d(boolean z3, ScheduledExecutorService scheduledExecutorService) {
        if (z3 && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
            f69938f.put((ScheduledThreadPoolExecutor) scheduledExecutorService, scheduledExecutorService);
        }
    }

    static void e(boolean z3) {
        if (!z3) {
            return;
        }
        while (true) {
            AtomicReference<ScheduledExecutorService> atomicReference = f69937e;
            ScheduledExecutorService scheduledExecutorService = atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge"));
            if (atomicReference.compareAndSet(scheduledExecutorService, newScheduledThreadPool)) {
                b bVar = new b();
                int i2 = f69936d;
                newScheduledThreadPool.scheduleAtFixedRate(bVar, i2, i2, TimeUnit.SECONDS);
                return;
            }
            newScheduledThreadPool.shutdownNow();
        }
    }
}
