package com.umeng.commonsdk.internal.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.join.mgps.activity.SimulatorExitPlayActivity_;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.ULog;
import org.json.JSONObject;
/* compiled from: BatteryUtils.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61191a = "BatteryUtils";

    /* renamed from: b  reason: collision with root package name */
    private static boolean f61192b;

    /* renamed from: c  reason: collision with root package name */
    private static Context f61193c;

    /* renamed from: d  reason: collision with root package name */
    private BroadcastReceiver f61194d;

    /* compiled from: BatteryUtils.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final c f61196a = new c();

        private a() {
        }
    }

    public static c a(Context context) {
        if (f61193c == null && context != null) {
            f61193c = context.getApplicationContext();
        }
        return a.f61196a;
    }

    public synchronized void b() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            f61193c.registerReceiver(this.f61194d, intentFilter);
            f61192b = true;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f61193c, th);
        }
    }

    public synchronized void c() {
        try {
            f61193c.unregisterReceiver(this.f61194d);
            f61192b = false;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f61193c, th);
        }
    }

    private c() {
        this.f61194d = new BroadcastReceiver() { // from class: com.umeng.commonsdk.internal.utils.c.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                try {
                    if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("le", intent.getIntExtra(SimulatorExitPlayActivity_.E, 0));
                        } catch (Exception unused) {
                        }
                        try {
                            jSONObject.put("vol", intent.getIntExtra("voltage", 0));
                        } catch (Exception unused2) {
                        }
                        try {
                            jSONObject.put("temp", intent.getIntExtra("temperature", 0));
                            jSONObject.put("ts", System.currentTimeMillis());
                        } catch (Exception unused3) {
                        }
                        int intExtra = intent.getIntExtra("status", 0);
                        int i2 = -1;
                        int i4 = 2;
                        if (intExtra != 1) {
                            if (intExtra == 2) {
                                i2 = 1;
                            } else if (intExtra == 4) {
                                i2 = 0;
                            } else if (intExtra == 5) {
                                i2 = 2;
                            }
                        }
                        try {
                            jSONObject.put("st", i2);
                        } catch (Exception unused4) {
                        }
                        int intExtra2 = intent.getIntExtra("plugged", 0);
                        if (intExtra2 == 1) {
                            i4 = 1;
                        } else if (intExtra2 != 2) {
                            i4 = 0;
                        }
                        try {
                            jSONObject.put("ct", i4);
                            jSONObject.put("ts", System.currentTimeMillis());
                        } catch (Exception unused5) {
                        }
                        ULog.i(c.f61191a, jSONObject.toString());
                        UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f61133h, com.umeng.commonsdk.internal.b.a(c.f61193c).a(), jSONObject.toString());
                        c.this.c();
                    }
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(c.f61193c, th);
                }
            }
        };
    }

    public synchronized boolean a() {
        return f61192b;
    }
}
