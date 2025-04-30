package com.sdk.Unicorn.base.framework.utils.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.sdk.f.g;
import com.sdk.i.a;
import com.sdk.o.b;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.MessageDigest;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Stack;
@Keep
/* loaded from: classes4.dex */
public class AppUtils extends a {
    public static final String TAG = "com.sdk.Unicorn.base.framework.utils.app.AppUtils";
    public static boolean isDebug = g.f56647b;
    public static Stack<Activity> activityStack = new Stack<>();
    public static int targetSdkVersion = -1;

    public static String doFingerprint(byte[] bArr, String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        String str2 = "";
        for (int i2 = 0; i2 < digest.length; i2++) {
            if (i2 != 0) {
                str2 = str2 + ":";
            }
            String hexString = Integer.toHexString(digest[i2] & 255);
            if (hexString.length() == 1) {
                str2 = str2 + "0";
            }
            str2 = str2 + hexString;
        }
        return str2;
    }

    @SuppressLint({"NewApi"})
    public static int getAndroidSDKVersion(Context context) {
        try {
            return Build.VERSION.SDK_INT;
        } catch (Exception e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return -1;
        }
    }

    public static String getApiKey(Context context, String str) {
        String str2 = (String) getMetaData(context, str);
        return b.a(str2).booleanValue() ? com.sdk.v.a.f56702c : str2;
    }

    public static Drawable getAppIcon(Context context) {
        if (context == null) {
            a.logError(TAG, "getAppIcon", "mContext 为空", isDebug);
            return null;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo != null) {
                return context.getResources().getDrawable(packageInfo.applicationInfo.icon);
            }
            return null;
        } catch (Exception e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return null;
        }
    }

    public static String getAppLable(Context context) {
        if (context == null) {
            a.logError(TAG, "getAppLable", "mContext 为空", isDebug);
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128)).toString();
        } catch (Exception e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return null;
        }
    }

    public static String getAppMd5(Context context) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
        } catch (PackageManager.NameNotFoundException e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            packageInfo = null;
        }
        if (packageInfo != null) {
            int i2 = packageInfo.applicationInfo.flags;
            try {
                return doFingerprint(packageInfo.signatures[0].toByteArray(), "MD5");
            } catch (Exception e5) {
                b.a(TAG, e5.getMessage(), Boolean.valueOf(isDebug));
                return null;
            }
        }
        return null;
    }

    public static long getInstallDate(Context context) {
        Long b4 = com.sdk.j.a.b(context, g.f56646a);
        if (b4.longValue() == 0) {
            b4 = Long.valueOf(System.currentTimeMillis());
            com.sdk.j.a.a(context, g.f56646a, b4);
        }
        return b4.longValue();
    }

    public static String getLocalIPAddress() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
            return "null";
        } catch (SocketException unused) {
            return "null";
        }
    }

    public static <T> T getMetaData(Context context, String str) {
        Bundle bundle;
        if (context == null || b.a(str).booleanValue()) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(getPackageName(context), 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                return null;
            }
            return (T) bundle.get(str);
        } catch (Exception e4) {
            b.b(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return null;
        }
    }

    public static String getPackageName() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread").getDeclaredMethod("currentPackageName", new Class[0]);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, new Object[0]);
        } catch (Exception e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return null;
        }
    }

    public static String getPackageName(Context context) {
        if (context == null) {
            b.c(TAG, "mContext 为空", Boolean.valueOf(isDebug));
            return null;
        }
        try {
            return context.getPackageName();
        } catch (Exception e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return null;
        }
    }

    @SuppressLint({"NewApi"})
    public static int getTargetSdkVersion(Context context) {
        if (context == null) {
            return targetSdkVersion;
        }
        if (targetSdkVersion == -1) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(getPackageName(context), 1);
                if (packageInfo != null) {
                    targetSdkVersion = packageInfo.applicationInfo.targetSdkVersion;
                }
            } catch (Exception e4) {
                b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            }
        }
        return targetSdkVersion;
    }

    public static int getVersionCode(Context context) {
        if (context == null) {
            return -1;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(getPackageName(context), 1);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (Exception e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return -1;
        }
    }

    public static String getVersionName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo != null) {
                return packageInfo.versionName;
            }
            return null;
        } catch (Exception e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return null;
        }
    }

    public static boolean isFirstLogin(Context context) {
        return false;
    }

    public static boolean isServiceRunning(Context context, String str) {
        boolean z3 = false;
        if (context == null) {
            b.c(TAG, "isServiceRunning: mContext 为空", Boolean.valueOf(isDebug));
            return false;
        }
        try {
            for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningServices(Integer.MAX_VALUE)) {
                if (str.equals(runningServiceInfo.service.getClassName())) {
                    z3 = true;
                }
            }
            return z3;
        } catch (Exception e4) {
            b.a(TAG, e4.getMessage(), Boolean.valueOf(isDebug));
            return z3;
        }
    }

    public void addActivity(Activity activity) {
        activityStack.add(activity);
    }

    public Activity currentActivity() {
        return activityStack.lastElement();
    }

    public void finishActivity() {
        finishActivity(activityStack.lastElement());
    }

    public void finishActivity(Activity activity) {
        if (activity != null) {
            activityStack.remove(activity);
            activity.finish();
        }
    }

    public void finishActivity(Class<?> cls) {
        Iterator<Activity> it2 = activityStack.iterator();
        while (it2.hasNext()) {
            Activity next = it2.next();
            if (next.getClass().equals(cls)) {
                finishActivity(next);
            }
        }
    }

    public void finishAllActivity() {
        for (int i2 = 0; i2 < activityStack.size(); i2++) {
            if (activityStack.get(i2) != null) {
                activityStack.get(i2).finish();
            }
        }
        activityStack.clear();
    }
}
