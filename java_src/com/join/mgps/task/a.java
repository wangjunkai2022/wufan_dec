package com.join.mgps.task;

import android.content.Context;
import android.os.CountDownTimer;
import io.netty.handler.traffic.AbstractTrafficShapingHandler;
/* compiled from: CreateApWifiThread.java */
/* loaded from: classes4.dex */
public class a implements Runnable {

    /* renamed from: c  reason: collision with root package name */
    private static final String f52267c = a.class.getSimpleName();

    /* renamed from: d  reason: collision with root package name */
    private static final int f52268d = 15000;

    /* renamed from: a  reason: collision with root package name */
    private Context f52269a;

    /* renamed from: b  reason: collision with root package name */
    CountDownTimer f52270b = new CountDownTimerC0230a(AbstractTrafficShapingHandler.DEFAULT_MAX_TIME, 1000);

    /* compiled from: CreateApWifiThread.java */
    /* renamed from: com.join.mgps.task.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class CountDownTimerC0230a extends CountDownTimer {
        CountDownTimerC0230a(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            a.this.b();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            String unused = a.f52267c;
            StringBuilder sb = new StringBuilder();
            sb.append("onTick: 开始倒计时");
            long j5 = j4 / 1000;
            sb.append(j5);
            if (j5 > 0) {
                a.this.d();
            }
        }
    }

    public a(Context context) {
        this.f52269a = context;
    }

    void b() {
        com.join.mgps.event.c cVar = new com.join.mgps.event.c();
        cVar.f48156a = 0;
        org.greenrobot.eventbus.c.f().o(cVar);
    }

    public void c() {
        CountDownTimer countDownTimer = this.f52270b;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    void d() {
        if (com.join.mgps.Util.e.f(this.f52269a)) {
            com.join.mgps.event.c cVar = new com.join.mgps.event.c();
            cVar.f48156a = 1;
            cVar.f48157b = com.join.mgps.Util.e.f27513a;
            cVar.f48158c = com.join.mgps.Util.e.f27514b;
            org.greenrobot.eventbus.c.f().o(cVar);
            this.f52270b.cancel();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f52270b.start();
    }
}
