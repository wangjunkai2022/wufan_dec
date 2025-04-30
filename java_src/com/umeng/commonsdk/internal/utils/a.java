package com.umeng.commonsdk.internal.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.g0;
import com.join.mgps.activity.BuildQRCodeActivity_;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;
/* compiled from: ApplicationLayerUtil.java */
/* loaded from: classes4.dex */
public class a {

    /* compiled from: ApplicationLayerUtil.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0355a {

        /* renamed from: a  reason: collision with root package name */
        public String f61170a;

        /* renamed from: b  reason: collision with root package name */
        public String f61171b;
    }

    /* compiled from: ApplicationLayerUtil.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f61172a;

        /* renamed from: b  reason: collision with root package name */
        public String f61173b;

        /* renamed from: c  reason: collision with root package name */
        public String f61174c;

        /* renamed from: d  reason: collision with root package name */
        public int f61175d;

        /* renamed from: e  reason: collision with root package name */
        public int f61176e;

        /* renamed from: f  reason: collision with root package name */
        public int f61177f;

        /* renamed from: g  reason: collision with root package name */
        public int f61178g;

        /* renamed from: h  reason: collision with root package name */
        public String f61179h;

        /* renamed from: i  reason: collision with root package name */
        public int f61180i;

        /* renamed from: j  reason: collision with root package name */
        public int f61181j;

        /* renamed from: k  reason: collision with root package name */
        public int f61182k;

        /* renamed from: l  reason: collision with root package name */
        public long f61183l;
    }

    public static long a(Context context, String str) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException e4) {
            UMCrashManager.reportCrash(context, e4);
            ULog.e("getAppFirstInstallTime" + e4.getMessage());
            return 0L;
        }
    }

    public static long b(Context context, String str) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e4) {
            UMCrashManager.reportCrash(context, e4);
            ULog.e("getAppLastUpdateTime:" + e4.getMessage());
            return 0L;
        }
    }

    public static String c(Context context, String str) {
        try {
            return context.getPackageManager().getInstallerPackageName(str);
        } catch (Exception e4) {
            UMCrashManager.reportCrash(context, e4);
            ULog.e("getAppInstaller:" + e4.getMessage());
            return null;
        }
    }

    public static int d(Context context, String str) {
        if (context == null) {
            return 0;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(str, 0).applicationInfo;
            if (applicationInfo != null) {
                return applicationInfo.uid;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException e4) {
            UMCrashManager.reportCrash(context, e4);
            ULog.e("getAppUid:" + e4.getMessage());
            return 0;
        }
    }

    public static void e(Context context) {
        if (context == null) {
            return;
        }
        f.b(context);
    }

    public static int f(Context context) {
        WifiManager wifiManager;
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)) == null) {
            return -1;
        }
        return wifiManager.getWifiState();
    }

    public static int g(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", q.a.f73954a));
    }

    public static int h(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", q.a.f73954a));
    }

    public static DisplayMetrics i(Context context) {
        if (context == null) {
            return null;
        }
        return context.getResources().getDisplayMetrics();
    }

    public static List<InputMethodInfo> j(Context context) {
        InputMethodManager inputMethodManager;
        if (context == null || (inputMethodManager = (InputMethodManager) context.getSystemService("input_method")) == null) {
            return null;
        }
        return inputMethodManager.getInputMethodList();
    }

    public static List<C0355a> k(Context context) {
        String[] list;
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(Environment.getExternalStorageDirectory() + "/Android/data/");
            if (file.isDirectory() && (list = file.list()) != null && list.length > 0) {
                for (String str : list) {
                    if (str != null && !str.startsWith(g0.f27568a)) {
                        C0355a c0355a = new C0355a();
                        c0355a.f61170a = str;
                        c0355a.f61171b = e(context, str);
                        arrayList.add(c0355a);
                    }
                }
            }
        } catch (Exception e4) {
            ULog.e("getAppList:" + e4.getMessage());
        }
        return arrayList;
    }

    public static ActivityManager.MemoryInfo l(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)) == null) {
            return null;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    public static String m(Context context) {
        return null;
    }

    public static String n(Context context) {
        return null;
    }

    private static String e(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                return (String) applicationInfo.loadLabel(context.getPackageManager());
            }
            return null;
        } catch (Exception e4) {
            ULog.e("getLabel:" + e4.getMessage());
            return null;
        }
    }

    public static void c(Context context) {
        WifiInfo b4;
        if (context == null || (b4 = b(context)) == null) {
            return;
        }
        b bVar = new b();
        bVar.f61172a = b4.describeContents();
        bVar.f61173b = b4.getBSSID();
        bVar.f61174c = b4.getSSID();
        if (Build.VERSION.SDK_INT >= 21) {
            bVar.f61175d = b4.getFrequency();
        } else {
            bVar.f61175d = -1;
        }
        boolean z3 = true;
        if (b4.getHiddenSSID()) {
            bVar.f61176e = 1;
        } else {
            bVar.f61176e = 0;
        }
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.H)) {
            bVar.f61177f = b4.getIpAddress();
        }
        bVar.f61178g = b4.getLinkSpeed();
        bVar.f61179h = DeviceConfig.getMac(context);
        bVar.f61180i = b4.getNetworkId();
        bVar.f61181j = b4.getRssi();
        bVar.f61182k = f(context);
        bVar.f61183l = System.currentTimeMillis();
        try {
            JSONArray a4 = f.a(context);
            if (a4 != null && a4.length() > 0) {
                for (int i2 = 0; i2 < a4.length(); i2++) {
                    String optString = a4.optJSONObject(i2).optString(BuildQRCodeActivity_.D, null);
                    if (optString != null && optString.equals(bVar.f61174c)) {
                        break;
                    }
                }
            }
            z3 = false;
            if (z3) {
                return;
            }
            f.a(context, bVar);
        } catch (Exception e4) {
            ULog.e("wifiChange:" + e4.getMessage());
        }
    }

    public static boolean a() {
        return h.a();
    }

    public static String b() {
        return new SimpleDateFormat().format(new Date());
    }

    public static String e() {
        try {
            Method declaredMethod = Build.class.getDeclaredMethod("getString", String.class);
            declaredMethod.setAccessible(true);
            String obj = declaredMethod.invoke(null, "net.hostname").toString();
            return (obj == null || obj.equalsIgnoreCase("")) ? obj : HelperUtils.getUmengMD5(obj);
        } catch (Exception e4) {
            ULog.e("getHostName:" + e4.getMessage());
            return null;
        }
    }

    public static float a(Context context) {
        if (context == null) {
            return 0.0f;
        }
        Configuration configuration = new Configuration();
        try {
            configuration.updateFrom(context.getResources().getConfiguration());
            return configuration.fontScale;
        } catch (Exception e4) {
            ULog.e("getFontSize:" + e4.getMessage());
            return 0.0f;
        }
    }

    public static JSONArray d(Context context) {
        if (context == null) {
            return null;
        }
        return f.a(context);
    }

    public static WifiInfo b(Context context) {
        WifiManager wifiManager;
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)) == null) {
            return null;
        }
        return wifiManager.getConnectionInfo();
    }

    public static long d() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    public static String c() {
        return g.a("df");
    }
}
