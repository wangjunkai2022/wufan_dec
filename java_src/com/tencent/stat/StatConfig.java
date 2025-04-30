package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatConstants;
import com.tencent.stat.common.StatLogger;
import com.umeng.analytics.pro.ai;
import java.util.Iterator;
import org.apache.http.HttpHost;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class StatConfig {

    /* renamed from: n  reason: collision with root package name */
    private static String f59949n;

    /* renamed from: o  reason: collision with root package name */
    private static String f59950o;

    /* renamed from: e  reason: collision with root package name */
    private static StatLogger f59940e = com.tencent.stat.common.k.b();

    /* renamed from: a  reason: collision with root package name */
    static b f59936a = new b(2);

    /* renamed from: b  reason: collision with root package name */
    static b f59937b = new b(1);

    /* renamed from: f  reason: collision with root package name */
    private static StatReportStrategy f59941f = StatReportStrategy.APP_LAUNCH;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f59942g = true;

    /* renamed from: h  reason: collision with root package name */
    private static int f59943h = com.facebook.imagepipeline.producers.s.f13217g;

    /* renamed from: i  reason: collision with root package name */
    private static int f59944i = 1024;

    /* renamed from: j  reason: collision with root package name */
    private static int f59945j = 30;

    /* renamed from: k  reason: collision with root package name */
    private static int f59946k = 3;

    /* renamed from: l  reason: collision with root package name */
    private static int f59947l = 30;

    /* renamed from: c  reason: collision with root package name */
    static String f59938c = "__HIBERNATE__";

    /* renamed from: m  reason: collision with root package name */
    private static String f59948m = null;

    /* renamed from: d  reason: collision with root package name */
    static String f59939d = "";

    /* renamed from: p  reason: collision with root package name */
    private static int f59951p = 1440;

    /* renamed from: q  reason: collision with root package name */
    private static int f59952q = 1024;

    /* renamed from: r  reason: collision with root package name */
    private static boolean f59953r = true;

    /* renamed from: s  reason: collision with root package name */
    private static long f59954s = 0;

    /* renamed from: t  reason: collision with root package name */
    private static long f59955t = q.a.f73955b;
    public static boolean isAutoExceptionCaught = true;

    /* renamed from: u  reason: collision with root package name */
    private static String f59956u = "http://pingma.qq.com:80/mstat/report";

    /* renamed from: v  reason: collision with root package name */
    private static int f59957v = 0;

    /* renamed from: w  reason: collision with root package name */
    private static volatile int f59958w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static int f59959x = 20;

    /* renamed from: y  reason: collision with root package name */
    private static int f59960y = 0;

    /* renamed from: z  reason: collision with root package name */
    private static boolean f59961z = false;
    private static int A = 4096;
    private static boolean B = false;
    private static String C = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a() {
        return f59945j;
    }

    static String a(Context context) {
        return com.tencent.stat.common.k.d(com.tencent.stat.common.p.a(context, "_mta_ky_tag_", (String) null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2) {
        String string;
        try {
            string = f59937b.f60035b.getString(str);
        } catch (Throwable th) {
            f59940e.w(th);
        }
        return string != null ? string : str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a(int i2) {
        synchronized (StatConfig.class) {
            f59958w = i2;
        }
    }

    static void a(Context context, String str) {
        if (str != null) {
            com.tencent.stat.common.p.b(context, "_mta_ky_tag_", com.tencent.stat.common.k.c(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(b bVar) {
        int i2 = bVar.f60034a;
        if (i2 == f59937b.f60034a) {
            f59937b = bVar;
            b(bVar.f60035b);
        } else if (i2 == f59936a.f60034a) {
            f59936a = bVar;
        }
    }

    static void a(b bVar, JSONObject jSONObject) {
        boolean z3 = false;
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next.equalsIgnoreCase("v")) {
                    int i2 = jSONObject.getInt(next);
                    if (bVar.f60037d != i2) {
                        z3 = true;
                    }
                    bVar.f60037d = i2;
                } else if (next.equalsIgnoreCase(ai.aD)) {
                    String string = jSONObject.getString(ai.aD);
                    if (string.length() > 0) {
                        bVar.f60035b = new JSONObject(string);
                    }
                } else if (next.equalsIgnoreCase("m")) {
                    bVar.f60036c = jSONObject.getString("m");
                }
            }
            if (z3) {
                n a4 = n.a(d.a());
                if (a4 != null) {
                    a4.a(bVar);
                }
                if (bVar.f60034a == f59937b.f60034a) {
                    b(bVar.f60035b);
                    c(bVar.f60035b);
                }
            }
        } catch (JSONException e4) {
            f59940e.e((Exception) e4);
        } catch (Throwable th) {
            f59940e.e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(JSONObject jSONObject) {
        JSONObject jSONObject2;
        b bVar;
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next.equalsIgnoreCase(Integer.toString(f59937b.f60034a))) {
                    jSONObject2 = jSONObject.getJSONObject(next);
                    bVar = f59937b;
                } else if (next.equalsIgnoreCase(Integer.toString(f59936a.f60034a))) {
                    jSONObject2 = jSONObject.getJSONObject(next);
                    bVar = f59936a;
                } else if (!next.equalsIgnoreCase("rs")) {
                    return;
                } else {
                    StatReportStrategy statReportStrategy = StatReportStrategy.getStatReportStrategy(jSONObject.getInt(next));
                    if (statReportStrategy != null) {
                        f59941f = statReportStrategy;
                        StatLogger statLogger = f59940e;
                        statLogger.d("Change to ReportStrategy:" + statReportStrategy.name());
                    }
                }
                a(bVar, jSONObject2);
            }
        } catch (JSONException e4) {
            f59940e.e((Exception) e4);
        }
    }

    static void a(boolean z3) {
        StatNativeCrashReport.setNativeCrashDebugEnable(z3);
    }

    static boolean a(int i2, int i4, int i5) {
        return i2 >= i4 && i2 <= i5;
    }

    private static boolean a(String str) {
        if (str == null) {
            return false;
        }
        String str2 = f59949n;
        if (str2 == null) {
            f59949n = str;
            return true;
        } else if (str2.contains(str)) {
            return false;
        } else {
            f59949n += "|" + str;
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HttpHost b() {
        String str = f59948m;
        if (str == null || str.length() <= 0) {
            return null;
        }
        String str2 = f59948m;
        String[] split = str2.split(":");
        int i2 = 80;
        if (split.length == 2) {
            str2 = split[0];
            i2 = Integer.parseInt(split[1]);
        }
        return new HttpHost(str2, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(int i2) {
        if (i2 < 0) {
            return;
        }
        f59960y = i2;
    }

    static void b(JSONObject jSONObject) {
        try {
            StatReportStrategy statReportStrategy = StatReportStrategy.getStatReportStrategy(jSONObject.getInt("rs"));
            if (statReportStrategy != null) {
                setStatSendStrategy(statReportStrategy);
            }
        } catch (JSONException unused) {
            f59940e.d("rs not found.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void c() {
        synchronized (StatConfig.class) {
            f59958w++;
        }
    }

    static void c(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString(f59938c);
            StatLogger statLogger = f59940e;
            statLogger.d("hibernateVer:" + string + ", current version:" + StatConstants.VERSION);
            long b4 = com.tencent.stat.common.k.b(string);
            if (com.tencent.stat.common.k.b(StatConstants.VERSION) <= b4) {
                com.tencent.stat.common.p.b(d.a(), f59938c, b4);
                setEnableStatService(false);
                StatLogger statLogger2 = f59940e;
                statLogger2.warn("MTA has disable for SDK version of " + string + " or lower.");
            }
        } catch (JSONException unused) {
            f59940e.d("__HIBERNATE__ not found.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d() {
        f59960y++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e() {
        return f59960y;
    }

    public static synchronized String getAppKey(Context context) {
        synchronized (StatConfig.class) {
            String str = f59949n;
            if (str != null) {
                return str;
            }
            if (context != null && str == null) {
                f59949n = com.tencent.stat.common.k.i(context);
            }
            String str2 = f59949n;
            if (str2 == null || str2.trim().length() == 0) {
                f59940e.error("AppKey can not be null or empty, please read Developer's Guide first!");
            }
            return f59949n;
        }
    }

    public static int getCurSessionStatReportCount() {
        return f59958w;
    }

    public static String getCustomProperty(String str) {
        try {
            return f59936a.f60035b.getString(str);
        } catch (Throwable th) {
            f59940e.e(th);
            return null;
        }
    }

    public static String getCustomProperty(String str, String str2) {
        String string;
        try {
            string = f59936a.f60035b.getString(str);
        } catch (Throwable th) {
            f59940e.e(th);
        }
        return string != null ? string : str2;
    }

    public static String getCustomUserId(Context context) {
        if (context == null) {
            f59940e.error("Context for getCustomUid is null.");
            return null;
        }
        if (C == null) {
            C = com.tencent.stat.common.p.a(context, "MTA_CUSTOM_UID", "");
        }
        return C;
    }

    public static DeviceInfo getDeviceInfo(Context context) {
        return StatMid.getDeviceInfo(context);
    }

    public static synchronized String getInstallChannel(Context context) {
        synchronized (StatConfig.class) {
            String str = f59950o;
            if (str != null) {
                return str;
            }
            String j4 = com.tencent.stat.common.k.j(context);
            f59950o = j4;
            if (j4 == null || j4.trim().length() == 0) {
                f59940e.w("installChannel can not be null or empty, please read Developer's Guide first!");
            }
            return f59950o;
        }
    }

    public static int getMaxBatchReportCount() {
        return f59947l;
    }

    public static int getMaxDaySessionNumbers() {
        return f59959x;
    }

    public static int getMaxParallelTimmingEvents() {
        return f59952q;
    }

    public static int getMaxReportEventLength() {
        return A;
    }

    public static int getMaxSendRetryCount() {
        return f59946k;
    }

    public static int getMaxSessionStatReportCount() {
        return f59957v;
    }

    public static int getMaxStoreEventCount() {
        return f59944i;
    }

    public static String getMid(Context context) {
        return StatMid.getMid(context);
    }

    public static String getQQ() {
        return f59939d;
    }

    public static int getSendPeriodMinutes() {
        return f59951p;
    }

    public static int getSessionTimoutMillis() {
        return f59943h;
    }

    public static String getStatReportUrl() {
        return f59956u;
    }

    public static StatReportStrategy getStatSendStrategy() {
        return f59941f;
    }

    public static void initNativeCrashReport(Context context, String str) {
        if (isEnableStatService()) {
            if (context == null) {
                f59940e.error("The Context of StatConfig.initNativeCrashReport() can not be null!");
            } else {
                StatNativeCrashReport.initNativeCrash(context, str);
            }
        }
    }

    public static boolean isAutoExceptionCaught() {
        return isAutoExceptionCaught;
    }

    public static boolean isDebugEnable() {
        return com.tencent.stat.common.k.b().isDebugEnable();
    }

    public static boolean isEnableConcurrentProcess() {
        return B;
    }

    public static boolean isEnableSmartReporting() {
        return f59953r;
    }

    public static boolean isEnableStatService() {
        return f59942g;
    }

    public static void setAppKey(Context context, String str) {
        StatLogger statLogger;
        String str2;
        if (context == null) {
            statLogger = f59940e;
            str2 = "ctx in StatConfig.setAppKey() is null";
        } else if (str != null && str.length() <= 256) {
            if (f59949n == null) {
                f59949n = a(context);
            }
            if (a(str) || a(com.tencent.stat.common.k.i(context))) {
                a(context, f59949n);
                return;
            }
            return;
        } else {
            statLogger = f59940e;
            str2 = "appkey in StatConfig.setAppKey() is null or exceed 256 bytes";
        }
        statLogger.error(str2);
    }

    public static void setAppKey(String str) {
        StatLogger statLogger;
        String str2;
        if (str == null) {
            statLogger = f59940e;
            str2 = "appkey in StatConfig.setAppKey() is null";
        } else if (str.length() <= 256) {
            f59949n = str;
            return;
        } else {
            statLogger = f59940e;
            str2 = "The length of appkey cann't exceed 256 bytes.";
        }
        statLogger.error(str2);
    }

    public static void setAutoExceptionCaught(boolean z3) {
        isAutoExceptionCaught = z3;
    }

    public static void setCustomUserId(Context context, String str) {
        if (context == null) {
            f59940e.error("Context for setCustomUid is null.");
            return;
        }
        com.tencent.stat.common.p.b(context, "MTA_CUSTOM_UID", str);
        C = str;
    }

    public static void setDebugEnable(boolean z3) {
        com.tencent.stat.common.k.b().setDebugEnable(z3);
        a(z3);
    }

    public static void setEnableConcurrentProcess(boolean z3) {
        B = z3;
    }

    public static void setEnableSmartReporting(boolean z3) {
        f59953r = z3;
    }

    public static void setEnableStatService(boolean z3) {
        f59942g = z3;
        if (z3) {
            return;
        }
        f59940e.warn("!!!!!!MTA StatService has been disabled!!!!!!");
    }

    public static void setInstallChannel(String str) {
        if (str.length() > 128) {
            f59940e.error("the length of installChannel can not exceed the range of 128 bytes.");
        } else {
            f59950o = str;
        }
    }

    public static void setMaxBatchReportCount(int i2) {
        if (a(i2, 2, 1000)) {
            f59947l = i2;
        } else {
            f59940e.error("setMaxBatchReportCount can not exceed the range of [2,1000].");
        }
    }

    public static void setMaxDaySessionNumbers(int i2) {
        if (i2 <= 0) {
            f59940e.e("maxDaySessionNumbers must be greater than 0.");
        } else {
            f59959x = i2;
        }
    }

    public static void setMaxParallelTimmingEvents(int i2) {
        if (a(i2, 1, 4096)) {
            f59952q = i2;
        } else {
            f59940e.error("setMaxParallelTimmingEvents can not exceed the range of [1, 4096].");
        }
    }

    public static void setMaxReportEventLength(int i2) {
        if (i2 <= 0) {
            f59940e.error("maxReportEventLength on setMaxReportEventLength() must greater than 0.");
        } else {
            A = i2;
        }
    }

    public static void setMaxSendRetryCount(int i2) {
        if (a(i2, 1, 1000)) {
            f59946k = i2;
        } else {
            f59940e.error("setMaxSendRetryCount can not exceed the range of [1,1000].");
        }
    }

    public static void setMaxSessionStatReportCount(int i2) {
        if (i2 < 0) {
            f59940e.error("maxSessionStatReportCount cannot be less than 0.");
        } else {
            f59957v = i2;
        }
    }

    public static void setMaxStoreEventCount(int i2) {
        if (a(i2, 0, 500000)) {
            f59944i = i2;
        } else {
            f59940e.error("setMaxStoreEventCount can not exceed the range of [0, 500000].");
        }
    }

    public static void setQQ(Context context, String str) {
        StatService.reportQQ(context, str);
    }

    public static void setSendPeriodMinutes(int i2) {
        if (a(i2, 1, 10080)) {
            f59951p = i2;
        } else {
            f59940e.error("setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes.");
        }
    }

    public static void setSessionTimoutMillis(int i2) {
        if (a(i2, 1000, 86400000)) {
            f59943h = i2;
        } else {
            f59940e.error("setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000].");
        }
    }

    public static void setStatReportUrl(String str) {
        if (str == null || str.length() == 0) {
            f59940e.error("statReportUrl cannot be null or empty.");
        } else {
            f59956u = str;
        }
    }

    public static void setStatSendStrategy(StatReportStrategy statReportStrategy) {
        f59941f = statReportStrategy;
        StatLogger statLogger = f59940e;
        statLogger.d("Change to statSendStrategy: " + statReportStrategy);
    }
}
