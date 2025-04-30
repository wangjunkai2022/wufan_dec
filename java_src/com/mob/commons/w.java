package com.mob.commons;

import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.mob.MobSDK;
import com.mob.commons.a;
import com.mob.tools.MobLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.SharePrefrenceHelper;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class w {
    private static w A;
    private SharePrefrenceHelper B;

    /* renamed from: v  reason: collision with root package name */
    private static final String f53147v = n.a("011kQdbebcccfdb0kk9dbcjef");

    /* renamed from: a  reason: collision with root package name */
    public static final String f53126a = n.a("009EciOh(chcc'gLcdeece_d");

    /* renamed from: b  reason: collision with root package name */
    public static final String f53127b = n.a("0103ciWh!chcc_g.cbUdgEcf!g");

    /* renamed from: c  reason: collision with root package name */
    public static final String f53128c = n.a("010?ci]hSchcccjcbBdMcgcf0g");

    /* renamed from: d  reason: collision with root package name */
    public static final String f53129d = n.a("009SciWh^chcccjcbdccedc");

    /* renamed from: e  reason: collision with root package name */
    public static final String f53130e = n.a("0102ci$h*chccefcjcbdccedc");

    /* renamed from: f  reason: collision with root package name */
    public static final String f53131f = n.a("010*ci>hPchcccjcbdcPdGdcXc");

    /* renamed from: g  reason: collision with root package name */
    public static final String f53132g = n.a("018Gci)hNchcccecgQc1cccj8h<ck2cTccHc)db%cNcedc");

    /* renamed from: h  reason: collision with root package name */
    public static final String f53133h = n.a("011OciGhTchccJddOcccjcfefch");

    /* renamed from: i  reason: collision with root package name */
    public static final String f53134i = n.a("011^ciHhVchcc;dd?cceecgEcg");

    /* renamed from: j  reason: collision with root package name */
    public static final String f53135j = n.a("031:ciZh>chcccjAhEckUc_cccb7d0dcdbce*g,ccce6dd'cccecfRcZcd0ih]ccPc)cd.kh");

    /* renamed from: k  reason: collision with root package name */
    public static final String f53136k = n.a("012'ci]h,chccPhPck@cJcccdcjegdb");

    /* renamed from: l  reason: collision with root package name */
    public static final String f53137l = n.a("033Jci hOchcccj'h4ck$c6ccIghiOcc<h9ck_c9cccdcjegdbcccbKdEdcdbce<g2ccYcDcd>kh");

    /* renamed from: m  reason: collision with root package name */
    public static final String f53138m = n.a("032)ci,hWchcccj1hDck=c^ccOghi^cc5hBck-cFccZi_cecgcccbAdBdcdbce+gKccRc,cd)kh");

    /* renamed from: n  reason: collision with root package name */
    public static final String f53139n = n.a("025*ciJhEchccebcbegeg7h,cg>hgDccdcdbcfceEc7cddbcjcc3kg_gd");

    /* renamed from: o  reason: collision with root package name */
    public static final String f53140o = n.a("038Hci?h5chcccjHh ckCc.cccb4d=dcdbceBg1ccebcbegeg[hVcgWhgTccdcdbcfceKc7cddbcjcc:c)cd8kh");

    /* renamed from: p  reason: collision with root package name */
    public static final String f53141p = n.a("022_ci0hAchccefcd>kXcbdcceLcDdbcgcccdcjegdbcc_kg-gd");

    /* renamed from: q  reason: collision with root package name */
    public static final String f53142q = n.a("014QeccdegcdccdcceefFc)cccdcjegdb");

    /* renamed from: r  reason: collision with root package name */
    public static final String f53143r = n.a("018WciRh=chcceccdegcdccdccdefPc7ccBbXceefQb");

    /* renamed from: s  reason: collision with root package name */
    public static final String f53144s = n.a("030Jci!hIchcccj'hMck:cYcccb]dRdcdbce%gLcceccdegcdccdccdefScGccTcDcd0kh");

    /* renamed from: t  reason: collision with root package name */
    public static final String f53145t = n.a("012'ciHh@chccefeccdKc2cfNbh-ef");

    /* renamed from: u  reason: collision with root package name */
    public static final String f53146u = n.a("0223ciVh%chccefeccd%cIcfHbhOefcc,c4cd?khEefYcFceJkd");

    /* renamed from: w  reason: collision with root package name */
    private static final String f53148w = n.a("019Sci*hQchccceSddScccecf[cOcdAihAccCc*cdEkh");

    /* renamed from: x  reason: collision with root package name */
    private static final String f53149x = n.a("0125ci_hQchcccf3bIcecjcjZhIdcef");

    /* renamed from: y  reason: collision with root package name */
    private static AtomicBoolean f53150y = new AtomicBoolean(false);

    /* renamed from: z  reason: collision with root package name */
    private static AtomicBoolean f53151z = new AtomicBoolean(false);

    private w() {
        if (this.B == null) {
            SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(MobSDK.getContext());
            this.B = sharePrefrenceHelper;
            sharePrefrenceHelper.open(f53147v, 1);
        }
    }

    public static synchronized w a() {
        w wVar;
        synchronized (w.class) {
            if (A == null) {
                A = new w();
            }
            wVar = A;
        }
        return wVar;
    }

    public static void g() {
        if (f53150y.compareAndSet(false, true)) {
            new com.mob.tools.utils.d(n.a("004Lehhhghgb")) { // from class: com.mob.commons.w.1
                @Override // com.mob.tools.utils.d
                protected void a() {
                    Object obj = l.f53052h;
                    synchronized (obj) {
                        try {
                            obj.wait(TTAdConstant.AD_MAX_EVENT_TIME);
                            f.a().a(11);
                            ConcurrentHashMap<String, Object> e4 = b.e();
                            if (e4 != null && e4.size() > 0) {
                                f.a().a(12);
                                Object obj2 = e4.get("h");
                                Object obj3 = e4.get("k");
                                Object obj4 = e4.get(n.a("001Xeb"));
                                Object obj5 = e4.get(ai.az);
                                Object obj6 = e4.get(n.a("002Rcfcj"));
                                Object obj7 = e4.get(n.a("002*egcj"));
                                e4.clear();
                                d.a(obj2, obj3, obj4, obj5, obj6, obj7);
                            }
                        }
                    }
                }
            }.start();
        }
        i();
    }

    private static String h() {
        return Data.MD5(DeviceHelper.getInstance(MobSDK.getContext()).getModel());
    }

    private static void i() {
        if (f53151z.compareAndSet(false, true)) {
            new com.mob.tools.utils.d("DS-W") { // from class: com.mob.commons.w.2
                @Override // com.mob.tools.utils.d
                protected void a() {
                    Object obj = l.f53053i;
                    synchronized (obj) {
                        try {
                            obj.wait();
                            ConcurrentHashMap<String, Object> f4 = b.f();
                            f4.clear();
                            d.a((ArrayList) f4.get(n.a("0026dcIc")));
                        }
                    }
                }
            }.start();
        }
    }

    public long b(String str, long j4) {
        return this.B.getLong(str, j4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HashMap<Long, Long> c() {
        HashMap fromJson;
        String string = this.B.getString(f53148w);
        HashMap<Long, Long> hashMap = new HashMap<>();
        if (!TextUtils.isEmpty(string) && (fromJson = HashonHelper.fromJson(string)) != null && !fromJson.isEmpty()) {
            for (Map.Entry entry : fromJson.entrySet()) {
                if (entry != null) {
                    try {
                        hashMap.put(Long.valueOf(Long.parseLong((String) entry.getKey())), entry.getValue());
                    } catch (Throwable th) {
                        MobLog.getInstance().d(th);
                    }
                }
            }
        }
        return hashMap;
    }

    public HashMap<String, Object> d() {
        String b4 = b(f53149x, (String) null);
        if (TextUtils.isEmpty(b4)) {
            return null;
        }
        return HashonHelper.fromJson(b4);
    }

    public a.c e() {
        return a.c.a(b("key_duid_param_blacklist", (String) null));
    }

    public a.C0238a f() {
        try {
            String b4 = b("key_duid_entity", (String) null);
            if (!TextUtils.isEmpty(b4)) {
                return a.C0238a.a(Data.AES128Decode(DeviceHelper.getInstance(MobSDK.getContext()).getModel(), Base64.decode(b4, 0)));
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return null;
    }

    public int b(String str, int i2) {
        return this.B.getInt(str, i2);
    }

    public String b(String str, String str2) {
        return this.B.getString(str, str2);
    }

    public void a(String str, long j4) {
        this.B.putLong(str, Long.valueOf(j4));
    }

    public String b() {
        String b4 = b(f53145t, (String) null);
        if (TextUtils.isEmpty(b4)) {
            return b4;
        }
        try {
            return Data.AES128Decode(h(), Base64.decode(b4, 0));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return b4;
        }
    }

    public void d(String str, String str2) {
        a(n.a("0112ci_hXchcc9gAdb]k1cecdcjcc") + str, str2);
    }

    public void a(String str, int i2) {
        this.B.putInt(str, Integer.valueOf(i2));
    }

    public boolean a(String str, boolean z3) {
        return this.B.getBoolean(str, z3);
    }

    public void a(String str, String str2) {
        if (str2 == null) {
            this.B.remove(str);
        } else {
            this.B.putString(str, str2);
        }
    }

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = Base64.encodeToString(Data.AES128Encode(h(), str), 0);
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
            }
        }
        a(f53145t, str);
    }

    public String c(String str, String str2) {
        return b(n.a("011(ciChVchccGg7dbEkWcecdcjcc") + str, str2);
    }

    public void b(HashMap<String, Object> hashMap) {
        a(f53149x, HashonHelper.fromHashMap(hashMap));
    }

    public void a(HashMap<Long, Long> hashMap) {
        if (hashMap != null && !hashMap.isEmpty()) {
            try {
                HashMap hashMap2 = new HashMap();
                for (Map.Entry<Long, Long> entry : hashMap.entrySet()) {
                    if (entry != null) {
                        hashMap2.put(String.valueOf(entry.getKey()), entry.getValue());
                    }
                }
                this.B.putString(f53148w, HashonHelper.fromHashMap(hashMap2));
                return;
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return;
            }
        }
        this.B.remove(f53148w);
    }

    public void a(a.c cVar) {
        a("key_duid_param_blacklist", cVar != null ? cVar.a() : null);
    }

    public void a(a.C0238a c0238a) {
        String str = null;
        if (c0238a != null) {
            try {
                str = c0238a.a();
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return;
            }
        }
        a("key_duid_entity", Base64.encodeToString(Data.AES128Encode(DeviceHelper.getInstance(MobSDK.getContext()).getModel(), str), 0));
    }
}
