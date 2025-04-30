package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f59539a;

    /* renamed from: b  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.strategy.a f59540b;

    /* renamed from: c  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.info.a f59541c;

    /* renamed from: d  reason: collision with root package name */
    private b f59542d;

    /* renamed from: e  reason: collision with root package name */
    private Context f59543e;

    private d(Context context) {
        c a4 = c.a();
        if (a4 == null) {
            return;
        }
        this.f59540b = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.f59541c = com.tencent.bugly.crashreport.common.info.a.a(context);
        this.f59542d = a4.f59521p;
        this.f59543e = context;
        w.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.d.1
            @Override // java.lang.Runnable
            public final void run() {
                d.a(d.this);
            }
        });
    }

    static /* synthetic */ void a(d dVar) {
        x.c("[ExtraCrashManager] Trying to notify Bugly agents.", new Object[0]);
        try {
            Class<?> cls = Class.forName("com.tencent.bugly.agent.GameAgent");
            dVar.f59541c.getClass();
            z.a(cls, "sdkPackageName", "com.tencent.bugly", null);
            x.c("[ExtraCrashManager] Bugly game agent has been notified.", new Object[0]);
        } catch (Throwable unused) {
            x.a("[ExtraCrashManager] no game agent", new Object[0]);
        }
    }

    static /* synthetic */ void a(d dVar, Thread thread, int i2, String str, String str2, String str3, Map map) {
        String str4;
        String str5;
        String str6;
        Thread currentThread = thread == null ? Thread.currentThread() : thread;
        if (i2 == 4) {
            str4 = "Unity";
        } else if (i2 == 5 || i2 == 6) {
            str4 = "Cocos";
        } else if (i2 != 8) {
            x.d("[ExtraCrashManager] Unknown extra crash type: %d", Integer.valueOf(i2));
            return;
        } else {
            str4 = "H5";
        }
        x.e("[ExtraCrashManager] %s Crash Happen", str4);
        try {
            if (!dVar.f59540b.b()) {
                x.d("[ExtraCrashManager] There is no remote strategy, but still store it.", new Object[0]);
            }
            StrategyBean c4 = dVar.f59540b.c();
            if (!c4.f59394e && dVar.f59540b.b()) {
                x.e("[ExtraCrashManager] Crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                String a4 = z.a();
                String str7 = dVar.f59541c.f59364d;
                String name = currentThread.getName();
                b.a(str4, a4, str7, name, str + "\n" + str2 + "\n" + str3, null);
                x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            if (i2 == 5 || i2 == 6) {
                if (!c4.f59399j) {
                    x.e("[ExtraCrashManager] %s report is disabled.", str4);
                    x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                    return;
                }
            } else if (i2 == 8 && !c4.f59400k) {
                x.e("[ExtraCrashManager] %s report is disabled.", str4);
                x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            int i4 = i2 != 8 ? i2 : 5;
            CrashDetailBean crashDetailBean = new CrashDetailBean();
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.g();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.i();
            crashDetailBean.F = dVar.f59541c.l();
            crashDetailBean.G = dVar.f59541c.k();
            crashDetailBean.H = dVar.f59541c.m();
            crashDetailBean.f59450w = z.a(dVar.f59543e, c.f59509e, (String) null);
            crashDetailBean.f59429b = i4;
            crashDetailBean.f59432e = dVar.f59541c.h();
            com.tencent.bugly.crashreport.common.info.a aVar = dVar.f59541c;
            crashDetailBean.f59433f = aVar.f59370j;
            crashDetailBean.f59434g = aVar.r();
            crashDetailBean.f59440m = dVar.f59541c.g();
            crashDetailBean.f59441n = str;
            crashDetailBean.f59442o = str2;
            str5 = "";
            if (str3 != null) {
                String[] split = str3.split("\n");
                str5 = split.length > 0 ? split[0] : "";
                str6 = str3;
            } else {
                str6 = "";
            }
            crashDetailBean.f59443p = str5;
            crashDetailBean.f59444q = str6;
            crashDetailBean.f59445r = System.currentTimeMillis();
            crashDetailBean.f59448u = z.a(crashDetailBean.f59444q.getBytes());
            crashDetailBean.f59453z = z.a(c.f59510f, false);
            crashDetailBean.A = dVar.f59541c.f59364d;
            crashDetailBean.B = currentThread.getName() + "(" + currentThread.getId() + ")";
            crashDetailBean.I = dVar.f59541c.t();
            crashDetailBean.f59435h = dVar.f59541c.q();
            com.tencent.bugly.crashreport.common.info.a aVar2 = dVar.f59541c;
            crashDetailBean.M = aVar2.f59361a;
            crashDetailBean.N = aVar2.a();
            if (!c.a().p()) {
                dVar.f59542d.d(crashDetailBean);
            }
            crashDetailBean.Q = dVar.f59541c.A();
            crashDetailBean.R = dVar.f59541c.B();
            crashDetailBean.S = dVar.f59541c.u();
            crashDetailBean.T = dVar.f59541c.z();
            crashDetailBean.f59452y = y.a();
            if (crashDetailBean.O == null) {
                crashDetailBean.O = new LinkedHashMap();
            }
            if (map != null) {
                crashDetailBean.O.putAll(map);
            }
            String a5 = z.a();
            String str8 = dVar.f59541c.f59364d;
            String name2 = currentThread.getName();
            b.a(str4, a5, str8, name2, str + "\n" + str2 + "\n" + str3, crashDetailBean);
            if (!dVar.f59542d.a(crashDetailBean)) {
                dVar.f59542d.a(crashDetailBean, 3000L, false);
            }
            x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
        } catch (Throwable th) {
            try {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
                x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
            } catch (Throwable th2) {
                x.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                throw th2;
            }
        }
    }

    public static d a(Context context) {
        if (f59539a == null) {
            f59539a = new d(context);
        }
        return f59539a;
    }

    public static void a(final Thread thread, final int i2, final String str, final String str2, final String str3, final Map<String, String> map) {
        w.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.d.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (d.f59539a != null) {
                        d.a(d.f59539a, thread, i2, str, str2, str3, map);
                    } else {
                        x.e("[ExtraCrashManager] Extra crash manager has not been initialized.", new Object[0]);
                    }
                } catch (Throwable th) {
                    if (!x.b(th)) {
                        th.printStackTrace();
                    }
                    x.e("[ExtraCrashManager] Crash error %s %s %s", str, str2, str3);
                }
            }
        });
    }
}
