package com.mob.mcl.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.mob.MobSDK;
import com.mob.commons.u;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ReflectHelper;
import com.mob.tools.utils.UIHandler;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f53191a;

    /* renamed from: d  reason: collision with root package name */
    private ScheduledExecutorService f53194d;

    /* renamed from: c  reason: collision with root package name */
    private int f53193c = -1;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f53195e = false;

    /* renamed from: b  reason: collision with root package name */
    private Context f53192b = MobSDK.getContext();

    private b() {
        c();
        this.f53194d = Executors.newSingleThreadScheduledExecutor();
    }

    private void c() {
        try {
            if (Build.VERSION.SDK_INT < 33) {
                ReflectHelper.invokeInstanceMethod(this.f53192b, "registerReceiver", new Object[]{d(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE")}, new Class[]{BroadcastReceiver.class, IntentFilter.class});
            } else {
                ReflectHelper.invokeInstanceMethod(this.f53192b, "registerReceiver", new Object[]{d(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"), 4}, new Class[]{BroadcastReceiver.class, IntentFilter.class, Integer.TYPE});
            }
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().a(th);
        }
    }

    private BroadcastReceiver d() {
        return new BroadcastReceiver() { // from class: com.mob.mcl.c.b.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(final Context context, final Intent intent) {
                try {
                    u.f53114c.execute(new Runnable() { // from class: com.mob.mcl.c.b.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                                    String networkType = DeviceHelper.getInstance(context).getNetworkType();
                                    com.mob.mcl.d.b a4 = com.mob.mcl.d.b.a();
                                    a4.b("ServiceInit receiver network " + networkType);
                                    int i2 = 0;
                                    if (NetworkUtil.NETWORK_TYPE_WIFI.equalsIgnoreCase(networkType)) {
                                        i2 = 1;
                                    } else if ("4G".equalsIgnoreCase(networkType)) {
                                        i2 = 4;
                                    } else if ("3G".equalsIgnoreCase(networkType)) {
                                        i2 = 3;
                                    } else if ("2G".equalsIgnoreCase(networkType)) {
                                        i2 = 2;
                                    }
                                    b.this.a(i2);
                                }
                            } catch (Throwable th) {
                                MobLog.getInstance().d(th);
                            }
                        }
                    });
                } catch (Throwable th) {
                    com.mob.mcl.d.b.a().a(th);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (!h.b().d()) {
            h.b().f();
        }
        h.b().g();
    }

    public void b() {
        if (this.f53195e) {
            com.mob.mcl.d.b.a().b("HB already started");
            return;
        }
        try {
            this.f53194d.scheduleWithFixedDelay(new Runnable() { // from class: com.mob.mcl.c.b.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (!h.b().c() || !h.b().a(2000, 0)) {
                            b.this.e();
                            return;
                        }
                        com.mob.mcl.d.b.a().b("tcp send ping success ");
                        b.this.f53195e = true;
                    } catch (Throwable unused) {
                    }
                }
            }, 0L, h.b().f53219e, TimeUnit.SECONDS);
        } catch (Throwable th) {
            com.mob.mcl.d.b.a().a("HB timer error", th);
        }
    }

    public static b a() {
        if (f53191a == null) {
            synchronized (b.class) {
                if (f53191a == null) {
                    f53191a = new b();
                }
            }
        }
        return f53191a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        if (this.f53193c == -1) {
            this.f53193c = i2;
            return;
        }
        this.f53193c = i2;
        if (i2 == 0 || h.b().c()) {
            return;
        }
        UIHandler.sendEmptyMessageDelayed(0, 200L, new Handler.Callback() { // from class: com.mob.mcl.c.b.2
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                com.mob.mcl.b.a.f53177a.execute(new Runnable() { // from class: com.mob.mcl.c.b.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (h.b().c()) {
                                return;
                            }
                            if (!h.b().d()) {
                                h.b().f();
                            }
                            h.b().g();
                        } catch (Throwable unused) {
                        }
                    }
                });
                return false;
            }
        });
    }
}
