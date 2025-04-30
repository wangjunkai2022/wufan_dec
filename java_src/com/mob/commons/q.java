package com.mob.commons;

import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class q {
    public static void a() {
        try {
            s.a(false);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    public static void b() {
        s.a(true);
    }

    public static int c() {
        int d4 = s.d();
        if (d4 == 1) {
            return 1;
        }
        if (d4 == 0) {
            return -1;
        }
        return w.a().a(w.f53133h, n.f53086e) ? 0 : 2;
    }

    public static boolean d() {
        int c4 = c();
        if (c4 == 2 || c4 == 1) {
            return b.b();
        }
        return false;
    }

    public static boolean e() {
        int c4 = c();
        if (c4 == 2 || c4 == 1) {
            s.f();
            return true ^ b.a();
        }
        return true;
    }

    public static HashMap<String, Object> f() {
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put(j.a("006:bdGccVbhDgXbg"), MobSDK.getAppkey());
        hashMap.put(j.a("006$bd2ccc(bhdd"), deviceHelper.getPackageName());
        hashMap.put(j.a("006Gbd6cchg;bf"), deviceHelper.getAppVersionName());
        hashMap.put(j.a("004c)cbbd%b"), String.valueOf(deviceHelper.getPlatformCode()));
        hashMap.put(j.a("011:biIgbBdbcabfbh.b bgNcg"), deviceHelper.getDetailNetworkTypeForStatic());
        String b4 = e.b();
        if (!TextUtils.isEmpty(b4)) {
            hashMap.put(j.a("004f8babc-f"), b4);
        }
        return hashMap;
    }

    public static HashMap<String, Object> g() {
        Location location;
        HashMap<String, Object> hashMap = new HashMap<>();
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        hashMap.put(j.a("0066bdLcc1bhCg8bg"), MobSDK.getAppkey());
        hashMap.put(j.a("006Hde!f^bh*hg$bf"), Integer.valueOf(MobSDK.SDK_VERSION_CODE));
        hashMap.put(j.a("004cZcbbd-b"), 1);
        hashMap.put(j.a("004f[babc2f"), e.a((MobProduct) null));
        hashMap.put(j.a("006>bdUcccDbhdd"), MobSDK.getContext().getPackageName());
        hashMap.put(j.a("006$bd>cchg0bf"), Integer.valueOf(deviceHelper.getAppVersion()));
        hashMap.put("iemt", deviceHelper.getIMEI());
        hashMap.put("snmt", deviceHelper.getSerialno());
        hashMap.put(j.a("007NbebdbfbfbcZgYbf"), deviceHelper.getCarrier());
        hashMap.put(j.a("005jMca+fgGcb"), deviceHelper.getModel());
        hashMap.put(j.a("007%dfbdbe:bUcabfbg"), deviceHelper.getManufacturer());
        hashMap.put(j.a("011Lbi0gbGdbcabfbhcgbgDcg"), deviceHelper.getNetworkType());
        hashMap.put(j.a("006Gdebgde8hg0bf"), deviceHelper.getOSVersionName());
        hashMap.put(j.a("005Jbabc<hg:bf"), deviceHelper.getMIUIVersion());
        hashMap.put(j.a("009,debgde(hgPbfbcbiXb"), Integer.valueOf(deviceHelper.getOSVersionInt()));
        if (1 == ((Integer) b.a(j.a("002]cacb"), 0)).intValue() && (location = deviceHelper.getLocation(0, 0, true)) != null) {
            hashMap.put("accmt", Float.valueOf(location.getAccuracy()));
            hashMap.put("ltdmt", Double.valueOf(location.getLatitude()));
            hashMap.put("lndmt", Double.valueOf(location.getLongitude()));
        }
        hashMap.put(j.a("010.becbbcEgFbiMb<cgbc jg"), Long.valueOf(System.currentTimeMillis()));
        hashMap.put(j.a("006Ybd)ccjfCfc"), deviceHelper.getSignMD5());
        hashMap.put("ismt", deviceHelper.getIMSI());
        hashMap.put(j.a("005WdabfbdbiTf"), Build.BRAND);
        return hashMap;
    }
}
