package cn.sharesdk.framework.utils;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.os.Looper;
import android.util.Base64;
import com.mob.MobSDK;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
/* compiled from: AppUtils.java */
/* loaded from: classes2.dex */
public class a {
    public static boolean a(String str, int i2) {
        return (str == null || str.isEmpty() || b(str, i2) == null) ? false : true;
    }

    public static PackageInfo b(String str, int i2) {
        try {
            try {
                return DeviceHelper.getInstance(MobSDK.getContext()).getPInfo(str, i2);
            } catch (Throwable th) {
                SSDKLog b4 = SSDKLog.b();
                b4.a(str + ":" + th);
                return null;
            }
        } catch (Throwable unused) {
            return MobSDK.getContext().getPackageManager().getPackageInfo(str, i2);
        }
    }

    public static ApplicationInfo c(String str, int i2) {
        try {
            try {
                return DeviceHelper.getInstance(MobSDK.getContext()).getAInfo(str, i2);
            } catch (Throwable th) {
                SSDKLog b4 = SSDKLog.b();
                b4.a(str + ":" + th);
                return null;
            }
        } catch (Throwable unused) {
            return MobSDK.getContext().getPackageManager().getApplicationInfo(str, i2);
        }
    }

    public static String d() {
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        try {
            try {
                return deviceHelper.getDeviceDataNotAES();
            } catch (Throwable unused) {
                return deviceHelper.getModel() + "|" + deviceHelper.getOSVersionInt() + "|" + deviceHelper.getManufacturer() + "|" + deviceHelper.getCarrier() + "|" + deviceHelper.getScreenSize();
            }
        } catch (Throwable th) {
            SSDKLog.b().d(th);
            return "";
        }
    }

    public static boolean a() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static ResolveInfo a(Intent intent, int i2) {
        try {
            try {
                return DeviceHelper.getInstance(MobSDK.getContext()).resolveActivity(intent, i2);
            } catch (Throwable th) {
                SSDKLog b4 = SSDKLog.b();
                b4.d("getResolveActivity error" + th, new Object[0]);
                return null;
            }
        } catch (Throwable unused) {
            return MobSDK.getContext().getPackageManager().resolveActivity(intent, i2);
        }
    }

    public static ApplicationInfo b() {
        try {
            return DeviceHelper.getInstance(MobSDK.getContext()).getAInfo();
        } catch (Throwable th) {
            try {
                return MobSDK.getContext().getApplicationInfo();
            } catch (Throwable unused) {
                SSDKLog.b().b(th);
                return null;
            }
        }
    }

    public static String c() {
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        try {
            try {
                return deviceHelper.getDeviceData();
            } catch (Throwable unused) {
                String str = deviceHelper.getModel() + "|" + deviceHelper.getOSVersionInt() + "|" + deviceHelper.getManufacturer() + "|" + deviceHelper.getCarrier() + "|" + deviceHelper.getScreenSize();
                String deviceKey = deviceHelper.getDeviceKey();
                if (deviceKey == null) {
                    deviceKey = "";
                } else if (deviceKey.length() > 16) {
                    deviceKey = deviceKey.substring(0, 16);
                }
                return a(str, deviceKey);
            }
        } catch (Throwable th) {
            SSDKLog.b().d(th);
            return "";
        }
    }

    private static String a(String str, String str2) {
        try {
            String encodeToString = Base64.encodeToString(Data.AES128Encode(str2, str), 0);
            return encodeToString.contains("\n") ? encodeToString.replace("\n", "") : encodeToString;
        } catch (Throwable th) {
            SSDKLog.b().b(th);
            return null;
        }
    }
}
