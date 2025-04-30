package com.mob.commons.a;

import android.content.pm.PackageInfo;
import android.util.Base64;
import com.mob.MobSDK;
import com.mob.commons.MobProduct;
import com.mob.tools.GpiStrategy;
import com.mob.tools.MobLog;
import com.mob.tools.network.NetCommunicator;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.SharePrefrenceHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes4.dex */
public class p extends c {

    /* renamed from: c  reason: collision with root package name */
    private static final String f52812c = com.mob.commons.n.a("0163djdidgdhccddfgdjekdiehccdhdffhfc");

    /* renamed from: d  reason: collision with root package name */
    private static final String f52813d = com.mob.commons.n.a("016;djdidgdhccejdidfdjfcehccehdidhdi");

    /* renamed from: e  reason: collision with root package name */
    private SharePrefrenceHelper f52814e;

    public p() {
        super(com.mob.commons.n.a("002dPdc"), 0L, com.mob.commons.n.a("005d-dceeceFd"), 86400L);
        SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(MobSDK.getContext());
        this.f52814e = sharePrefrenceHelper;
        sharePrefrenceHelper.open(com.mob.commons.n.a("009id]dccccfcecf-bh"));
    }

    private Object b(HashMap<String, Object> hashMap) {
        try {
            hashMap.put(com.mob.commons.n.a("005Xcf]d6dcdiNc"), Long.valueOf(System.currentTimeMillis()));
            return a(hashMap, com.mob.commons.c.a(com.mob.commons.c.f52906c) + com.mob.commons.n.a("004f*cf7d:dc"));
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    private void n() {
        List<String> list;
        try {
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            HashMap<String, Object> hashMap = new HashMap<>();
            String appkey = MobSDK.getAppkey();
            String a4 = com.mob.commons.e.a((MobProduct) null);
            hashMap.put(com.mob.commons.n.a("006-ceWddCciEh1ch"), appkey);
            hashMap.put(com.mob.commons.n.a("0060ce>dddTciee"), deviceHelper.getPackageName());
            hashMap.put(com.mob.commons.n.a("006OceTddihHcg"), Integer.valueOf(deviceHelper.getAppVersion()));
            hashMap.put(com.mob.commons.n.a("004g(cbcd%g"), a4);
            hashMap.put(com.mob.commons.n.a("004d;dcceFc"), Integer.valueOf(deviceHelper.getPlatformCode()));
            hashMap.put(com.mob.commons.n.a("011WcjFhc ecdbcgci5cDchJdh"), deviceHelper.getNetworkType());
            String a5 = com.mob.commons.n.a("0090dcceefXcLfe8d>dcdi.c");
            SharePrefrenceHelper sharePrefrenceHelper = this.f52814e;
            String str = f52812c;
            hashMap.put(a5, Long.valueOf(sharePrefrenceHelper.getLong(str)));
            Object encodeToString = Base64.encodeToString((appkey + ":" + a4).getBytes("utf-8"), 2);
            hashMap.put(com.mob.commons.n.a("009Qdcceef@cCfe>dVdcdf_g"), encodeToString);
            HashMap hashMap2 = (HashMap) a(hashMap, com.mob.commons.c.a(com.mob.commons.c.f52906c) + com.mob.commons.n.a("004fidMdc"));
            if (hashMap2 == null || hashMap2.size() == 0 || (list = (List) hashMap2.get(com.mob.commons.n.a("004d cieeef"))) == null || list.size() <= 0) {
                return;
            }
            this.f52814e.putLong(str, Long.valueOf(System.currentTimeMillis()));
            ArrayList arrayList = new ArrayList();
            for (String str2 : list) {
                HashMap hashMap3 = new HashMap();
                hashMap3.put(com.mob.commons.n.a("006QceWddd4ciee"), str2);
                try {
                    boolean z3 = false;
                    PackageInfo pInfo = DeviceHelper.getInstance(MobSDK.getContext()).getPInfo(GpiStrategy.VALIDITY_3_MINUTE, str2, 0);
                    hashMap3.put(com.mob.commons.n.a("006*ceDddihQcg"), pInfo.versionName);
                    int i2 = pInfo.applicationInfo.flags;
                    hashMap3.put(com.mob.commons.n.a("005Mcdefefchef"), Boolean.valueOf((((i2 & 1) == 1) || ((i2 & 128) == 1)) ? true : true));
                } catch (Throwable unused) {
                }
                arrayList.add(hashMap3);
            }
            hashMap.remove(com.mob.commons.n.a("011Gcj.hc>ecdbcgci_c:ch'dh"));
            hashMap.remove(com.mob.commons.n.a("009<dcceef^c.feJd-dcdi c"));
            hashMap.remove(com.mob.commons.n.a("009,dcceef^cJfe2d'dcdf<g"));
            hashMap.put(com.mob.commons.n.a("005kXdb$gh:dc"), deviceHelper.getModel());
            hashMap.put("iemt", deviceHelper.getIMEI());
            hashMap.put("snmt", deviceHelper.getSerialno());
            hashMap.put(com.mob.commons.n.a("008gWce^chc%cdCkh"), Long.valueOf(System.currentTimeMillis()));
            hashMap.put(com.mob.commons.n.a("002+cd8g"), encodeToString);
            hashMap.put(com.mob.commons.n.a("004dLcieeef"), arrayList);
            Object b4 = b(hashMap);
            if (b4 == null) {
                b4 = b(hashMap);
            }
            if (b4 == null) {
                a(hashMap);
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        try {
            Thread.sleep(((Long) a(d(), (String) 0L)).longValue() * 1000);
            HashMap<String, Object> hashMap = (HashMap) this.f52814e.get(f52813d);
            if (hashMap != null && !hashMap.isEmpty() && b(hashMap) != null) {
                a((HashMap<String, Object>) null);
            }
        } catch (Throwable unused) {
        }
        n();
    }

    private static Object a(HashMap<String, Object> hashMap, String str) throws Throwable {
        if (com.mob.commons.b.c()) {
            return new NetCommunicator(1024, "009cbd92ccef123be840deec0c6ed0547194c1e471d11b6f375e56038458fb18833e5bab2e1206b261495d7e2d1d9e5aa859e6d4b67" + com.mob.commons.n.a("023,fkceficfcegd<g+hgfiYh!egKhgh[ihfi]h>fjggfkceibeg"), "1dfd1d615cb891ce9a76f42d036af7fce5f8b8efaa11b2f42590ecc4ea4cff28f5f6b0726aeb76254ab5b02a58c1d5b486c39d9da1a58fa6ba2f22196493b3a4cbc283dcf749bf63679ee24d185de70c8dfe05605886c9b53e9f569082eabdf98c4fb0dcf07eb9bb3e647903489ff0b5d933bd004af5be4a1022fdda41f347f1").requestSynchronized(hashMap, str, false);
        }
        return null;
    }

    public synchronized void a(HashMap<String, Object> hashMap) {
        if (hashMap == null) {
            this.f52814e.remove(f52813d);
        } else {
            this.f52814e.put(f52813d, hashMap);
        }
    }
}
