package com.join.mgps.zxing.decoding;

import android.app.Activity;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* compiled from: InactivityTimer.java */
/* loaded from: classes4.dex */
public final class g {

    /* renamed from: d  reason: collision with root package name */
    private static final int f52524d = 300;

    /* renamed from: b  reason: collision with root package name */
    private final Activity f52526b;

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f52525a = Executors.newSingleThreadScheduledExecutor(new b());

    /* renamed from: c  reason: collision with root package name */
    private ScheduledFuture<?> f52527c = null;

    /* compiled from: InactivityTimer.java */
    /* loaded from: classes4.dex */
    private static final class b implements ThreadFactory {
        private b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setDaemon(true);
            return thread;
        }
    }

    public g(Activity activity) {
        this.f52526b = activity;
        b();
    }

    private void a() {
        ScheduledFuture<?> scheduledFuture = this.f52527c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f52527c = null;
        }
    }

    public void b() {
        a();
        this.f52527c = this.f52525a.schedule(new f(this.f52526b), 300L, TimeUnit.SECONDS);
    }

    public void c() {
        a();
        this.f52525a.shutdown();
    }
}
