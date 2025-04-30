package com.mob.commons;

import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.ShareSDK;
import com.mob.MobSDK;
import com.mob.mgs.MobMGS;
import com.mob.tools.MobLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f53122a = {ShareSDK.SDK_TAG, n.a("006*dgfhdgdgehgi"), "MOBLINK", "MOBPUSH", n.a("009;dgfcfffefcfddfejhh"), n.a("008;fhekeidiehdgehgi"), MobMGS.MGS_TAG};

    /* renamed from: b  reason: collision with root package name */
    private static AtomicBoolean f53123b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private static final HashMap<String, MobProduct> f53124c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private static String f53125d;

    public static void a() {
        f();
        u.f53114c.execute(new com.mob.tools.utils.c() { // from class: com.mob.commons.v.1
            @Override // com.mob.tools.utils.c
            protected void a() {
                MobLog.getInstance().d("init sks start", new Object[0]);
                v.b();
                MobLog.getInstance().d("init sks over", new Object[0]);
            }
        });
    }

    public static synchronized ArrayList<MobProduct> b() {
        ArrayList<MobProduct> arrayList;
        synchronized (v.class) {
            if (f53123b.compareAndSet(false, true)) {
                f53124c.putAll(g());
            }
            arrayList = new ArrayList<>();
            arrayList.addAll(f53124c.values());
        }
        return arrayList;
    }

    public static synchronized String c() {
        String a4;
        synchronized (v.class) {
            a4 = a(b(), 0);
        }
        return a4;
    }

    public static synchronized String d() {
        String a4;
        synchronized (v.class) {
            a4 = a(b(), 1);
        }
        return a4;
    }

    public static synchronized String e() {
        String a4;
        synchronized (v.class) {
            a4 = a(b(), 2);
        }
        return a4;
    }

    private static void f() {
        try {
            MOBLINK moblink = new MOBLINK();
            if (moblink instanceof MobProduct) {
                moblink.getProductTag();
            }
        } catch (Throwable unused) {
        }
    }

    private static HashMap<String, MobProduct> g() {
        Class<?> cls;
        HashMap<String, MobProduct> hashMap = new HashMap<>();
        for (Object obj : p.f53094a) {
            try {
                if (obj instanceof String) {
                    cls = Class.forName(String.valueOf(obj).trim());
                } else {
                    cls = (Class) obj;
                }
                if (MobProduct.class.isAssignableFrom(cls) && !MobProduct.class.equals(cls)) {
                    MobProduct mobProduct = (MobProduct) cls.newInstance();
                    String productTag = mobProduct.getProductTag();
                    String[] strArr = f53122a;
                    int length = strArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            String str = strArr[i2];
                            if (str.equals(productTag)) {
                                hashMap.put(str, mobProduct);
                                break;
                            }
                            i2++;
                        }
                    }
                } else {
                    cls.newInstance();
                }
            } catch (Throwable unused) {
            }
        }
        return hashMap;
    }

    private static String h() {
        if (!TextUtils.isEmpty(f53125d)) {
            return f53125d;
        }
        String o3 = com.mob.tools.a.c.a(MobSDK.getContext()).b().o();
        if (!TextUtils.isEmpty(o3)) {
            try {
                String encodeToString = Base64.encodeToString(Data.AES128Encode(Data.MD5(DeviceHelper.getInstance(MobSDK.getContext()).getManufacturer()), o3), 2);
                f53125d = encodeToString;
                return encodeToString;
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
            }
        }
        return null;
    }

    public static synchronized void a(MobProduct mobProduct) {
        synchronized (v.class) {
            if (mobProduct != null) {
                HashMap<String, MobProduct> hashMap = f53124c;
                if (!hashMap.containsKey(mobProduct.getProductTag())) {
                    hashMap.put(mobProduct.getProductTag(), mobProduct);
                }
            }
        }
    }

    private static synchronized String a(ArrayList<MobProduct> arrayList, int i2) {
        String deviceKey;
        String str;
        String str2;
        synchronized (v.class) {
            try {
                DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
                String encode = TextUtils.isEmpty(deviceHelper.getPackageName()) ? "" : URLEncoder.encode(deviceHelper.getPackageName(), "utf-8");
                String encode2 = TextUtils.isEmpty(deviceHelper.getAppVersionName()) ? "" : URLEncoder.encode(deviceHelper.getAppVersionName(), "utf-8");
                String encode3 = TextUtils.isEmpty(deviceHelper.getManufacturer()) ? "" : URLEncoder.encode(deviceHelper.getManufacturer(), "utf-8");
                String encode4 = TextUtils.isEmpty(deviceHelper.getModel()) ? "" : URLEncoder.encode(deviceHelper.getModel(), "utf-8");
                String encode5 = TextUtils.isEmpty(deviceHelper.getMIUIVersion()) ? "" : URLEncoder.encode(deviceHelper.getMIUIVersion(), "utf-8");
                String encode6 = TextUtils.isEmpty(deviceHelper.getOSVersionName()) ? "" : URLEncoder.encode(deviceHelper.getOSVersionName(), "utf-8");
                HashMap<String, Object> b4 = o.a().b();
                String str3 = n.a("004:difgfg8f") + encode + ";" + encode2;
                String str4 = n.a("0129dghhdgHfOdicjRgBcgdbcd=gQic") + deviceHelper.getOSVersionInt() + ";" + encode6;
                if (s.b()) {
                    deviceKey = deviceHelper.getDeviceKey();
                } else {
                    deviceKey = deviceHelper.getDeviceKey(true);
                }
                String str5 = n.a("004$dgehdfAf") + deviceKey;
                String str6 = n.a("003Rejfh f") + encode3 + ";" + encode4;
                if (!TextUtils.isEmpty(encode5)) {
                    str6 = str6 + ";" + encode5;
                }
                String str7 = n.a("0039defc^f") + deviceHelper.getNetworkTypeForStatic() + ";" + deviceHelper.getCarrier();
                String str8 = n.a("0054djcecjee:f") + Locale.getDefault().toString().replace(n.a("002>ghcg"), "-");
                String str9 = n.a("004Gffdjfe*f") + MobSDK.SDK_VERSION_CODE;
                String a4 = n.a("004Pdgehgi]f");
                if (!arrayList.isEmpty()) {
                    int size = arrayList.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        try {
                            MobProduct mobProduct = arrayList.get(i4);
                            if (i4 != 0) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(a4);
                                String str10 = a4;
                                try {
                                    sb.append(",");
                                    a4 = sb.toString();
                                } catch (Throwable unused) {
                                    a4 = str10;
                                }
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(a4);
                            sb2.append(mobProduct.getProductTag());
                            sb2.append(";");
                            sb2.append(mobProduct.getSdkver());
                            sb2.append(";");
                            sb2.append(b4.get(mobProduct.getProductTag()));
                            a4 = sb2.toString();
                        } catch (Throwable unused2) {
                        }
                    }
                }
                String str11 = "DC/2";
                if (i2 == 1) {
                    str11 = "DC/[DC]";
                } else if (i2 == 2) {
                    str11 = "DC/[DC2]";
                }
                String timezone = deviceHelper.getTimezone();
                String str12 = TextUtils.isEmpty(timezone) ? "" : n.a("003;dhjccc") + timezone;
                String c4 = x.a().c();
                String str13 = TextUtils.isEmpty(c4) ? "TID/" : "TID/" + c4;
                String h4 = h();
                String str14 = TextUtils.isEmpty(h4) ? "IED/" : "IED/" + h4;
                int a5 = com.mob.commons.cc.a.a();
                String str15 = "SVM/" + a5;
                if (com.mob.tools.a.d.b()) {
                    if (!n.a("004UdgehgiXf").equals(a4)) {
                        a4 = a4 + ",";
                    }
                    a4 = a4 + "CS;" + a5;
                }
                String str16 = "RD/";
                String c5 = t.a().c();
                if (c5 != null) {
                    str = str15;
                    str16 = "RD/" + c5;
                } else {
                    str = str15;
                }
                str2 = str3 + " " + str4 + " " + str5 + " " + str6 + " " + str7 + " " + str8 + " " + str9 + " " + a4 + " " + str11 + " " + str12 + " " + str13 + " " + str14 + " " + str + " " + str16;
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
                return "";
            }
        }
        return str2;
    }
}
