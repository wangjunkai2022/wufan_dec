package com.papa91.arc.util;

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
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class SystemInfoUtils {
    static String TAG = "SystemInfoUtils";
    static String androidId = "";
    static String imei = "";
    static String mac;
    static SystemInfoUtils systemInfoUtils;
    Context mContext;

    private SystemInfoUtils(Context context) {
        this.mContext = context;
    }

    public static String getCurrentActivityName(Context context) {
        ComponentName componentName = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1).get(0).topActivity;
        return componentName.getPackageName().equals(context.getPackageName()) ? componentName.getClassName() : "";
    }

    public static String getIDFinal() {
        try {
            return "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
        } catch (Exception e4) {
            e4.printStackTrace();
            return "35";
        }
    }

    public static SystemInfoUtils getInstance(Context context) {
        if (systemInfoUtils == null) {
            systemInfoUtils = new SystemInfoUtils(context);
        }
        return systemInfoUtils;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getMacFinal() {
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
            boolean r1 = com.papa91.arc.util.StringUtils.isNotEmpty(r0)     // Catch: java.lang.Exception -> L80
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
            boolean r1 = com.papa91.arc.util.StringUtils.isEmpty(r0)
            if (r1 == 0) goto L8d
            java.lang.String r0 = getIDFinal()
        L8d:
            boolean r1 = com.papa91.arc.util.StringUtils.isEmpty(r0)
            if (r1 == 0) goto L97
            java.lang.String r0 = getIDFinal()
        L97:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa91.arc.util.SystemInfoUtils.getMacFinal():java.lang.String");
    }

    public static String getProcessName() {
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

    public static int getStatusBarHeight(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", q.a.f73954a));
    }

    public static Activity getTopActivity() {
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

    public static boolean isBackground(Context context) {
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

    public static boolean isSplash(Context context) {
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

    public void checkWifiStatePermission(Context context, int i2) {
        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_WIFI_STATE") != 0) {
            ActivityCompat.requestPermissions((Activity) context, new String[]{"android.permission.ACCESS_WIFI_STATE"}, i2);
        }
    }

    public String getAndroidId(Context context) {
        if (context != null && TextUtils.isEmpty(androidId)) {
            androidId = Settings.System.getString(context.getContentResolver(), "android_id");
        }
        return androidId;
    }

    public String getAndroidVersion() {
        return Build.VERSION.RELEASE;
    }

    public float getDensity() {
        new DisplayMetrics();
        return this.mContext.getApplicationContext().getResources().getDisplayMetrics().density;
    }

    public String getDeviceId() {
        try {
            if (StringUtils.isEmpty(imei) || imei.startsWith("20") || imei.equals(mac.replaceAll(":", ""))) {
                String deviceId = ((TelephonyManager) this.mContext.getSystemService("phone")).getDeviceId();
                imei = deviceId;
                if (StringUtils.isEmpty(deviceId) || imei.equals("0")) {
                    imei = getMacAddress().replaceAll(":", "");
                }
            }
        } catch (Exception unused) {
            imei = getMacAddress().replaceAll(":", "");
        }
        return imei;
    }

    public float getHWBeliel(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        float f4 = displayMetrics.widthPixels;
        float f5 = displayMetrics.heightPixels;
        return f4 > f5 ? f4 / f5 : f5 / f4;
    }

    public int getHeight(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public String getInfo() {
        String str;
        String str2;
        String str3 = "";
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
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
        return "[version:" + getVersionName() + ",imei:" + str + ",imsi:" + str2 + ",model:" + str4 + ",brand:" + str5 + ",number:" + str3 + "]";
    }

    public String getMacAddress() {
        try {
        } catch (Exception unused) {
            String str = mac;
            if (str == null || str.equals("") || mac.equals("02:00:00:00:00:00")) {
                mac = getMacFinal();
            }
        }
        if (StringUtils.isNotEmpty(mac)) {
            return mac;
        }
        String macAddress = ((WifiManager) this.mContext.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
        mac = macAddress;
        StringBuilder sb = new StringBuilder();
        sb.append("手机macAdd:");
        sb.append(macAddress);
        String str2 = mac;
        if (str2 == null || str2.equals("") || mac.equals("02:00:00:00:00:00")) {
            mac = getMacFinal();
        }
        return mac;
    }

    public String getMobileMODEL() {
        return Build.MODEL;
    }

    public String getMobileSystenmVersion() {
        return Build.VERSION.RELEASE;
    }

    public String getVendor() {
        return Build.BRAND;
    }

    public int getVersionCode() {
        try {
            return this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public String getVersionName() {
        try {
            return this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public String[] getVersionNameArray() {
        String[] strArr = new String[2];
        try {
            PackageInfo packageInfo = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0);
            strArr[0] = packageInfo.versionCode + "";
            strArr[1] = packageInfo.versionName;
            return strArr;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return strArr;
        }
    }

    public int getWidth(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public float getDensity(Context context) {
        new DisplayMetrics();
        return context.getApplicationContext().getResources().getDisplayMetrics().density;
    }
}
