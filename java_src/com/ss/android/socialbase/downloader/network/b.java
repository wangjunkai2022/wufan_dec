package com.ss.android.socialbase.downloader.network;

import android.net.TrafficStats;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: DeviceBandwidthSampler.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f58521a = false;

    /* renamed from: b  reason: collision with root package name */
    private static final String f58522b = "b";

    /* renamed from: g  reason: collision with root package name */
    private static long f58523g = -1;

    /* renamed from: h  reason: collision with root package name */
    private static volatile b f58524h;

    /* renamed from: c  reason: collision with root package name */
    private final k f58525c = k.a();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicInteger f58526d = new AtomicInteger();

    /* renamed from: e  reason: collision with root package name */
    private final a f58527e = new a(com.ss.android.socialbase.downloader.h.e.a());

    /* renamed from: f  reason: collision with root package name */
    private long f58528f;

    /* compiled from: DeviceBandwidthSampler.java */
    /* loaded from: classes4.dex */
    private class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void a() {
            sendEmptyMessage(1);
        }

        public void b() {
            removeMessages(1);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            b.this.f();
            sendEmptyMessageDelayed(1, 1000L);
        }
    }

    private b() {
    }

    public static b a() {
        if (f58524h == null) {
            synchronized (b.class) {
                if (f58524h == null) {
                    f58524h = new b();
                }
            }
        }
        return f58524h;
    }

    public static long d() {
        return TrafficStats.getTotalRxBytes() - TrafficStats.getMobileRxBytes();
    }

    public static void e() {
        f58521a = com.ss.android.socialbase.downloader.i.f.b(com.ss.android.socialbase.downloader.downloader.c.N());
    }

    public void b() {
        try {
            String str = f58522b;
            com.ss.android.socialbase.downloader.c.a.c(str, "startSampling: mSamplingCounter = " + this.f58526d);
            if (this.f58526d.getAndIncrement() == 0) {
                this.f58527e.a();
                this.f58528f = SystemClock.uptimeMillis();
            }
        } catch (Throwable unused) {
        }
    }

    public void c() {
        try {
            String str = f58522b;
            com.ss.android.socialbase.downloader.c.a.c(str, "stopSampling: mSamplingCounter = " + this.f58526d);
            if (this.f58526d.decrementAndGet() == 0) {
                this.f58527e.b();
                g();
            }
        } catch (Throwable unused) {
        }
    }

    protected void f() {
        long mobileRxBytes;
        try {
            e();
            if (f58521a) {
                mobileRxBytes = d();
            } else {
                mobileRxBytes = TrafficStats.getMobileRxBytes();
            }
            long j4 = f58523g;
            long j5 = mobileRxBytes - j4;
            if (j4 >= 0) {
                synchronized (this) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    this.f58525c.a(j5, uptimeMillis - this.f58528f);
                    this.f58528f = uptimeMillis;
                }
            }
            f58523g = mobileRxBytes;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    protected void g() {
        f();
        f58523g = -1L;
    }
}
