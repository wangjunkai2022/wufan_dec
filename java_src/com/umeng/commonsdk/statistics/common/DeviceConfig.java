package com.umeng.commonsdk.statistics.common;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.google.android.material.timepicker.TimeModel;
import com.ss.android.download.api.constant.BaseConstants;
import com.umeng.analytics.pro.ai;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.idtracking.i;
import com.umeng.commonsdk.utils.UMUtils;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Calendar;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes4.dex */
public class DeviceConfig {
    public static final int DEFAULT_TIMEZONE = 8;
    private static final String KEY_EMUI_VERSION_CODE = "ro.build.hw_emui_api_level";
    private static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    protected static final String LOG_TAG = "com.umeng.commonsdk.statistics.common.DeviceConfig";
    public static final String MOBILE_NETWORK = "2G/3G";
    public static final String UNKNOW = "";
    public static final String WIFI = "Wi-Fi";
    private static DeviceTypeEnum deviceTypeEnum = DeviceTypeEnum.DEFAULT;
    private static String sWifiMac = "";
    private static String sImei = "";
    private static String sMeid = "";
    private static String sImsi = "";

    private static String byte2HexFormatted(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            String hexString = Integer.toHexString(bArr[i2]);
            int length = hexString.length();
            if (length == 1) {
                hexString = "0" + hexString;
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase(Locale.getDefault()));
            if (i2 < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    public static boolean checkPermission(Context context, String str) {
        if (context == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                if (((Integer) Class.forName("android.content.Context").getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() != 0) {
                    return false;
                }
            } catch (Throwable unused) {
                return false;
            }
        } else if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    public static String getAndroidId(Context context) {
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61522i) && context != null) {
            try {
                return Settings.Secure.getString(context.getContentResolver(), "android_id");
            } catch (Exception unused) {
                if (AnalyticsConstants.UM_DEBUG) {
                    MLog.w("can't read android id");
                }
            }
        }
        return null;
    }

    public static String getAppHashKey(Context context) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures;
            if (signatureArr.length > 0) {
                Signature signature = signatureArr[0];
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(signature.toByteArray());
                return Base64.encodeToString(messageDigest.digest(), 0).trim();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getAppMD5Signature(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return byte2HexFormatted(MessageDigest.getInstance("MD5").digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getAppName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.i(LOG_TAG, th);
                return null;
            }
            return null;
        }
    }

    public static String getAppSHA1Key(Context context) {
        try {
            return byte2HexFormatted(MessageDigest.getInstance("SHA1").digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getAppVersionCode(Context context) {
        return UMUtils.getAppVersionCode(context);
    }

    public static String getAppVersionName(Context context) {
        return UMUtils.getAppVersionName(context);
    }

    public static String getApplicationLable(Context context) {
        return context == null ? "" : context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }

    private static Properties getBuildProp() {
        FileInputStream fileInputStream;
        Properties properties = new Properties();
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            } catch (Throwable unused) {
            }
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
            } catch (Throwable unused2) {
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                return properties;
            }
        } catch (Throwable unused3) {
        }
        return properties;
    }

    public static String getCPU() {
        String str = null;
        try {
            FileReader fileReader = new FileReader("/proc/cpuinfo");
            BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
            str = bufferedReader.readLine();
            bufferedReader.close();
            fileReader.close();
        } catch (FileNotFoundException e4) {
            MLog.e(LOG_TAG, "Could not open file /proc/cpuinfo", e4);
        }
        return str != null ? str.substring(str.indexOf(58) + 1).trim() : "";
    }

    public static String getDBencryptID(Context context) {
        return UMUtils.genId();
    }

    public static String getDeviceId(Context context) {
        if (AnalyticsConstants.getDeviceType() == 2) {
            return getDeviceIdForBox(context);
        }
        return getDeviceIdForGeneral(context);
    }

    public static String getDeviceIdForBox(Context context) {
        String str = "";
        if (context == null) {
            return "";
        }
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 23) {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61522i)) {
                    str = Settings.Secure.getString(context.getContentResolver(), "android_id");
                    deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str2 = LOG_TAG;
                        MLog.i(str2, "getDeviceId, ANDROID_ID: " + str);
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    String macBySystemInterface = getMacBySystemInterface(context);
                    deviceTypeEnum = DeviceTypeEnum.MAC;
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str3 = LOG_TAG;
                        MLog.i(str3, "getDeviceId, MAC: " + macBySystemInterface);
                    }
                    if (TextUtils.isEmpty(macBySystemInterface)) {
                        String serialNo = getSerialNo();
                        deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                        if (TextUtils.isEmpty(serialNo)) {
                            String imei = getIMEI(context);
                            deviceTypeEnum = DeviceTypeEnum.IMEI;
                            return imei;
                        }
                        return serialNo;
                    }
                    return macBySystemInterface;
                }
                return str;
            } else if (i2 == 23) {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61522i)) {
                    str = Settings.Secure.getString(context.getContentResolver(), "android_id");
                    deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str4 = LOG_TAG;
                        MLog.i(str4, "getDeviceId, ANDROID_ID: " + str);
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    String macByJavaAPI = getMacByJavaAPI();
                    DeviceTypeEnum deviceTypeEnum2 = DeviceTypeEnum.MAC;
                    deviceTypeEnum = deviceTypeEnum2;
                    if (TextUtils.isEmpty(macByJavaAPI)) {
                        if (AnalyticsConstants.CHECK_DEVICE) {
                            macByJavaAPI = getMacShell();
                            deviceTypeEnum = deviceTypeEnum2;
                        } else {
                            macByJavaAPI = getMacBySystemInterface(context);
                            deviceTypeEnum = deviceTypeEnum2;
                        }
                    }
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str5 = LOG_TAG;
                        MLog.i(str5, "getDeviceId, MAC: " + macByJavaAPI);
                    }
                    if (TextUtils.isEmpty(macByJavaAPI)) {
                        String serialNo2 = getSerialNo();
                        deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                        if (TextUtils.isEmpty(serialNo2)) {
                            String imei2 = getIMEI(context);
                            deviceTypeEnum = DeviceTypeEnum.IMEI;
                            return imei2;
                        }
                        return serialNo2;
                    }
                    return macByJavaAPI;
                }
                return str;
            } else if (i2 >= 29) {
                String oaid = getOaid(context);
                deviceTypeEnum = DeviceTypeEnum.OAID;
                if (TextUtils.isEmpty(oaid)) {
                    String idfa = getIdfa(context);
                    deviceTypeEnum = DeviceTypeEnum.IDFA;
                    if (TextUtils.isEmpty(idfa)) {
                        String androidId = getAndroidId(context);
                        deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                        if (TextUtils.isEmpty(androidId)) {
                            String serialNo3 = getSerialNo();
                            deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                            if (TextUtils.isEmpty(serialNo3)) {
                                String macByJavaAPI2 = getMacByJavaAPI();
                                DeviceTypeEnum deviceTypeEnum3 = DeviceTypeEnum.MAC;
                                deviceTypeEnum = deviceTypeEnum3;
                                if (TextUtils.isEmpty(macByJavaAPI2)) {
                                    String macBySystemInterface2 = getMacBySystemInterface(context);
                                    deviceTypeEnum = deviceTypeEnum3;
                                    return macBySystemInterface2;
                                }
                                return macByJavaAPI2;
                            }
                            return serialNo3;
                        }
                        return androidId;
                    }
                    return idfa;
                }
                return oaid;
            } else {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61522i)) {
                    str = Settings.Secure.getString(context.getContentResolver(), "android_id");
                    deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                    if (AnalyticsConstants.UM_DEBUG) {
                        String str6 = LOG_TAG;
                        MLog.i(str6, "getDeviceId: ANDROID_ID: " + str);
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    String serialNo4 = getSerialNo();
                    deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                    if (TextUtils.isEmpty(serialNo4)) {
                        String imei3 = getIMEI(context);
                        deviceTypeEnum = DeviceTypeEnum.IMEI;
                        if (TextUtils.isEmpty(imei3)) {
                            String macByJavaAPI3 = getMacByJavaAPI();
                            DeviceTypeEnum deviceTypeEnum4 = DeviceTypeEnum.MAC;
                            deviceTypeEnum = deviceTypeEnum4;
                            if (TextUtils.isEmpty(macByJavaAPI3)) {
                                String macBySystemInterface3 = getMacBySystemInterface(context);
                                deviceTypeEnum = deviceTypeEnum4;
                                if (AnalyticsConstants.UM_DEBUG) {
                                    String str7 = LOG_TAG;
                                    MLog.i(str7, "getDeviceId, MAC: " + macBySystemInterface3);
                                    return macBySystemInterface3;
                                }
                                return macBySystemInterface3;
                            }
                            return macByJavaAPI3;
                        }
                        return imei3;
                    }
                    return serialNo4;
                }
                return str;
            }
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String getDeviceIdForGeneral(Context context) {
        if (context == null) {
            return "";
        }
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 23) {
                String imei = getIMEI(context);
                deviceTypeEnum = DeviceTypeEnum.IMEI;
                if (TextUtils.isEmpty(imei)) {
                    boolean z3 = AnalyticsConstants.UM_DEBUG;
                    if (z3) {
                        MLog.w(LOG_TAG, "No IMEI.");
                    }
                    String macBySystemInterface = getMacBySystemInterface(context);
                    deviceTypeEnum = DeviceTypeEnum.MAC;
                    if (TextUtils.isEmpty(macBySystemInterface)) {
                        if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61522i)) {
                            macBySystemInterface = Settings.Secure.getString(context.getContentResolver(), "android_id");
                            deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                            if (z3) {
                                String str = LOG_TAG;
                                MLog.i(str, "getDeviceId, ANDROID_ID: " + macBySystemInterface);
                            }
                        }
                        if (TextUtils.isEmpty(macBySystemInterface)) {
                            String serialNo = getSerialNo();
                            deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                            return serialNo;
                        }
                        return macBySystemInterface;
                    }
                    return macBySystemInterface;
                }
                return imei;
            } else if (i2 == 23) {
                String imei2 = getIMEI(context);
                deviceTypeEnum = DeviceTypeEnum.IMEI;
                if (TextUtils.isEmpty(imei2)) {
                    String macByJavaAPI = getMacByJavaAPI();
                    DeviceTypeEnum deviceTypeEnum2 = DeviceTypeEnum.MAC;
                    deviceTypeEnum = deviceTypeEnum2;
                    if (TextUtils.isEmpty(macByJavaAPI)) {
                        if (AnalyticsConstants.CHECK_DEVICE) {
                            macByJavaAPI = getMacShell();
                            deviceTypeEnum = deviceTypeEnum2;
                        } else {
                            macByJavaAPI = getMacBySystemInterface(context);
                            deviceTypeEnum = deviceTypeEnum2;
                        }
                    }
                    boolean z4 = AnalyticsConstants.UM_DEBUG;
                    if (z4) {
                        String str2 = LOG_TAG;
                        MLog.i(str2, "getDeviceId, MAC: " + macByJavaAPI);
                    }
                    if (TextUtils.isEmpty(macByJavaAPI)) {
                        if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61522i)) {
                            macByJavaAPI = Settings.Secure.getString(context.getContentResolver(), "android_id");
                            deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                            if (z4) {
                                String str3 = LOG_TAG;
                                MLog.i(str3, "getDeviceId, ANDROID_ID: " + macByJavaAPI);
                            }
                        }
                        if (TextUtils.isEmpty(macByJavaAPI)) {
                            String serialNo2 = getSerialNo();
                            deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                            return serialNo2;
                        }
                        return macByJavaAPI;
                    }
                    return macByJavaAPI;
                }
                return imei2;
            } else if (i2 >= 29) {
                String oaid = getOaid(context);
                deviceTypeEnum = DeviceTypeEnum.OAID;
                if (TextUtils.isEmpty(oaid)) {
                    String idfa = getIdfa(context);
                    deviceTypeEnum = DeviceTypeEnum.IDFA;
                    if (TextUtils.isEmpty(idfa)) {
                        String androidId = getAndroidId(context);
                        deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                        if (TextUtils.isEmpty(androidId)) {
                            String serialNo3 = getSerialNo();
                            deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                            if (TextUtils.isEmpty(serialNo3)) {
                                String macByJavaAPI2 = getMacByJavaAPI();
                                DeviceTypeEnum deviceTypeEnum3 = DeviceTypeEnum.MAC;
                                deviceTypeEnum = deviceTypeEnum3;
                                if (TextUtils.isEmpty(macByJavaAPI2)) {
                                    String macBySystemInterface2 = getMacBySystemInterface(context);
                                    deviceTypeEnum = deviceTypeEnum3;
                                    return macBySystemInterface2;
                                }
                                return macByJavaAPI2;
                            }
                            return serialNo3;
                        }
                        return androidId;
                    }
                    return idfa;
                }
                return oaid;
            } else {
                String imei3 = getIMEI(context);
                deviceTypeEnum = DeviceTypeEnum.IMEI;
                if (TextUtils.isEmpty(imei3)) {
                    String serialNo4 = getSerialNo();
                    deviceTypeEnum = DeviceTypeEnum.SERIALNO;
                    if (TextUtils.isEmpty(serialNo4)) {
                        if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61522i)) {
                            serialNo4 = Settings.Secure.getString(context.getContentResolver(), "android_id");
                            deviceTypeEnum = DeviceTypeEnum.ANDROIDID;
                            if (AnalyticsConstants.UM_DEBUG) {
                                String str4 = LOG_TAG;
                                MLog.i(str4, "getDeviceId, ANDROID_ID: " + serialNo4);
                            }
                        }
                        if (TextUtils.isEmpty(serialNo4)) {
                            String macByJavaAPI3 = getMacByJavaAPI();
                            DeviceTypeEnum deviceTypeEnum4 = DeviceTypeEnum.MAC;
                            deviceTypeEnum = deviceTypeEnum4;
                            if (TextUtils.isEmpty(macByJavaAPI3)) {
                                String macBySystemInterface3 = getMacBySystemInterface(context);
                                deviceTypeEnum = deviceTypeEnum4;
                                if (AnalyticsConstants.UM_DEBUG) {
                                    String str5 = LOG_TAG;
                                    MLog.i(str5, "getDeviceId, MAC: " + macBySystemInterface3);
                                    return macBySystemInterface3;
                                }
                                return macBySystemInterface3;
                            }
                            return macByJavaAPI3;
                        }
                        return serialNo4;
                    }
                    return serialNo4;
                }
                return imei3;
            }
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String getDeviceIdType() {
        return deviceTypeEnum.getDeviceIdType();
    }

    public static String getDeviceIdUmengMD5(Context context) {
        return HelperUtils.getUmengMD5(getDeviceId(context));
    }

    public static String getDeviceType(Context context) {
        if (context == null) {
            return "Phone";
        }
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? "Tablet" : "Phone";
        } catch (Throwable unused) {
            return "Phone";
        }
    }

    public static String getDisplayResolution(Context context) {
        if (context == null) {
            return "";
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                int i2 = displayMetrics.widthPixels;
                int i4 = displayMetrics.heightPixels;
                return String.valueOf(i4) + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + String.valueOf(i2);
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    private static String getEmuiVersion(Properties properties) {
        try {
            return properties.getProperty(KEY_EMUI_VERSION_CODE, null);
        } catch (Exception unused) {
            return null;
        }
    }

    private static String getFlymeVersion(Properties properties) {
        try {
            String lowerCase = properties.getProperty("ro.build.display.id").toLowerCase(Locale.getDefault());
            if (lowerCase.contains("flyme os")) {
                return lowerCase.split(" ")[2];
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String[] getGPU(GL10 gl10) {
        try {
            return new String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.e(LOG_TAG, "Could not read gpu infor:", th);
            }
            return new String[0];
        }
    }

    public static Activity getGlobleActivity(Context context) {
        Activity activity = null;
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
                    activity = (Activity) declaredField3.get(obj);
                }
            }
        } catch (Throwable unused) {
        }
        return activity;
    }

    private static String getIMEI(Context context) {
        Throwable th;
        String str;
        if (!TextUtils.isEmpty(sImei)) {
            return sImei;
        }
        String str2 = "";
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61520g)) {
            if (context == null) {
                return "";
            }
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                try {
                } catch (Throwable th2) {
                    th = th2;
                    str = "";
                }
                if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                    str = telephonyManager.getDeviceId();
                    try {
                        if (AnalyticsConstants.UM_DEBUG) {
                            String str3 = LOG_TAG;
                            MLog.i(str3, "getDeviceId, IMEI: " + str);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (AnalyticsConstants.UM_DEBUG) {
                            MLog.w(LOG_TAG, "No IMEI.", th);
                        }
                        str2 = str;
                        sImei = str2;
                        return str2;
                    }
                    str2 = str;
                }
            }
        }
        sImei = str2;
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014 A[Catch: SocketException -> 0x0069, TryCatch #0 {SocketException -> 0x0069, blocks: (B:5:0x000e, B:7:0x0014, B:8:0x0026, B:10:0x002c, B:13:0x003a, B:15:0x003e, B:18:0x004a, B:19:0x004e, B:21:0x0054, B:23:0x0058, B:26:0x0064), top: B:36:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getIPAddress(android.content.Context r7) {
        /*
            r7 = 0
            java.util.Enumeration r0 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.net.SocketException -> L6a
            java.util.ArrayList r0 = java.util.Collections.list(r0)     // Catch: java.net.SocketException -> L6a
            java.util.Iterator r0 = r0.iterator()     // Catch: java.net.SocketException -> L6a
            r1 = r7
        Le:
            boolean r2 = r0.hasNext()     // Catch: java.net.SocketException -> L69
            if (r2 == 0) goto L6e
            java.lang.Object r2 = r0.next()     // Catch: java.net.SocketException -> L69
            java.net.NetworkInterface r2 = (java.net.NetworkInterface) r2     // Catch: java.net.SocketException -> L69
            java.util.Enumeration r3 = r2.getInetAddresses()     // Catch: java.net.SocketException -> L69
            java.util.ArrayList r3 = java.util.Collections.list(r3)     // Catch: java.net.SocketException -> L69
            java.util.Iterator r3 = r3.iterator()     // Catch: java.net.SocketException -> L69
        L26:
            boolean r4 = r3.hasNext()     // Catch: java.net.SocketException -> L69
            if (r4 == 0) goto Le
            java.lang.Object r4 = r3.next()     // Catch: java.net.SocketException -> L69
            java.net.InetAddress r4 = (java.net.InetAddress) r4     // Catch: java.net.SocketException -> L69
            boolean r5 = r4.isLoopbackAddress()     // Catch: java.net.SocketException -> L69
            java.lang.String r6 = "dummy"
            if (r5 != 0) goto L4e
            boolean r5 = r4 instanceof java.net.Inet4Address     // Catch: java.net.SocketException -> L69
            if (r5 == 0) goto L4e
            java.lang.String r5 = r2.getDisplayName()     // Catch: java.net.SocketException -> L69
            boolean r5 = r5.contains(r6)     // Catch: java.net.SocketException -> L69
            if (r5 != 0) goto L4e
            if (r7 != 0) goto L4e
            java.lang.String r7 = r4.getHostAddress()     // Catch: java.net.SocketException -> L69
        L4e:
            boolean r5 = r4.isLoopbackAddress()     // Catch: java.net.SocketException -> L69
            if (r5 != 0) goto L26
            boolean r5 = r4 instanceof java.net.Inet6Address     // Catch: java.net.SocketException -> L69
            if (r5 == 0) goto L26
            java.lang.String r5 = r2.getDisplayName()     // Catch: java.net.SocketException -> L69
            boolean r5 = r5.contains(r6)     // Catch: java.net.SocketException -> L69
            if (r5 != 0) goto L26
            if (r1 != 0) goto L26
            java.lang.String r1 = r4.getHostAddress()     // Catch: java.net.SocketException -> L69
            goto L26
        L69:
            r7 = r1
        L6a:
            java.lang.String r0 = "SocketException"
            r1 = r7
            r7 = r0
        L6e:
            if (r7 == 0) goto L71
            return r7
        L71:
            if (r1 != 0) goto L75
            java.lang.String r1 = "null"
        L75:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getIPAddress(android.content.Context):java.lang.String");
    }

    private static String getIdfa(Context context) {
        try {
            return FieldManager.allow(com.umeng.commonsdk.utils.b.f61536w) ? a.a(context) : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String getImei(Context context) {
        TelephonyManager telephonyManager;
        if (!TextUtils.isEmpty(sImei)) {
            return sImei;
        }
        String str = null;
        try {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61520g) && context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null && checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                str = telephonyManager.getDeviceId();
            }
        } catch (Exception e4) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.w("No IMEI.", e4);
            }
        }
        sImei = str;
        return str;
    }

    public static String getImeiNew(Context context) {
        TelephonyManager telephonyManager;
        if (!TextUtils.isEmpty(sImei)) {
            return sImei;
        }
        String str = null;
        try {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61520g) && context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null && checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                if (Build.VERSION.SDK_INT >= 26) {
                    try {
                        Method method = telephonyManager.getClass().getMethod("getImei", new Class[0]);
                        method.setAccessible(true);
                        str = (String) method.invoke(telephonyManager, new Object[0]);
                    } catch (Exception unused) {
                    }
                    if (TextUtils.isEmpty(str)) {
                        str = telephonyManager.getDeviceId();
                    }
                } else {
                    str = telephonyManager.getDeviceId();
                }
            }
        } catch (Exception e4) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.w("No IMEI.", e4);
            }
        }
        sImei = str;
        return str;
    }

    public static String getImsi(Context context) {
        if (TextUtils.isEmpty(sImsi)) {
            String str = null;
            if (context == null) {
                return null;
            }
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.ai)) {
                try {
                    if (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) {
                        str = telephonyManager.getSubscriberId();
                    }
                } catch (Throwable unused) {
                }
            }
            sImsi = str;
            return str;
        }
        return sImsi;
    }

    private static Locale getLocale(Context context) {
        Locale locale;
        if (context == null) {
            return Locale.getDefault();
        }
        try {
            Configuration configuration = new Configuration();
            configuration.setToDefaults();
            Settings.System.getConfiguration(context.getContentResolver(), configuration);
            locale = configuration.locale;
        } catch (Throwable unused) {
            MLog.e(LOG_TAG, "fail to read user config locale");
            locale = null;
        }
        return locale == null ? Locale.getDefault() : locale;
    }

    public static String[] getLocaleInfo(Context context) {
        String[] strArr = {"Unknown", "Unknown"};
        if (context == null) {
            return strArr;
        }
        try {
            Locale locale = getLocale(context);
            if (locale != null) {
                strArr[0] = locale.getCountry();
                strArr[1] = locale.getLanguage();
            }
            if (TextUtils.isEmpty(strArr[0])) {
                strArr[0] = "Unknown";
            }
            if (TextUtils.isEmpty(strArr[1])) {
                strArr[1] = "Unknown";
            }
            return strArr;
        } catch (Throwable th) {
            MLog.e(LOG_TAG, "error in getLocaleInfo", th);
            return strArr;
        }
    }

    public static String getMCCMNC(Context context) {
        if (context == null) {
            return null;
        }
        if (getImsi(context) == null) {
            return null;
        }
        int i2 = context.getResources().getConfiguration().mcc;
        int i4 = context.getResources().getConfiguration().mnc;
        if (i2 != 0) {
            String valueOf = String.valueOf(i4);
            if (i4 < 10) {
                valueOf = String.format(TimeModel.f16203h, Integer.valueOf(i4));
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(String.valueOf(i2));
            stringBuffer.append(valueOf);
            return stringBuffer.toString();
        }
        return null;
    }

    public static String getMac(Context context) {
        if (!TextUtils.isEmpty(sWifiMac)) {
            return sWifiMac;
        }
        String str = "";
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61521h)) {
            if (context == null) {
                return "";
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 23) {
                str = getMacBySystemInterface(context);
            } else if (i2 == 23) {
                str = getMacByJavaAPI();
                if (TextUtils.isEmpty(str)) {
                    if (AnalyticsConstants.CHECK_DEVICE) {
                        str = getMacShell();
                    } else {
                        str = getMacBySystemInterface(context);
                    }
                }
            } else {
                str = getMacByJavaAPI();
                if (TextUtils.isEmpty(str)) {
                    str = getMacBySystemInterface(context);
                }
            }
        }
        sWifiMac = str;
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0013 A[Catch: all -> 0x0076, TryCatch #0 {all -> 0x0076, blocks: (B:3:0x0001, B:5:0x0009, B:6:0x000d, B:8:0x0013, B:10:0x0025, B:12:0x0031, B:14:0x0037, B:17:0x003b, B:20:0x0046, B:21:0x005c, B:23:0x0062, B:24:0x006a), top: B:27:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getMacByJavaAPI() {
        /*
            r0 = 0
            java.lang.String r1 = "header_device_id_mac"
            boolean r1 = com.umeng.commonsdk.config.FieldManager.allow(r1)     // Catch: java.lang.Throwable -> L76
            if (r1 == 0) goto L76
            java.util.Enumeration r1 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.lang.Throwable -> L76
        Ld:
            boolean r2 = r1.hasMoreElements()     // Catch: java.lang.Throwable -> L76
            if (r2 == 0) goto L76
            java.lang.Object r2 = r1.nextElement()     // Catch: java.lang.Throwable -> L76
            java.net.NetworkInterface r2 = (java.net.NetworkInterface) r2     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = "wlan0"
            java.lang.String r4 = r2.getName()     // Catch: java.lang.Throwable -> L76
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L76
            if (r3 != 0) goto L31
            java.lang.String r3 = "eth0"
            java.lang.String r4 = r2.getName()     // Catch: java.lang.Throwable -> L76
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L76
            if (r3 == 0) goto Ld
        L31:
            byte[] r1 = r2.getHardwareAddress()     // Catch: java.lang.Throwable -> L76
            if (r1 == 0) goto L76
            int r2 = r1.length     // Catch: java.lang.Throwable -> L76
            if (r2 != 0) goto L3b
            goto L76
        L3b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L76
            r2.<init>()     // Catch: java.lang.Throwable -> L76
            int r3 = r1.length     // Catch: java.lang.Throwable -> L76
            r4 = 0
            r5 = 0
        L43:
            r6 = 1
            if (r5 >= r3) goto L5c
            r7 = r1[r5]     // Catch: java.lang.Throwable -> L76
            java.lang.String r8 = "%02X:"
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L76
            java.lang.Byte r7 = java.lang.Byte.valueOf(r7)     // Catch: java.lang.Throwable -> L76
            r6[r4] = r7     // Catch: java.lang.Throwable -> L76
            java.lang.String r6 = java.lang.String.format(r8, r6)     // Catch: java.lang.Throwable -> L76
            r2.append(r6)     // Catch: java.lang.Throwable -> L76
            int r5 = r5 + 1
            goto L43
        L5c:
            int r1 = r2.length()     // Catch: java.lang.Throwable -> L76
            if (r1 <= 0) goto L6a
            int r1 = r2.length()     // Catch: java.lang.Throwable -> L76
            int r1 = r1 - r6
            r2.deleteCharAt(r1)     // Catch: java.lang.Throwable -> L76
        L6a:
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Throwable -> L76
            java.util.Locale r2 = java.util.Locale.getDefault()     // Catch: java.lang.Throwable -> L76
            java.lang.String r0 = r1.toLowerCase(r2)     // Catch: java.lang.Throwable -> L76
        L76:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getMacByJavaAPI():java.lang.String");
    }

    private static String getMacBySystemInterface(Context context) {
        if (context == null) {
            return "";
        }
        try {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61521h)) {
                WifiManager wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
                if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                    return wifiManager != null ? wifiManager.getConnectionInfo().getMacAddress() : "";
                } else if (AnalyticsConstants.UM_DEBUG) {
                    MLog.w(LOG_TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
                }
            }
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                String str = LOG_TAG;
                MLog.w(str, "Could not get mac address." + th.toString());
            }
            return "";
        }
    }

    private static String getMacShell() {
        try {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61521h)) {
                String[] strArr = {"/sys/class/net/wlan0/address", "/sys/class/net/eth0/address", "/sys/devices/virtual/net/wlan0/address"};
                for (int i2 = 0; i2 < 3; i2++) {
                    String reaMac = reaMac(strArr[i2]);
                    if (reaMac != null) {
                        return reaMac;
                    }
                }
                return null;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getMeid(Context context) {
        String str = null;
        if (context == null || ((TelephonyManager) context.getSystemService("phone")) == null) {
            return null;
        }
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.aj)) {
            try {
                if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                    if (Build.VERSION.SDK_INT < 26) {
                        str = getIMEI(context);
                    } else {
                        str = meid(context);
                        if (TextUtils.isEmpty(str)) {
                            str = getIMEI(context);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return str;
    }

    public static String[] getNetworkAccessMode(Context context) {
        String[] strArr = {"", ""};
        if (context == null) {
            return strArr;
        }
        if (!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            strArr[0] = "";
            return strArr;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            strArr[0] = "";
            return strArr;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "Wi-Fi";
            return strArr;
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "2G/3G";
            strArr[1] = networkInfo2.getSubtypeName();
        }
        return strArr;
    }

    public static String getNetworkOperatorName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) {
                return telephonyManager.getNetworkOperatorName();
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static int getNetworkType(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                return telephonyManager.getNetworkType();
            }
            return 0;
        } catch (Exception unused) {
            return -100;
        }
    }

    public static String getOaid(Context context) {
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(i.f61371a, 0);
                return sharedPreferences != null ? sharedPreferences.getString(i.f61372b, "") : "";
            } catch (Throwable unused) {
                return "";
            }
        }
        return "";
    }

    public static String getPackageName(Context context) {
        if (context == null) {
            return null;
        }
        return context.getPackageName();
    }

    public static String getRegisteredOperator(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (!checkPermission(context, "android.permission.READ_PHONE_STATE") || telephonyManager == null) {
                return null;
            }
            return telephonyManager.getNetworkOperator();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int[] getResolutionArray(Context context) {
        int i2;
        int i4;
        if (context == null) {
            return null;
        }
        int[] iArr = new int[2];
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            if (Build.VERSION.SDK_INT >= 17) {
                Display defaultDisplay = windowManager.getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                try {
                    Method method = Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class);
                    if (method != null) {
                        method.invoke(defaultDisplay, displayMetrics);
                        int i5 = displayMetrics.widthPixels;
                        int i6 = displayMetrics.heightPixels;
                        if (i5 > i6) {
                            iArr[0] = i6;
                            iArr[1] = i5;
                        } else {
                            iArr[0] = i5;
                            iArr[1] = i6;
                        }
                        iArr[0] = i5;
                        iArr[1] = i6;
                        return iArr;
                    }
                } catch (Throwable unused) {
                    return null;
                }
            } else {
                try {
                    DisplayMetrics displayMetrics2 = new DisplayMetrics();
                    windowManager.getDefaultDisplay().getMetrics(displayMetrics2);
                    if ((context.getApplicationInfo().flags & 8192) == 0) {
                        i2 = reflectMetrics(displayMetrics2, "noncompatWidthPixels");
                        i4 = reflectMetrics(displayMetrics2, "noncompatHeightPixels");
                    } else {
                        i2 = -1;
                        i4 = -1;
                    }
                    if (i2 == -1 || i4 == -1) {
                        i2 = displayMetrics2.widthPixels;
                        i4 = displayMetrics2.heightPixels;
                    }
                    if (i2 > i4) {
                        iArr[0] = i4;
                        iArr[1] = i2;
                    } else {
                        iArr[0] = i2;
                        iArr[1] = i4;
                    }
                    return iArr;
                } catch (Throwable unused2) {
                }
            }
        }
        return null;
    }

    public static String getSecondSimIMEi(Context context) {
        if (context == null || !FieldManager.allow(com.umeng.commonsdk.utils.b.al) || Build.VERSION.SDK_INT < 23 || !UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return null;
            }
            Class<?> cls = telephonyManager.getClass();
            if (((Integer) cls.getMethod("getPhoneCount", new Class[0]).invoke(telephonyManager, new Object[0])).intValue() == 2) {
                return (String) cls.getMethod("getDeviceId", Integer.TYPE).invoke(telephonyManager, 2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getSerial() {
        int i2;
        if (!FieldManager.allow(com.umeng.commonsdk.utils.b.f61523j) || (i2 = Build.VERSION.SDK_INT) < 9) {
            return null;
        }
        if (i2 >= 26) {
            try {
                Class<?> cls = Class.forName("android.os.Build");
                return (String) cls.getMethod("getSerial", new Class[0]).invoke(cls, new Object[0]);
            } catch (Throwable unused) {
                return null;
            }
        }
        return Build.SERIAL;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getSerialNo() {
        /*
            java.lang.String r0 = "header_device_id_serialNo"
            boolean r0 = com.umeng.commonsdk.config.FieldManager.allow(r0)
            r1 = 0
            if (r0 == 0) goto L2d
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 9
            if (r0 < r2) goto L2d
            r2 = 26
            if (r0 < r2) goto L2a
            java.lang.String r0 = "android.os.Build"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L2d
            java.lang.String r2 = "getSerial"
            java.lang.Class[] r3 = new java.lang.Class[r1]     // Catch: java.lang.Throwable -> L2d
            java.lang.reflect.Method r2 = r0.getMethod(r2, r3)     // Catch: java.lang.Throwable -> L2d
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r0 = r2.invoke(r0, r3)     // Catch: java.lang.Throwable -> L2d
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L2d
            goto L2f
        L2a:
            java.lang.String r0 = android.os.Build.SERIAL
            goto L2f
        L2d:
            java.lang.String r0 = ""
        L2f:
            boolean r2 = com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG
            if (r2 == 0) goto L4e
            java.lang.String r2 = com.umeng.commonsdk.statistics.common.DeviceConfig.LOG_TAG
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "getDeviceId, serial no: "
            r4.append(r5)
            r4.append(r0)
            java.lang.String r4 = r4.toString()
            r3[r1] = r4
            com.umeng.commonsdk.statistics.common.MLog.i(r2, r3)
        L4e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getSerialNo():java.lang.String");
    }

    public static String getSimICCID(Context context) {
        TelephonyManager telephonyManager;
        if (!FieldManager.allow(com.umeng.commonsdk.utils.b.am) || context == null) {
            return null;
        }
        try {
            if (!UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE") || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
                return null;
            }
            return telephonyManager.getSimSerialNumber();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getSubOSName(Context context) {
        Properties buildProp = getBuildProp();
        try {
            String property = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
            return TextUtils.isEmpty(property) ? isFlyMe() ? "Flyme" : isEmui(buildProp) ? "Emui" : !TextUtils.isEmpty(getYunOSVersion(buildProp)) ? "YunOS" : property : "MIUI";
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getSubOSVersion(Context context) {
        Properties buildProp = getBuildProp();
        try {
            String property = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
            if (TextUtils.isEmpty(property)) {
                try {
                    if (isFlyMe()) {
                        property = getFlymeVersion(buildProp);
                    } else if (isEmui(buildProp)) {
                        property = getEmuiVersion(buildProp);
                    } else {
                        property = getYunOSVersion(buildProp);
                    }
                    return property;
                } catch (Throwable unused) {
                    return property;
                }
            }
            return property;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static int getTimeZone(Context context) {
        if (context == null) {
            return 8;
        }
        try {
            Calendar calendar = Calendar.getInstance(getLocale(context));
            if (calendar != null) {
                return calendar.getTimeZone().getRawOffset() / BaseConstants.Time.HOUR;
            }
        } catch (Throwable th) {
            MLog.i(LOG_TAG, "error in getTimeZone", th);
        }
        return 8;
    }

    private static String getYunOSVersion(Properties properties) {
        try {
            String property = properties.getProperty("ro.yunos.version");
            if (TextUtils.isEmpty(property)) {
                return null;
            }
            return property;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean isChineseAera(Context context) {
        String imprintProperty;
        if (context == null) {
            return false;
        }
        try {
            imprintProperty = UMEnvelopeBuild.imprintProperty(context, ai.O, "");
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(imprintProperty)) {
            return imprintProperty.equals("cn");
        }
        if (getImsi(context) == null) {
            String str = getLocaleInfo(context)[0];
            if (!TextUtils.isEmpty(str) && str.equalsIgnoreCase("cn")) {
                return true;
            }
        } else {
            int i2 = context.getResources().getConfiguration().mcc;
            if (i2 != 460 && i2 != 461) {
                if (i2 == 0) {
                    String str2 = getLocaleInfo(context)[0];
                    if (TextUtils.isEmpty(str2) || !str2.equalsIgnoreCase("cn")) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    private static boolean isEmui(Properties properties) {
        return properties.getProperty(KEY_EMUI_VERSION_CODE, null) != null;
    }

    private static boolean isFlyMe() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isOnline(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        try {
            if (checkPermission(context, "android.permission.ACCESS_NETWORK_STATE") && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                return activeNetworkInfo.isConnectedOrConnecting();
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean isWiFiAvailable(Context context) {
        if (context == null) {
            return false;
        }
        return "Wi-Fi".equals(getNetworkAccessMode(context)[0]);
    }

    private static String meid(Context context) {
        if (TextUtils.isEmpty(sMeid)) {
            return sMeid;
        }
        String str = null;
        if (context == null) {
            return null;
        }
        try {
            Object invoke = Class.forName("android.telephony.TelephonyManager").getMethod("getMeid", new Class[0]).invoke(null, new Object[0]);
            if (invoke != null && (invoke instanceof String)) {
                str = (String) invoke;
            }
        } catch (Throwable th) {
            ULog.e("meid:" + th.getMessage());
        }
        sMeid = str;
        return str;
    }

    private static String reaMac(String str) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        String str2 = null;
        try {
            fileReader = new FileReader(str);
        } catch (Throwable unused) {
        }
        try {
            bufferedReader = new BufferedReader(fileReader, 1024);
            try {
                str2 = bufferedReader.readLine();
                try {
                    fileReader.close();
                } catch (Throwable unused2) {
                }
                bufferedReader.close();
                return str2;
            } catch (Throwable th) {
                th = th;
                try {
                    fileReader.close();
                } catch (Throwable unused3) {
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
    }

    private static int reflectMetrics(Object obj, String str) {
        try {
            Field declaredField = DisplayMetrics.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.getInt(obj);
        } catch (Throwable unused) {
            return -1;
        }
    }
}
