package com.mob.mgs.impl;

import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.tools.network.NetCommunicator;
import com.mob.tools.utils.DeviceHelper;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    protected static String f53304a;

    /* renamed from: b  reason: collision with root package name */
    private static NetCommunicator f53305b;

    static {
        try {
            f53304a = NetCommunicator.dynamicModifyUrl("api-gd.dutils.com");
        } catch (Throwable th) {
            e.a().b(th);
        }
    }

    public static <T> T a(List<HashMap<String, String>> list, String str, boolean z3) throws Throwable {
        HashMap<String, Object> a4 = a();
        a4.put("guardId", str);
        a4.put("targetAppInfoDtoList", list);
        a4.put("deviceSwitch", Integer.valueOf(z3 ? 1 : 0));
        e a5 = e.a();
        a5.a("[request][/v6/gd] request: " + a4);
        return (T) a("/v6/gd", a4);
    }

    private static synchronized NetCommunicator b() {
        NetCommunicator netCommunicator;
        synchronized (d.class) {
            if (f53305b == null) {
                f53305b = new NetCommunicator(1024, "009cbd92ccef123be840deec0c6ed0547194c1e471d11b6f375e56038458fb18833e5bab2e1206b261495d7e2d1d9e5aa859e6d4b671a8ca5d78efede48e291a3f", "1dfd1d615cb891ce9a76f42d036af7fce5f8b8efaa11b2f42590ecc4ea4cff28f5f6b0726aeb76254ab5b02a58c1d5b486c39d9da1a58fa6ba2f22196493b3a4cbc283dcf749bf63679ee24d185de70c8dfe05605886c9b53e9f569082eabdf98c4fb0dcf07eb9bb3e647903489ff0b5d933bd004af5be4a1022fdda41f347f1");
            }
            netCommunicator = f53305b;
        }
        return netCommunicator;
    }

    public static <T> T a(List<HashMap<String, Object>> list, String str, String str2) throws Throwable {
        HashMap<String, Object> a4 = a();
        a4.put("guardId", str);
        a4.put("workId", str2);
        a4.put("pkgList", list);
        e a5 = e.a();
        a5.a("[request][/v6/pu] request: " + a4);
        return (T) a("/v6/pu", a4);
    }

    public static <T> T a(String str, String str2, String str3, String str4, String str5, String str6, int i2) throws Throwable {
        HashMap<String, Object> a4 = a();
        a4.put("guardId", str5);
        a4.put("workId", str6);
        a4.put("pullDuid", str);
        a4.put("pullAppkey", str2);
        a4.put("pullPkg", str3);
        a4.put("pullGuardId", str4);
        a4.put("pullTime", Long.valueOf(System.currentTimeMillis()));
        a4.put("actType", Integer.valueOf(i2));
        e a5 = e.a();
        a5.a("[request][/v6/bpu] request: " + a4);
        return (T) a("/v6/bpu", a4);
    }

    public static <T> T a(String str, String str2, String str3) throws Throwable {
        HashMap<String, Object> a4 = a();
        a4.put("workId", str3);
        a4.put("oldGuardId", str);
        a4.put("newGuardId", str2);
        e a5 = e.a();
        a5.a("[request][guardId/uploadV5] request: " + a4);
        return (T) a("/guard/guardId/uploadV5", a4);
    }

    public static <T> T a(boolean z3, boolean z4) throws Throwable {
        HashMap<String, Object> a4 = a();
        a4.put("guardId", com.mob.mcl.b.a.a());
        if (z4) {
            if (!TextUtils.isEmpty(i.c())) {
                a4.put("duid", i.c());
            }
            if (!TextUtils.isEmpty(i.d())) {
                a4.put("guardId", i.d());
            }
        }
        a4.put("deviceSwitch", Integer.valueOf(z3 ? 1 : 0));
        e a5 = e.a();
        a5.a("[request][deviceSwitch/updateV5] request: " + a4);
        return (T) a("/v6/dsu", a4);
    }

    private static HashMap<String, Object> a() {
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("versionTime", "2021.11.17 18:38");
        hashMap.put("appkey", MobSDK.getAppkey());
        hashMap.put("appver", Integer.valueOf(deviceHelper.getAppVersion()));
        hashMap.put("platVersion", deviceHelper.getOSVersionName());
        hashMap.put("apppkg", MobSDK.getContext().getPackageName());
        hashMap.put("sdkver", Integer.valueOf((int) MindUserHandle.f64667u));
        hashMap.put("duid", f.a().f());
        hashMap.put("product", 1);
        hashMap.put("plat", 1);
        hashMap.put("brand", DeviceHelper.getInstance(MobSDK.getContext()).getManufacturer());
        hashMap.put("model", DeviceHelper.getInstance(MobSDK.getContext()).getModel());
        hashMap.put("modelVersion", DeviceHelper.getInstance(MobSDK.getContext()).getOSVersionName());
        return hashMap;
    }

    private static <T> T a(String str, HashMap<String, Object> hashMap) throws Throwable {
        HashMap<String, String> hashMap2 = new HashMap<>();
        hashMap2.put("versionTime", "2021.11.17 18:38");
        NetCommunicator b4 = b();
        return (T) b4.requestSynchronized(hashMap2, hashMap, f53304a + str, false);
    }
}
