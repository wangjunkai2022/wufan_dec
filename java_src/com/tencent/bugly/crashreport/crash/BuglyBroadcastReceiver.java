package com.tencent.bugly.crashreport.crash;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class BuglyBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: d  reason: collision with root package name */
    private static BuglyBroadcastReceiver f59421d;

    /* renamed from: b  reason: collision with root package name */
    private Context f59423b;

    /* renamed from: c  reason: collision with root package name */
    private String f59424c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f59425e = true;

    /* renamed from: a  reason: collision with root package name */
    private IntentFilter f59422a = new IntentFilter();

    public static synchronized BuglyBroadcastReceiver getInstance() {
        BuglyBroadcastReceiver buglyBroadcastReceiver;
        synchronized (BuglyBroadcastReceiver.class) {
            if (f59421d == null) {
                f59421d = new BuglyBroadcastReceiver();
            }
            buglyBroadcastReceiver = f59421d;
        }
        return buglyBroadcastReceiver;
    }

    public synchronized void addFilter(String str) {
        if (!this.f59422a.hasAction(str)) {
            this.f59422a.addAction(str);
        }
        x.c("add action %s", str);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            a(context, intent);
        } catch (Throwable th) {
            if (x.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public synchronized void register(Context context) {
        this.f59423b = context;
        z.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    x.a(BuglyBroadcastReceiver.f59421d.getClass(), "Register broadcast receiver of Bugly.", new Object[0]);
                    synchronized (this) {
                        BuglyBroadcastReceiver.this.f59423b.registerReceiver(BuglyBroadcastReceiver.f59421d, BuglyBroadcastReceiver.this.f59422a, "com.tencent.bugly.BuglyBroadcastReceiver.permission", null);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    public synchronized void unregister(Context context) {
        try {
            x.a(getClass(), "Unregister broadcast receiver of Bugly.", new Object[0]);
            context.unregisterReceiver(this);
            this.f59423b = context;
        } catch (Throwable th) {
            if (x.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized boolean a(Context context, Intent intent) {
        if (context != null && intent != null) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                if (this.f59425e) {
                    this.f59425e = false;
                    return true;
                }
                String b4 = com.tencent.bugly.crashreport.common.info.b.b(this.f59423b);
                x.c("is Connect BC " + b4, new Object[0]);
                x.a("network %s changed to %s", this.f59424c, b4);
                if (b4 == null) {
                    this.f59424c = null;
                    return true;
                }
                String str = this.f59424c;
                this.f59424c = b4;
                long currentTimeMillis = System.currentTimeMillis();
                com.tencent.bugly.crashreport.common.strategy.a a4 = com.tencent.bugly.crashreport.common.strategy.a.a();
                u a5 = u.a();
                com.tencent.bugly.crashreport.common.info.a a6 = com.tencent.bugly.crashreport.common.info.a.a(context);
                if (a4 != null && a5 != null && a6 != null) {
                    if (!b4.equals(str) && currentTimeMillis - a5.a(c.f59505a) > 30000) {
                        x.a("try to upload crash on network changed.", new Object[0]);
                        c a7 = c.a();
                        if (a7 != null) {
                            a7.a(0L);
                        }
                        x.a("try to upload userinfo on network changed.", new Object[0]);
                        com.tencent.bugly.crashreport.biz.b.f59342a.b();
                    }
                    return true;
                }
                x.d("not inited BC not work", new Object[0]);
                return true;
            }
        }
        return false;
    }
}
