package com.join.android.app.common.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.DisplayCutout;
import android.view.KeyCharacterMap;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowInsets;
import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.MApplication;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.u0;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* compiled from: SystemInfoUtils.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: b  reason: collision with root package name */
    static String f17249b = "j";

    /* renamed from: c  reason: collision with root package name */
    static j f17250c = null;

    /* renamed from: d  reason: collision with root package name */
    static String f17251d = null;

    /* renamed from: e  reason: collision with root package name */
    static String f17252e = "";

    /* renamed from: a  reason: collision with root package name */
    Context f17253a;

    private j(Context context) {
        this.f17253a = context;
    }

    public static boolean C(Context context, String str) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        try {
            runningTasks = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(100);
        } catch (SecurityException e4) {
            e4.printStackTrace();
        }
        if (runningTasks.size() <= 0) {
            return false;
        }
        for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks) {
            if (runningTaskInfo.topActivity.getPackageName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean D(Context context) {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1);
            if (!runningTasks.isEmpty()) {
                if (!runningTasks.get(0).topActivity.getPackageName().equals(context.getPackageName())) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean F(Context context) {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1);
            if (!runningTasks.isEmpty()) {
                ComponentName componentName = runningTasks.get(0).topActivity;
                if (!componentName.getPackageName().equals(context.getPackageName())) {
                    if (componentName.getClassName().equals("com.join.mgps.activity_SplashActivity")) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean G(Context context) {
        return (TextUtils.isEmpty(u()) || TextUtils.isEmpty(f(context)) || w() == null || !f(context).equals(w().getComponentName().getClassName())) ? false : true;
    }

    public static boolean a(Context context) {
        return (ViewConfiguration.get(context).hasPermanentMenuKey() ^ true) & (KeyCharacterMap.deviceHasKey(4) ^ true);
    }

    public static String f(Context context) {
        ComponentName componentName = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1).get(0).topActivity;
        return componentName.getPackageName().equals(context.getPackageName()) ? componentName.getClassName() : "";
    }

    public static String l() {
        try {
            return "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
        } catch (Exception e4) {
            e4.printStackTrace();
            return "35";
        }
    }

    public static j n(Context context) {
        if (f17250c == null) {
            f17250c = new j(context);
        }
        return f17250c;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String p() {
        /*
            java.lang.String r0 = ""
            java.util.Enumeration r1 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.lang.Exception -> L82
            r2 = r0
        L7:
            boolean r3 = r1.hasMoreElements()     // Catch: java.lang.Exception -> L80
            if (r3 == 0) goto L77
            java.lang.Object r3 = r1.nextElement()     // Catch: java.lang.Exception -> L80
            java.net.NetworkInterface r3 = (java.net.NetworkInterface) r3     // Catch: java.lang.Exception -> L80
            byte[] r4 = r3.getHardwareAddress()     // Catch: java.lang.Exception -> L80
            if (r4 == 0) goto L7
            int r5 = r4.length     // Catch: java.lang.Exception -> L80
            if (r5 != 0) goto L1d
            goto L7
        L1d:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L80
            r5.<init>()     // Catch: java.lang.Exception -> L80
            int r6 = r4.length     // Catch: java.lang.Exception -> L80
            r7 = 0
            r8 = 0
        L25:
            r9 = 1
            if (r8 >= r6) goto L3e
            r10 = r4[r8]     // Catch: java.lang.Exception -> L80
            java.lang.String r11 = "%02X:"
            java.lang.Object[] r9 = new java.lang.Object[r9]     // Catch: java.lang.Exception -> L80
            java.lang.Byte r10 = java.lang.Byte.valueOf(r10)     // Catch: java.lang.Exception -> L80
            r9[r7] = r10     // Catch: java.lang.Exception -> L80
            java.lang.String r9 = java.lang.String.format(r11, r9)     // Catch: java.lang.Exception -> L80
            r5.append(r9)     // Catch: java.lang.Exception -> L80
            int r8 = r8 + 1
            goto L25
        L3e:
            int r4 = r5.length()     // Catch: java.lang.Exception -> L80
            if (r4 <= 0) goto L4c
            int r4 = r5.length()     // Catch: java.lang.Exception -> L80
            int r4 = r4 - r9
            r5.deleteCharAt(r4)     // Catch: java.lang.Exception -> L80
        L4c:
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Exception -> L80
            java.lang.String r4 = "wlan0"
            java.lang.String r5 = r3.getName()     // Catch: java.lang.Exception -> L80
            boolean r4 = r4.equals(r5)     // Catch: java.lang.Exception -> L80
            if (r4 == 0) goto L5d
            r0 = r2
        L5d:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L80
            r4.<init>()     // Catch: java.lang.Exception -> L80
            java.lang.String r5 = "interfaceName="
            r4.append(r5)     // Catch: java.lang.Exception -> L80
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L80
            r4.append(r3)     // Catch: java.lang.Exception -> L80
            java.lang.String r3 = ", mac="
            r4.append(r3)     // Catch: java.lang.Exception -> L80
            r4.append(r2)     // Catch: java.lang.Exception -> L80
            goto L7
        L77:
            boolean r1 = com.join.mgps.Util.d2.i(r0)     // Catch: java.lang.Exception -> L80
            if (r1 == 0) goto L7e
            goto L8d
        L7e:
            r0 = r2
            goto L8d
        L80:
            r0 = r2
            goto L83
        L82:
        L83:
            boolean r1 = com.join.mgps.Util.d2.h(r0)
            if (r1 == 0) goto L8d
            java.lang.String r0 = l()
        L8d:
            boolean r1 = com.join.mgps.Util.d2.h(r0)
            if (r1 == 0) goto L97
            java.lang.String r0 = l()
        L97:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.utils.j.p():java.lang.String");
    }

    public static int t(Context context) {
        Resources resources;
        int identifier;
        if (!a(context) || (identifier = (resources = context.getResources()).getIdentifier("navigation_bar_height", "dimen", q.a.f73954a)) <= 0) {
            return 0;
        }
        return resources.getDimensionPixelSize(identifier);
    }

    public static String u() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/" + Process.myPid() + "/cmdline")));
            String trim = bufferedReader.readLine().trim();
            bufferedReader.close();
            return trim;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static int v(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", q.a.f73954a));
    }

    public static Activity w() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            for (Object obj : ((Map) declaredField.get(invoke)).values()) {
                Class<?> cls2 = obj.getClass();
                Field declaredField2 = cls2.getDeclaredField("paused");
                declaredField2.setAccessible(true);
                if (!declaredField2.getBoolean(obj)) {
                    Field declaredField3 = cls2.getDeclaredField(TTDownloadField.TT_ACTIVITY);
                    declaredField3.setAccessible(true);
                    return (Activity) declaredField3.get(obj);
                }
            }
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
        } catch (IllegalAccessException e5) {
            e5.printStackTrace();
        } catch (NoSuchFieldException e6) {
            e6.printStackTrace();
        } catch (NoSuchMethodException e7) {
            e7.printStackTrace();
        } catch (InvocationTargetException e8) {
            e8.printStackTrace();
        }
        return null;
    }

    public String[] A() {
        String[] strArr = new String[2];
        try {
            PackageInfo packageInfo = this.f17253a.getPackageManager().getPackageInfo(this.f17253a.getPackageName(), 0);
            strArr[0] = packageInfo.versionCode + "";
            strArr[1] = packageInfo.versionName;
            return strArr;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return strArr;
        }
    }

    public int B(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    @RequiresApi(api = 28)
    public boolean E(Window window) {
        DisplayCutout displayCutout;
        WindowInsets rootWindowInsets = window.getDecorView().getRootWindowInsets();
        return (rootWindowInsets == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null || displayCutout.getBoundingRects() == null) ? false : true;
    }

    public void b(Context context, int i2) {
        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_WIFI_STATE") != 0) {
            ActivityCompat.requestPermissions((Activity) context, new String[]{"android.permission.ACCESS_WIFI_STATE"}, i2);
        }
    }

    public boolean c(Context context) {
        try {
            String[] strArr = {"com.papa91.ons", "com.dsemu.drastic", "org.mupen64plusae.v3.alpha", "com.wufun.dc", "com.papa91.dc"};
            for (int i2 = 0; i2 < 5; i2++) {
                if (C(context, strArr[i2])) {
                    return true;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return false;
    }

    public boolean d(Context context) {
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
            List asList = Arrays.asList("fc", "fba", "gba", "gbc", "md", "ps", "sfc", "wsc", "psp");
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                String str = runningAppProcessInfo.processName;
                u0.e("appProcess", str);
                if (str.contains(":")) {
                    String[] split = str.split(":");
                    if (split.length > 1 && asList.contains(split[1])) {
                        return true;
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return false;
    }

    public String e(Context context) {
        return context != null ? !TextUtils.isEmpty(MApplication.f9241z) ? MApplication.f9241z : Settings.System.getString(context.getContentResolver(), "android_id") : "";
    }

    public float g() {
        new DisplayMetrics();
        return this.f17253a.getApplicationContext().getResources().getDisplayMetrics().density;
    }

    public float h(Context context) {
        new DisplayMetrics();
        return context.getApplicationContext().getResources().getDisplayMetrics().density;
    }

    public String i() {
        try {
            if (d2.h(f17252e) || f17252e.startsWith("20") || f17252e.equals(f17251d.replaceAll(":", ""))) {
                if (Build.VERSION.SDK_INT < 29) {
                    f17252e = ((TelephonyManager) this.f17253a.getSystemService("phone")).getDeviceId();
                }
                if (d2.h(f17252e) || f17252e.equals("0")) {
                    f17252e = o().replaceAll(":", "");
                }
            }
        } catch (Exception unused) {
            f17252e = o().replaceAll(":", "");
        }
        return f17252e;
    }

    public float j(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        float f4 = displayMetrics.widthPixels;
        float f5 = displayMetrics.heightPixels;
        return f4 > f5 ? f4 / f5 : f5 / f4;
    }

    public int k(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public String m() {
        String str;
        String str2;
        String str3 = "";
        TelephonyManager telephonyManager = (TelephonyManager) this.f17253a.getSystemService("phone");
        try {
            str = telephonyManager.getDeviceId();
        } catch (Exception e4) {
            e4.printStackTrace();
            str = "";
        }
        try {
            str2 = telephonyManager.getSubscriberId();
        } catch (Exception e5) {
            e5.printStackTrace();
            str2 = "";
        }
        String str4 = Build.MODEL;
        String str5 = Build.BRAND;
        try {
            str3 = telephonyManager.getLine1Number();
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        return "[version:" + z() + ",imei:" + str + ",imsi:" + str2 + ",model:" + str4 + ",brand:" + str5 + ",number:" + str3 + "]";
    }

    public String o() {
        try {
        } catch (Exception unused) {
            String str = f17251d;
            if (str == null || str.equals("") || f17251d.equals("02:00:00:00:00:00")) {
                f17251d = p();
            }
        }
        if (d2.i(f17251d)) {
            return f17251d;
        }
        String macAddress = ((WifiManager) this.f17253a.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
        f17251d = macAddress;
        StringBuilder sb = new StringBuilder();
        sb.append("手机macAdd:");
        sb.append(macAddress);
        String str2 = f17251d;
        if (str2 == null || str2.equals("") || f17251d.equals("02:00:00:00:00:00")) {
            f17251d = p();
        }
        return f17251d;
    }

    public String q() {
        return Build.MODEL;
    }

    public int r() {
        return Build.VERSION.SDK_INT;
    }

    public String s() {
        return Build.VERSION.RELEASE;
    }

    public String x() {
        return Build.BRAND;
    }

    public int y() {
        try {
            return this.f17253a.getPackageManager().getPackageInfo(this.f17253a.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public String z() {
        try {
            return this.f17253a.getPackageManager().getPackageInfo(this.f17253a.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return "";
        }
    }
}
