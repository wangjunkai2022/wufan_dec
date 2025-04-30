package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.i;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Map;
/* loaded from: classes4.dex */
public class AnalyticsConfig {
    public static boolean CATCH_EXCEPTION = false;
    public static boolean CHANGE_CATCH_EXCEPTION_NOTALLOW = true;
    public static boolean CLEAR_EKV_BL = false;
    public static boolean CLEAR_EKV_WL = false;
    public static final String DEBUG_KEY = "debugkey";
    public static final String DEBUG_MODE_PERIOD = "sendaging";
    public static String GPU_RENDERER = "";
    public static String GPU_VENDER = "";
    public static final String RTD_PERIOD = "period";
    public static final String RTD_SP_FILE = "um_rtd_conf";
    public static final String RTD_START_TIME = "startTime";

    /* renamed from: a  reason: collision with root package name */
    static double[] f60320a = null;

    /* renamed from: b  reason: collision with root package name */
    private static String f60321b = null;

    /* renamed from: c  reason: collision with root package name */
    private static String f60322c = null;

    /* renamed from: d  reason: collision with root package name */
    private static String f60323d = null;

    /* renamed from: e  reason: collision with root package name */
    private static int f60324e = 0;
    public static boolean enable = true;

    /* renamed from: f  reason: collision with root package name */
    private static Object f60325f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f60326g = false;

    /* renamed from: h  reason: collision with root package name */
    private static String f60327h = "";
    public static long kContinueSessionMillis = 30000;
    public static String mWrapperType;
    public static String mWrapperVersion;

    static void a(String str) {
        f60322c = str;
    }

    public static String getAppkey(Context context) {
        return UMUtils.getAppkey(context);
    }

    public static String getChannel(Context context) {
        return UMUtils.getChannel(context);
    }

    public static String getGameSdkVersion(Context context) {
        try {
            Class<?> cls = Class.forName("com.umeng.analytics.game.GameSdkVersion");
            return (String) cls.getDeclaredField("SDK_VERSION").get(cls);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static double[] getLocation() {
        return f60320a;
    }

    public static String getRealTimeDebugKey() {
        String str;
        synchronized (f60325f) {
            str = f60327h;
        }
        return str;
    }

    public static String getSecretKey(Context context) {
        if (TextUtils.isEmpty(f60323d)) {
            f60323d = com.umeng.common.b.a(context).c();
        }
        return f60323d;
    }

    public static int getVerticalType(Context context) {
        if (f60324e == 0) {
            f60324e = com.umeng.common.b.a(context).d();
        }
        return f60324e;
    }

    public static boolean isRealTimeDebugMode() {
        boolean z3;
        synchronized (f60325f) {
            z3 = f60326g;
        }
        return z3;
    }

    public static void turnOffRealTimeDebug() {
        synchronized (f60325f) {
            f60326g = false;
            f60327h = "";
        }
    }

    public static void turnOnRealTimeDebug(Map<String, String> map) {
        synchronized (f60325f) {
            f60326g = true;
            if (map != null && map.containsKey(DEBUG_KEY)) {
                f60327h = map.get(DEBUG_KEY);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            f60323d = str;
            com.umeng.common.b.a(context).a(f60323d);
            return;
        }
        UMLog.aq(i.A, 0, "\\|");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, int i2) {
        f60324e = i2;
        com.umeng.common.b.a(context).a(f60324e);
    }
}
