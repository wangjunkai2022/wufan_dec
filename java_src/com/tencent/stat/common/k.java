package com.tencent.stat.common;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.g0;
import com.tencent.stat.StatConfig;
import com.umeng.analytics.pro.ai;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import kotlin.time.DurationKt;
import org.apache.http.HttpHost;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static String f60085a = null;

    /* renamed from: b  reason: collision with root package name */
    private static String f60086b = null;

    /* renamed from: c  reason: collision with root package name */
    private static String f60087c = null;

    /* renamed from: d  reason: collision with root package name */
    private static String f60088d = null;

    /* renamed from: e  reason: collision with root package name */
    private static Random f60089e = null;

    /* renamed from: f  reason: collision with root package name */
    private static StatLogger f60090f = null;

    /* renamed from: g  reason: collision with root package name */
    private static String f60091g = null;

    /* renamed from: h  reason: collision with root package name */
    private static l f60092h = null;

    /* renamed from: i  reason: collision with root package name */
    private static n f60093i = null;

    /* renamed from: j  reason: collision with root package name */
    private static String f60094j = "__MTA_FIRST_ACTIVATE__";

    /* renamed from: k  reason: collision with root package name */
    private static int f60095k = -1;

    public static String A(Context context) {
        List<Sensor> sensorList;
        try {
            SensorManager sensorManager = (SensorManager) context.getSystemService(ai.ac);
            if (sensorManager == null || (sensorList = sensorManager.getSensorList(-1)) == null) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < sensorList.size(); i2++) {
                sb.append(sensorList.get(i2).getType());
                if (i2 != sensorList.size() - 1) {
                    sb.append(",");
                }
            }
            return sb.toString();
        } catch (Throwable th) {
            f60090f.e(th);
            return "";
        }
    }

    public static WifiInfo B(Context context) {
        WifiManager wifiManager;
        if (!a(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)) == null) {
            return null;
        }
        return wifiManager.getConnectionInfo();
    }

    public static String C(Context context) {
        try {
            WifiInfo B = B(context);
            if (B != null) {
                return B.getBSSID();
            }
            return null;
        } catch (Throwable th) {
            f60090f.e(th);
            return null;
        }
    }

    public static String D(Context context) {
        try {
            WifiInfo B = B(context);
            if (B != null) {
                return B.getSSID();
            }
            return null;
        } catch (Throwable th) {
            f60090f.e(th);
            return null;
        }
    }

    public static synchronized int E(Context context) {
        synchronized (k.class) {
            int i2 = f60095k;
            if (i2 != -1) {
                return i2;
            }
            F(context);
            return f60095k;
        }
    }

    public static void F(Context context) {
        int a4 = p.a(context, f60094j, 1);
        f60095k = a4;
        f60090f.e(Integer.valueOf(a4));
        if (f60095k == 1) {
            p.b(context, f60094j, 0);
        }
    }

    private static long G(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    public static int a() {
        return h().nextInt(Integer.MAX_VALUE);
    }

    public static Long a(String str, String str2, int i2, int i4, Long l4) {
        if (str != null && str2 != null) {
            if (str2.equalsIgnoreCase(g0.f27568a) || str2.equalsIgnoreCase("|")) {
                str2 = "\\" + str2;
            }
            String[] split = str.split(str2);
            if (split.length == i4) {
                try {
                    Long l5 = 0L;
                    for (String str3 : split) {
                        l5 = Long.valueOf(i2 * (l5.longValue() + Long.valueOf(str3).longValue()));
                    }
                    return l5;
                } catch (NumberFormatException unused) {
                }
            }
        }
        return l4;
    }

    public static String a(long j4) {
        return new SimpleDateFormat("yyyyMMdd").format(new Date(j4));
    }

    public static String a(String str) {
        if (str == null) {
            return "0";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b4 : digest) {
                int i2 = b4 & 255;
                if (i2 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i2));
            }
            return stringBuffer.toString();
        } catch (Throwable unused) {
            return "0";
        }
    }

    public static HttpHost a(Context context) {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        if (context == null) {
            return null;
        }
        try {
        } catch (Throwable th) {
            f60090f.e(th);
        }
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0 && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null) {
            if ((activeNetworkInfo.getTypeName() == null || !activeNetworkInfo.getTypeName().equalsIgnoreCase("WIFI")) && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals(com.join.android.app.common.utils.f.f17228c) && !extraInfo.equals(com.join.android.app.common.utils.f.f17229d) && !extraInfo.equals(com.join.android.app.common.utils.f.f17230e)) {
                    if (extraInfo.equals(com.join.android.app.common.utils.f.f17227b)) {
                        return new HttpHost("10.0.0.200", 80);
                    }
                    return null;
                }
                return new HttpHost("10.0.0.172", 80);
            }
            return null;
        }
        return null;
    }

    public static void a(JSONObject jSONObject, String str, String str2) {
        if (str2 != null) {
            try {
                if (str2.length() > 0) {
                    jSONObject.put(str, str2);
                }
            } catch (Throwable th) {
                f60090f.e(th);
            }
        }
    }

    public static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Throwable th) {
            f60090f.e(th);
            return false;
        }
    }

    public static byte[] a(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length * 2);
        while (true) {
            int read = gZIPInputStream.read(bArr2);
            if (read == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayInputStream.close();
                gZIPInputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            }
            byteArrayOutputStream.write(bArr2, 0, read);
        }
    }

    public static long b(String str) {
        return a(str, g0.f27568a, 100, 3, 0L).longValue();
    }

    public static synchronized StatLogger b() {
        StatLogger statLogger;
        synchronized (k.class) {
            if (f60090f == null) {
                StatLogger statLogger2 = new StatLogger("MtaSDK");
                f60090f = statLogger2;
                statLogger2.setDebugEnable(false);
            }
            statLogger = f60090f;
        }
        return statLogger;
    }

    public static synchronized String b(Context context) {
        synchronized (k.class) {
            String str = f60085a;
            if (str != null && str.trim().length() != 0) {
                return f60085a;
            }
            String l4 = l(context);
            f60085a = l4;
            if (l4 == null || l4.trim().length() == 0) {
                f60085a = Integer.toString(h().nextInt(Integer.MAX_VALUE));
            }
            return f60085a;
        }
    }

    public static String b(Context context, String str) {
        if (StatConfig.isEnableConcurrentProcess()) {
            if (f60091g == null) {
                f60091g = u(context);
            }
            if (f60091g != null) {
                return str + "_" + f60091g;
            }
        }
        return str;
    }

    public static long c() {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            return calendar.getTimeInMillis() + 86400000;
        } catch (Throwable th) {
            f60090f.e(th);
            return System.currentTimeMillis() + 86400000;
        }
    }

    public static synchronized String c(Context context) {
        String str;
        synchronized (k.class) {
            String str2 = f60087c;
            if (str2 == null || "" == str2) {
                f60087c = f(context);
            }
            str = f60087c;
        }
        return str;
    }

    public static String c(String str) {
        if (str == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 8) {
            return str;
        }
        try {
            return new String(g.b(e.a(str.getBytes("UTF-8")), 0), "UTF-8");
        } catch (Throwable th) {
            f60090f.e(th);
            return str;
        }
    }

    public static int d() {
        return Build.VERSION.SDK_INT;
    }

    public static DisplayMetrics d(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 8) {
            return str;
        }
        try {
            return new String(e.b(g.a(str.getBytes("UTF-8"), 0)), "UTF-8");
        } catch (Throwable th) {
            f60090f.e(th);
            return str;
        }
    }

    public static String e() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return String.valueOf((statFs.getBlockSize() * statFs.getAvailableBlocks()) / 1000000) + net.lingala.zip4j.util.e.F0 + String.valueOf(f() / 1000000);
    }

    public static boolean e(Context context) {
        NetworkInfo[] allNetworkInfo;
        try {
        } catch (Throwable th) {
            f60090f.e(th);
        }
        if (!a(context, "android.permission.ACCESS_WIFI_STATE")) {
            f60090f.warn("can not get the permission of android.permission.ACCESS_WIFI_STATE");
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
            for (int i2 = 0; i2 < allNetworkInfo.length; i2++) {
                if (allNetworkInfo[i2].getTypeName().equalsIgnoreCase("WIFI") && allNetworkInfo[i2].isConnected()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static long f() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    public static String f(Context context) {
        if (!a(context, "android.permission.ACCESS_WIFI_STATE")) {
            f60090f.e("Could not get permission of android.permission.ACCESS_WIFI_STATE");
            return "";
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
            return wifiManager == null ? "" : wifiManager.getConnectionInfo().getMacAddress();
        } catch (Exception e4) {
            f60090f.e(e4);
            return "";
        }
    }

    public static boolean g(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            if (a(context, "android.permission.INTERNET") && a(context, "android.permission.ACCESS_NETWORK_STATE")) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                return connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.getTypeName().equalsIgnoreCase("WIFI");
            }
            f60090f.warn("can not get the permisson of android.permission.INTERNET");
        } catch (Throwable th) {
            f60090f.e(th);
        }
        return false;
    }

    private static synchronized Random h() {
        Random random;
        synchronized (k.class) {
            if (f60089e == null) {
                f60089e = new Random();
            }
            random = f60089e;
        }
        return random;
    }

    public static boolean h(Context context) {
        try {
            if (a(context, "android.permission.INTERNET") && a(context, "android.permission.ACCESS_NETWORK_STATE")) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                        f60090f.w("Network error");
                        return false;
                    }
                    return true;
                }
            } else {
                f60090f.warn("can not get the permisson of android.permission.INTERNET");
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static long i() {
        long j4 = 0;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
            j4 = Integer.valueOf(bufferedReader.readLine().split("\\s+")[1]).intValue() * 1024;
            bufferedReader.close();
            return j4;
        } catch (IOException unused) {
            return j4;
        }
    }

    public static String i(Context context) {
        String str = f60086b;
        if (str != null) {
            return str;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                String string = applicationInfo.metaData.getString("TA_APPKEY");
                if (string != null) {
                    f60086b = string;
                    return string;
                }
                f60090f.w("Could not read APPKEY meta-data from AndroidManifest.xml");
                return null;
            }
            return null;
        } catch (Throwable unused) {
            f60090f.w("Could not read APPKEY meta-data from AndroidManifest.xml");
            return null;
        }
    }

    public static String j(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                Object obj = applicationInfo.metaData.get("InstallChannel");
                if (obj != null) {
                    return obj.toString();
                }
                f60090f.w("Could not read InstallChannel meta-data from AndroidManifest.xml");
                return null;
            }
            return null;
        } catch (Throwable unused) {
            f60090f.e("Could not read InstallChannel meta-data from AndroidManifest.xml");
            return null;
        }
    }

    public static String k(Context context) {
        if (context == null) {
            return null;
        }
        return context.getClass().getName();
    }

    public static String l(Context context) {
        try {
            if (!a(context, "android.permission.READ_PHONE_STATE")) {
                f60090f.e("Could not get permission of android.permission.READ_PHONE_STATE");
                return null;
            }
            String deviceId = o(context) ? ((TelephonyManager) context.getSystemService("phone")).getDeviceId() : "";
            if (deviceId != null) {
                return deviceId;
            }
            return null;
        } catch (Throwable th) {
            f60090f.e(th);
            return null;
        }
    }

    public static String m(Context context) {
        TelephonyManager telephonyManager;
        String str = null;
        try {
            if (!a(context, "android.permission.READ_PHONE_STATE")) {
                f60090f.e("Could not get permission of android.permission.READ_PHONE_STATE");
            } else if (o(context) && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                str = telephonyManager.getSimOperator();
            }
        } catch (Throwable th) {
            f60090f.e(th);
        }
        return str;
    }

    public static String n(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return str == null ? "" : str;
        } catch (Throwable th) {
            f60090f.e(th);
            return "";
        }
    }

    public static boolean o(Context context) {
        return context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0;
    }

    public static String p(Context context) {
        String str = null;
        try {
        } catch (Throwable th) {
            f60090f.e(th);
        }
        if (a(context, "android.permission.INTERNET") && a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                String typeName = activeNetworkInfo.getTypeName();
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (typeName != null) {
                    if (!typeName.equalsIgnoreCase("WIFI")) {
                        if (typeName.equalsIgnoreCase("MOBILE")) {
                            str = extraInfo != null ? extraInfo : "MOBILE";
                        } else {
                            if (extraInfo == null) {
                                str = typeName;
                            }
                        }
                        f60090f.e(th);
                        return str;
                    }
                    str = "WIFI";
                }
            }
        } else {
            f60090f.e("can not get the permission of android.permission.ACCESS_WIFI_STATE");
        }
        return str;
    }

    public static Integer q(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return Integer.valueOf(telephonyManager.getNetworkType());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String r(Context context) {
        String str = "";
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Throwable th) {
            f60090f.e(th);
        }
        return str != null ? str.length() == 0 ? "unknown" : str : "unknown";
    }

    public static int s(Context context) {
        try {
            return o.a() ? 1 : 0;
        } catch (Throwable th) {
            f60090f.e(th);
            return 0;
        }
    }

    public static String t(Context context) {
        String path;
        try {
        } catch (Throwable th) {
            f60090f.e(th);
        }
        if (!a(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            f60090f.warn("can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE");
            return null;
        }
        String externalStorageState = Environment.getExternalStorageState();
        if (externalStorageState != null && externalStorageState.equals("mounted") && (path = Environment.getExternalStorageDirectory().getPath()) != null) {
            StatFs statFs = new StatFs(path);
            return String.valueOf((statFs.getAvailableBlocks() * statFs.getBlockSize()) / 1000000) + net.lingala.zip4j.util.e.F0 + String.valueOf((statFs.getBlockCount() * statFs.getBlockSize()) / 1000000);
        }
        return null;
    }

    static String u(Context context) {
        try {
            int myPid = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String v(Context context) {
        return b(context, StatConstants.f60038a);
    }

    public static synchronized Integer w(Context context) {
        Integer valueOf;
        synchronized (k.class) {
            int i2 = 0;
            try {
                int a4 = p.a(context, "MTA_EVENT_INDEX", 0);
                if (a4 < 2147483646) {
                    i2 = a4;
                }
                p.b(context, "MTA_EVENT_INDEX", i2 + 1);
                valueOf = Integer.valueOf(i2 + 1);
            }
        }
        return valueOf;
    }

    public static String x(Context context) {
        return String.valueOf(G(context) / 1000000) + net.lingala.zip4j.util.e.F0 + String.valueOf(i() / 1000000);
    }

    public static synchronized l y(Context context) {
        l lVar;
        synchronized (k.class) {
            if (f60092h == null) {
                f60092h = new l();
            }
            lVar = f60092h;
        }
        return lVar;
    }

    public static JSONObject z(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            y(context);
            int b4 = l.b();
            if (b4 > 0) {
                jSONObject.put("fx", b4 / DurationKt.NANOS_IN_MILLIS);
            }
            y(context);
            int c4 = l.c();
            if (c4 > 0) {
                jSONObject.put("fn", c4 / DurationKt.NANOS_IN_MILLIS);
            }
            y(context);
            int a4 = l.a();
            if (a4 > 0) {
                jSONObject.put("n", a4);
            }
            y(context);
            String d4 = l.d();
            if (d4 != null && d4.length() == 0) {
                y(context);
                jSONObject.put("na", l.d());
            }
        } catch (Exception e4) {
            f60090f.e(e4);
        }
        return jSONObject;
    }
}
