package com.tencent.bugly.crashreport.common.strategy;

import android.content.Context;
import com.alipay.sdk.packet.d;
import com.tencent.bugly.crashreport.biz.b;
import com.tencent.bugly.proguard.ao;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.r;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.util.List;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f59412a = 1000;

    /* renamed from: b  reason: collision with root package name */
    private static a f59413b;

    /* renamed from: h  reason: collision with root package name */
    private static String f59414h;

    /* renamed from: c  reason: collision with root package name */
    private final List<com.tencent.bugly.a> f59415c;

    /* renamed from: d  reason: collision with root package name */
    private final w f59416d;

    /* renamed from: e  reason: collision with root package name */
    private final StrategyBean f59417e;

    /* renamed from: f  reason: collision with root package name */
    private StrategyBean f59418f = null;

    /* renamed from: g  reason: collision with root package name */
    private Context f59419g;

    private a(Context context, List<com.tencent.bugly.a> list) {
        String str;
        this.f59419g = context;
        if (com.tencent.bugly.crashreport.common.info.a.a(context) != null) {
            String str2 = com.tencent.bugly.crashreport.common.info.a.a(context).f59385y;
            if ("oversea".equals(str2)) {
                str = "https://astat.bugly.qcloud.com/rqd/async";
            } else {
                str = "na_https".equals(str2) ? "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async" : "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async";
            }
            StrategyBean.f59390a = str;
            StrategyBean.f59391b = str;
        }
        this.f59417e = new StrategyBean();
        this.f59415c = list;
        this.f59416d = w.a();
    }

    public static StrategyBean d() {
        byte[] bArr;
        List<r> a4 = p.a().a(2);
        if (a4 == null || a4.size() <= 0 || (bArr = a4.get(0).f59803g) == null) {
            return null;
        }
        return (StrategyBean) z.a(bArr, StrategyBean.CREATOR);
    }

    public final StrategyBean c() {
        StrategyBean strategyBean = this.f59418f;
        if (strategyBean != null) {
            if (!z.c(strategyBean.f59405p)) {
                this.f59418f.f59405p = StrategyBean.f59390a;
            }
            if (!z.c(this.f59418f.f59406q)) {
                this.f59418f.f59406q = StrategyBean.f59391b;
            }
            return this.f59418f;
        }
        if (!z.a(f59414h) && z.c(f59414h)) {
            StrategyBean strategyBean2 = this.f59417e;
            String str = f59414h;
            strategyBean2.f59405p = str;
            strategyBean2.f59406q = str;
        }
        return this.f59417e;
    }

    public final synchronized boolean b() {
        return this.f59418f != null;
    }

    public static synchronized a a(Context context, List<com.tencent.bugly.a> list) {
        a aVar;
        synchronized (a.class) {
            if (f59413b == null) {
                f59413b = new a(context, list);
            }
            aVar = f59413b;
        }
        return aVar;
    }

    public final void a(long j4) {
        this.f59416d.a(new Thread() { // from class: com.tencent.bugly.crashreport.common.strategy.a.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    Map<String, byte[]> a4 = p.a().a(a.f59412a, (o) null, true);
                    if (a4 != null) {
                        byte[] bArr = a4.get(d.f9795p);
                        byte[] bArr2 = a4.get("gateway");
                        if (bArr != null) {
                            com.tencent.bugly.crashreport.common.info.a.a(a.this.f59419g).f(new String(bArr));
                        }
                        if (bArr2 != null) {
                            com.tencent.bugly.crashreport.common.info.a.a(a.this.f59419g).e(new String(bArr2));
                        }
                    }
                    a.this.f59418f = a.d();
                    if (a.this.f59418f != null) {
                        if (z.a(a.f59414h) || !z.c(a.f59414h)) {
                            a.this.f59418f.f59405p = StrategyBean.f59390a;
                            a.this.f59418f.f59406q = StrategyBean.f59391b;
                        } else {
                            a.this.f59418f.f59405p = a.f59414h;
                            a.this.f59418f.f59406q = a.f59414h;
                        }
                    }
                } catch (Throwable th) {
                    if (!x.a(th)) {
                        th.printStackTrace();
                    }
                }
                a aVar = a.this;
                aVar.a(aVar.f59418f, false);
            }
        }, j4);
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            aVar = f59413b;
        }
        return aVar;
    }

    protected final void a(StrategyBean strategyBean, boolean z3) {
        x.c("[Strategy] Notify %s", b.class.getName());
        b.a(strategyBean, z3);
        for (com.tencent.bugly.a aVar : this.f59415c) {
            try {
                x.c("[Strategy] Notify %s", aVar.getClass().getName());
                aVar.onServerStrategyChanged(strategyBean);
            } catch (Throwable th) {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static void a(String str) {
        if (!z.a(str) && z.c(str)) {
            f59414h = str;
        } else {
            x.d("URL user set is invalid.", new Object[0]);
        }
    }

    public final void a(ap apVar) {
        if (apVar == null) {
            return;
        }
        StrategyBean strategyBean = this.f59418f;
        if (strategyBean == null || apVar.f59705h != strategyBean.f59403n) {
            StrategyBean strategyBean2 = new StrategyBean();
            strategyBean2.f59394e = apVar.f59698a;
            strategyBean2.f59396g = apVar.f59700c;
            strategyBean2.f59395f = apVar.f59699b;
            if (z.a(f59414h) || !z.c(f59414h)) {
                if (z.c(apVar.f59701d)) {
                    x.c("[Strategy] Upload url changes to %s", apVar.f59701d);
                    strategyBean2.f59405p = apVar.f59701d;
                }
                if (z.c(apVar.f59702e)) {
                    x.c("[Strategy] Exception upload url changes to %s", apVar.f59702e);
                    strategyBean2.f59406q = apVar.f59702e;
                }
            }
            ao aoVar = apVar.f59703f;
            if (aoVar != null && !z.a(aoVar.f59693a)) {
                strategyBean2.f59407r = apVar.f59703f.f59693a;
            }
            long j4 = apVar.f59705h;
            if (j4 != 0) {
                strategyBean2.f59403n = j4;
            }
            Map<String, String> map = apVar.f59704g;
            if (map != null && map.size() > 0) {
                Map<String, String> map2 = apVar.f59704g;
                strategyBean2.f59408s = map2;
                String str = map2.get("B11");
                if (str != null && str.equals("1")) {
                    strategyBean2.f59397h = true;
                } else {
                    strategyBean2.f59397h = false;
                }
                String str2 = apVar.f59704g.get("B3");
                if (str2 != null) {
                    strategyBean2.f59411v = Long.valueOf(str2).longValue();
                }
                int i2 = apVar.f59706i;
                strategyBean2.f59404o = i2;
                strategyBean2.f59410u = i2;
                String str3 = apVar.f59704g.get("B27");
                if (str3 != null && str3.length() > 0) {
                    try {
                        int parseInt = Integer.parseInt(str3);
                        if (parseInt > 0) {
                            strategyBean2.f59409t = parseInt;
                        }
                    } catch (Exception e4) {
                        if (!x.a(e4)) {
                            e4.printStackTrace();
                        }
                    }
                }
                String str4 = apVar.f59704g.get("B25");
                if (str4 != null && str4.equals("1")) {
                    strategyBean2.f59399j = true;
                } else {
                    strategyBean2.f59399j = false;
                }
            }
            x.a("[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d", Boolean.valueOf(strategyBean2.f59394e), Boolean.valueOf(strategyBean2.f59396g), Boolean.valueOf(strategyBean2.f59395f), Boolean.valueOf(strategyBean2.f59397h), Boolean.valueOf(strategyBean2.f59398i), Boolean.valueOf(strategyBean2.f59401l), Boolean.valueOf(strategyBean2.f59402m), Long.valueOf(strategyBean2.f59404o), Boolean.valueOf(strategyBean2.f59399j), Long.valueOf(strategyBean2.f59403n));
            this.f59418f = strategyBean2;
            if (!z.c(apVar.f59701d)) {
                x.c("[Strategy] download url is null", new Object[0]);
                this.f59418f.f59405p = "";
            }
            if (!z.c(apVar.f59702e)) {
                x.c("[Strategy] download crashurl is null", new Object[0]);
                this.f59418f.f59406q = "";
            }
            p.a().b(2);
            r rVar = new r();
            rVar.f59798b = 2;
            rVar.f59797a = strategyBean2.f59392c;
            rVar.f59801e = strategyBean2.f59393d;
            rVar.f59803g = z.a(strategyBean2);
            p.a().a(rVar);
            a(strategyBean2, true);
        }
    }
}
