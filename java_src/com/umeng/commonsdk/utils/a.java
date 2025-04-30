package com.umeng.commonsdk.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
/* compiled from: CountDownTimer.java */
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: e  reason: collision with root package name */
    private static final int f61505e = 1;

    /* renamed from: a  reason: collision with root package name */
    private final long f61506a;

    /* renamed from: b  reason: collision with root package name */
    private final long f61507b;

    /* renamed from: c  reason: collision with root package name */
    private long f61508c;

    /* renamed from: f  reason: collision with root package name */
    private HandlerThread f61510f;

    /* renamed from: g  reason: collision with root package name */
    private Handler f61511g;

    /* renamed from: d  reason: collision with root package name */
    private boolean f61509d = false;

    /* renamed from: h  reason: collision with root package name */
    private Handler.Callback f61512h = new Handler.Callback() { // from class: com.umeng.commonsdk.utils.a.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            synchronized (a.this) {
                if (a.this.f61509d) {
                    return true;
                }
                long elapsedRealtime = a.this.f61508c - SystemClock.elapsedRealtime();
                if (elapsedRealtime > 0) {
                    if (elapsedRealtime < a.this.f61507b) {
                        a.this.f61511g.sendMessageDelayed(a.this.f61511g.obtainMessage(1), elapsedRealtime);
                    } else {
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        a.this.a(elapsedRealtime);
                        long elapsedRealtime3 = (elapsedRealtime2 + a.this.f61507b) - SystemClock.elapsedRealtime();
                        while (elapsedRealtime3 < 0) {
                            elapsedRealtime3 += a.this.f61507b;
                        }
                        a.this.f61511g.sendMessageDelayed(a.this.f61511g.obtainMessage(1), elapsedRealtime3);
                    }
                } else {
                    a.this.c();
                    if (a.this.f61510f != null) {
                        a.this.f61510f.quit();
                    }
                }
                return false;
            }
        }
    };

    public a(long j4, long j5) {
        this.f61506a = j4;
        this.f61507b = j5;
        if (!d()) {
            HandlerThread handlerThread = new HandlerThread("CountDownTimerThread");
            this.f61510f = handlerThread;
            handlerThread.start();
            this.f61511g = new Handler(this.f61510f.getLooper(), this.f61512h);
            return;
        }
        this.f61511g = new Handler(this.f61512h);
    }

    public abstract void a(long j4);

    public abstract void c();

    private boolean d() {
        return Looper.getMainLooper().getThread().equals(Thread.currentThread());
    }

    public final synchronized void a() {
        this.f61509d = true;
        this.f61511g.removeMessages(1);
    }

    public final synchronized a b() {
        this.f61509d = false;
        if (this.f61506a <= 0) {
            c();
            return this;
        }
        this.f61508c = SystemClock.elapsedRealtime() + this.f61506a;
        Handler handler = this.f61511g;
        handler.sendMessage(handler.obtainMessage(1));
        return this;
    }
}
