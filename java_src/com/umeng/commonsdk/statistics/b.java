package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.pro.ai;
import com.umeng.analytics.pro.ba;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.stateless.d;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.idtracking.e;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: EnvelopeManager.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static String f61278a = null;

    /* renamed from: b  reason: collision with root package name */
    public static String f61279b = "";

    /* renamed from: c  reason: collision with root package name */
    private static final String f61280c = "EnvelopeManager";

    /* renamed from: d  reason: collision with root package name */
    private static final String f61281d = "debug.umeng.umTaskId";

    /* renamed from: e  reason: collision with root package name */
    private static final String f61282e = "debug.umeng.umCaseId";

    /* renamed from: f  reason: collision with root package name */
    private static final String f61283f = "empty";

    /* renamed from: g  reason: collision with root package name */
    private static String f61284g = "";

    /* renamed from: h  reason: collision with root package name */
    private static String f61285h = "";

    /* renamed from: i  reason: collision with root package name */
    private static String f61286i;

    /* renamed from: k  reason: collision with root package name */
    private static boolean f61287k;

    /* renamed from: j  reason: collision with root package name */
    private int f61288j = 0;

    public static void a() {
        if (f61286i != null) {
            f61286i = null;
            e.a();
        }
    }

    private static boolean b() {
        f61284g = UMUtils.getSystemProperty(f61281d, "");
        f61285h = UMUtils.getSystemProperty(f61282e, "");
        return (!TextUtils.isEmpty(f61284g) && !f61283f.equals(f61284g)) && (!TextUtils.isEmpty(f61285h) && !f61283f.equals(f61285h));
    }

    public static long a(Context context) {
        long j4 = DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX - DataHelper.ENVELOPE_EXTRA_LENGTH;
        if (ULog.DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append("free size is ");
            sb.append(j4);
        }
        return j4;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:144:0x02b1 -> B:154:0x02b1). Please submit an issue!!! */
    private static JSONObject b(Context context) {
        SharedPreferences sharedPreferences;
        JSONObject jSONObject;
        int[] resolutionArray;
        try {
            sharedPreferences = PreferenceWrapper.getDefault(context);
            if (!TextUtils.isEmpty(f61286i)) {
                try {
                    jSONObject = new JSONObject(f61286i);
                } catch (Exception unused) {
                    jSONObject = null;
                }
            } else {
                UMUtils.saveSDKComponent();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(ai.f60416p, DeviceConfig.getAppMD5Signature(context));
                jSONObject2.put(ai.f60417q, DeviceConfig.getAppSHA1Key(context));
                jSONObject2.put(ai.f60418r, DeviceConfig.getAppHashKey(context));
                jSONObject2.put("app_version", DeviceConfig.getAppVersionName(context));
                jSONObject2.put("version_code", Integer.parseInt(DeviceConfig.getAppVersionCode(context)));
                jSONObject2.put(ai.f60422v, DeviceConfig.getDeviceIdUmengMD5(context));
                jSONObject2.put(ai.f60423w, DeviceConfig.getCPU());
                String mccmnc = DeviceConfig.getMCCMNC(context);
                if (!TextUtils.isEmpty(mccmnc)) {
                    jSONObject2.put(ai.B, mccmnc);
                    f61279b = mccmnc;
                } else {
                    jSONObject2.put(ai.B, "");
                }
                String subOSName = DeviceConfig.getSubOSName(context);
                if (!TextUtils.isEmpty(subOSName)) {
                    jSONObject2.put(ai.K, subOSName);
                }
                String subOSVersion = DeviceConfig.getSubOSVersion(context);
                if (!TextUtils.isEmpty(subOSVersion)) {
                    jSONObject2.put(ai.L, subOSVersion);
                }
                String deviceType = DeviceConfig.getDeviceType(context);
                if (!TextUtils.isEmpty(deviceType)) {
                    jSONObject2.put(ai.ai, deviceType);
                }
                jSONObject2.put(ai.f60415o, DeviceConfig.getPackageName(context));
                jSONObject2.put(ai.f60421u, "Android");
                jSONObject2.put("device_id", DeviceConfig.getDeviceId(context));
                jSONObject2.put("device_model", Build.MODEL);
                jSONObject2.put(ai.E, Build.BOARD);
                jSONObject2.put(ai.F, Build.BRAND);
                jSONObject2.put(ai.G, Build.TIME);
                jSONObject2.put(ai.H, Build.MANUFACTURER);
                jSONObject2.put(ai.I, Build.ID);
                jSONObject2.put("device_name", Build.DEVICE);
                jSONObject2.put(ai.f60425y, Build.VERSION.RELEASE);
                jSONObject2.put(ai.f60424x, "Android");
                if (DeviceConfig.getResolutionArray(context) != null) {
                    jSONObject2.put(ai.f60426z, resolutionArray[1] + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + resolutionArray[0]);
                }
                jSONObject2.put("mc", DeviceConfig.getMac(context));
                jSONObject2.put(ai.M, DeviceConfig.getTimeZone(context));
                String[] localeInfo = DeviceConfig.getLocaleInfo(context);
                jSONObject2.put(ai.O, localeInfo[0]);
                jSONObject2.put("language", localeInfo[1]);
                jSONObject2.put(ai.P, DeviceConfig.getNetworkOperatorName(context));
                jSONObject2.put(ai.f60419s, DeviceConfig.getAppName(context));
                String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(context);
                if ("Wi-Fi".equals(networkAccessMode[0])) {
                    jSONObject2.put(ai.Q, NetworkUtil.NETWORK_TYPE_WIFI);
                } else if ("2G/3G".equals(networkAccessMode[0])) {
                    jSONObject2.put(ai.Q, "2G/3G");
                } else {
                    jSONObject2.put(ai.Q, "unknow");
                }
                if (!"".equals(networkAccessMode[1])) {
                    jSONObject2.put(ai.R, networkAccessMode[1]);
                }
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.H)) {
                    jSONObject2.put(ai.S, DeviceConfig.getIPAddress(context));
                }
                jSONObject2.put(ai.T, DeviceConfig.getNetworkType(context));
                jSONObject2.put(ai.f60402b, "9.4.0");
                jSONObject2.put(ai.f60403c, SdkVersion.SDK_TYPE);
                jSONObject2.put(ai.f60404d, "1");
                if (!TextUtils.isEmpty(f61278a)) {
                    jSONObject2.put(ai.f60405e, f61278a);
                }
                jSONObject2.put(ai.aj, Build.VERSION.SDK_INT);
                if (!TextUtils.isEmpty(UMUtils.VALUE_REC_VERSION_NAME)) {
                    jSONObject2.put(ai.af, UMUtils.VALUE_REC_VERSION_NAME);
                }
                try {
                    String uUIDForZid = UMUtils.getUUIDForZid(context);
                    if (TextUtils.isEmpty(uUIDForZid)) {
                        UMUtils.setUUIDForZid(context);
                        uUIDForZid = UMUtils.getUUIDForZid(context);
                    }
                    jSONObject2.put("session_id", uUIDForZid);
                } catch (Throwable unused2) {
                }
                f61286i = jSONObject2.toString();
                jSONObject = jSONObject2;
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
        if (jSONObject == null) {
            return null;
        }
        try {
            jSONObject.put(ai.ak, UMUtils.getOaidRequiredTime(context));
        } catch (Exception unused3) {
        }
        try {
            jSONObject.put(ai.U, sharedPreferences.getInt("successful_request", 0));
            jSONObject.put(ai.V, sharedPreferences.getInt(ai.V, 0));
            jSONObject.put(ai.W, sharedPreferences.getInt("last_request_spent_ms", 0));
            String zid = UMUtils.getZid(context);
            if (!TextUtils.isEmpty(zid)) {
                jSONObject.put(ai.al, zid);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_ASMS_VERSION)) {
                jSONObject.put(ai.am, UMUtils.VALUE_ASMS_VERSION);
            }
        } catch (Exception unused4) {
        }
        jSONObject.put("channel", UMUtils.getChannel(context));
        jSONObject.put("appkey", UMUtils.getAppkey(context));
        try {
            String deviceToken = UMUtils.getDeviceToken(context);
            if (!TextUtils.isEmpty(deviceToken)) {
                jSONObject.put(ai.f60401a, deviceToken);
            }
        } catch (Exception e4) {
            UMCrashManager.reportCrash(context, e4);
        }
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(context, ai.f60407g, null);
            if (!TextUtils.isEmpty(imprintProperty)) {
                jSONObject.put(ai.f60407g, imprintProperty);
            }
        } catch (Exception e5) {
            UMCrashManager.reportCrash(context, e5);
        }
        try {
            jSONObject.put("wrapper_type", a.f61275a);
            jSONObject.put("wrapper_version", a.f61276b);
        } catch (Exception unused5) {
        }
        try {
            int targetSdkVersion = UMUtils.getTargetSdkVersion(context);
            boolean checkPermission = UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE");
            jSONObject.put(ai.aS, targetSdkVersion);
            if (checkPermission) {
                jSONObject.put(ai.aT, "yes");
            } else {
                jSONObject.put(ai.aT, "no");
            }
        } catch (Throwable unused6) {
        }
        try {
            if (b()) {
                jSONObject.put("umTaskId", f61284g);
                jSONObject.put("umCaseId", f61285h);
            }
        } catch (Throwable unused7) {
        }
        try {
            String realTimeDebugKey = AnalyticsConfig.getRealTimeDebugKey();
            if (!TextUtils.isEmpty(realTimeDebugKey)) {
                jSONObject.put(ai.bl, realTimeDebugKey);
            }
        } catch (Throwable unused8) {
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(ai.aX, com.umeng.commonsdk.internal.a.f61130e);
            if (!TextUtils.isEmpty(UMUtils.VALUE_ANALYTICS_VERSION)) {
                jSONObject3.put(ai.aY, UMUtils.VALUE_ANALYTICS_VERSION);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_GAME_VERSION)) {
                jSONObject3.put(ai.aZ, UMUtils.VALUE_GAME_VERSION);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_PUSH_VERSION)) {
                jSONObject3.put(ai.ba, UMUtils.VALUE_PUSH_VERSION);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_SHARE_VERSION)) {
                jSONObject3.put(ai.bb, UMUtils.VALUE_SHARE_VERSION);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_APM_VERSION)) {
                jSONObject3.put(ai.bc, UMUtils.VALUE_APM_VERSION);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_VERIFY_VERSION)) {
                jSONObject3.put(ai.bd, UMUtils.VALUE_VERIFY_VERSION);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_SMS_VERSION)) {
                jSONObject3.put(ai.be, UMUtils.VALUE_SMS_VERSION);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_REC_VERSION_NAME)) {
                jSONObject3.put(ai.bf, UMUtils.VALUE_REC_VERSION_NAME);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_VISUAL_VERSION)) {
                jSONObject3.put(ai.bg, UMUtils.VALUE_VISUAL_VERSION);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_ASMS_VERSION)) {
                jSONObject3.put(ai.bh, UMUtils.VALUE_ASMS_VERSION);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_LINK_VERSION)) {
                jSONObject3.put(ai.bi, UMUtils.VALUE_LINK_VERSION);
            }
            if (!TextUtils.isEmpty(UMUtils.VALUE_ABTEST_VERSION)) {
                jSONObject3.put(ai.bj, UMUtils.VALUE_ABTEST_VERSION);
            }
            jSONObject.put(ai.aW, jSONObject3);
        } catch (Throwable unused9) {
        }
        try {
            String apmFlag = UMUtils.getApmFlag();
            if (!TextUtils.isEmpty(apmFlag)) {
                jSONObject.put(ai.bk, apmFlag);
            }
        } catch (Throwable unused10) {
        }
        byte[] a4 = ImprintHandler.getImprintService(context).a();
        if (a4 != null && a4.length > 0) {
            try {
                jSONObject.put(ai.X, Base64.encodeToString(a4, 0));
            } catch (JSONException e6) {
                UMCrashManager.reportCrash(context, e6);
            }
        }
        if (jSONObject.length() > 0) {
            return new JSONObject().put("header", jSONObject);
        }
        return null;
    }

    private JSONObject a(int i2, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                jSONObject.put("exception", i2);
            } catch (Exception unused) {
            }
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("exception", i2);
        } catch (Exception unused2) {
        }
        return jSONObject2;
    }

    public JSONObject a(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str, String str2, String str3) {
        JSONObject jSONObject3;
        String str4;
        Envelope envelope;
        if (ULog.DEBUG && jSONObject != null && jSONObject2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("headerJSONObject size is ");
            sb.append(jSONObject.toString().getBytes().length);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("bodyJSONObject size is ");
            sb2.append(jSONObject2.toString().getBytes().length);
        }
        JSONObject jSONObject4 = null;
        if (context != null && jSONObject2 != null) {
            try {
                JSONObject b4 = b(context);
                if (b4 != null && jSONObject != null) {
                    b4 = a(b4, jSONObject);
                }
                JSONObject jSONObject5 = b4;
                if (jSONObject5 != null) {
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (next != null && (next instanceof String)) {
                            String str5 = next;
                            if (jSONObject2.opt(str5) != null) {
                                try {
                                    jSONObject5.put(str5, jSONObject2.opt(str5));
                                } catch (Exception unused) {
                                }
                            }
                        }
                    }
                }
                String str6 = ai.aE;
                if (!TextUtils.isEmpty(str2)) {
                    str6 = str2;
                }
                String str7 = TextUtils.isEmpty(str3) ? "1.0.0" : str3;
                if (jSONObject5 != null) {
                    String str8 = str6 + "==" + str7 + "&=";
                    if (TextUtils.isEmpty(str8)) {
                        return a(101, jSONObject5);
                    }
                    if (str8.endsWith("&=")) {
                        str8 = str8.substring(0, str8.length() - 2);
                    }
                    str4 = str8;
                } else {
                    str4 = null;
                }
                if (jSONObject5 != null) {
                    try {
                        e a4 = e.a(context);
                        if (a4 != null) {
                            a4.b();
                            String encodeToString = Base64.encodeToString(new ba().a(a4.c()), 0);
                            if (!TextUtils.isEmpty(encodeToString)) {
                                JSONObject jSONObject6 = jSONObject5.getJSONObject("header");
                                jSONObject6.put(ai.Y, encodeToString);
                                jSONObject5.put("header", jSONObject6);
                            }
                        }
                    } catch (Exception unused2) {
                    }
                }
                if (jSONObject5 != null && DataHelper.largeThanMaxSize(jSONObject5.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                    SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                    }
                    return a(113, jSONObject5);
                }
                if (jSONObject5 != null) {
                    Envelope a5 = a(context, jSONObject5.toString().getBytes());
                    if (a5 == null) {
                        return a(111, jSONObject5);
                    }
                    envelope = a5;
                } else {
                    envelope = null;
                }
                if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                    return a(114, jSONObject5);
                }
                int a6 = a(context, envelope, str4, jSONObject5 != null ? jSONObject5.optJSONObject("header").optString("app_version") : null, str);
                if (a6 != 0) {
                    return a(a6, jSONObject5);
                }
                if (ULog.DEBUG) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("constructHeader size is ");
                    sb3.append(jSONObject5.toString().getBytes().length);
                }
                if (!str4.startsWith(ai.aB) && !str4.startsWith(ai.aA) && !str4.startsWith(ai.aF) && !str4.startsWith("a") && !com.umeng.commonsdk.stateless.b.a()) {
                    new com.umeng.commonsdk.stateless.b(context);
                    com.umeng.commonsdk.stateless.b.b();
                }
                return jSONObject5;
            } catch (Throwable th) {
                UMCrashManager.reportCrash(context, th);
                if (jSONObject != null) {
                    try {
                        jSONObject3 = new JSONObject();
                    } catch (Exception e4) {
                        e = e4;
                    }
                    try {
                        jSONObject3.put("header", jSONObject);
                    } catch (JSONException unused3) {
                    } catch (Exception e5) {
                        e = e5;
                        jSONObject4 = jSONObject3;
                        UMCrashManager.reportCrash(context, e);
                        return a(110, jSONObject4);
                    }
                    jSONObject4 = jSONObject3;
                }
                if (jSONObject4 == null) {
                    jSONObject4 = new JSONObject();
                }
                Iterator<String> keys2 = jSONObject2.keys();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    if (next2 != null && (next2 instanceof String)) {
                        String str9 = next2;
                        if (jSONObject2.opt(str9) != null) {
                            try {
                                jSONObject4.put(str9, jSONObject2.opt(str9));
                            } catch (Exception unused4) {
                            }
                        }
                    }
                }
                return a(110, jSONObject4);
            }
        }
        return a(110, (JSONObject) null);
    }

    public JSONObject a(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) {
        Envelope envelope;
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("header", new JSONObject());
            try {
                if (b()) {
                    jSONObject.put("umTaskId", f61284g);
                    jSONObject.put("umCaseId", f61285h);
                }
            } catch (Throwable unused) {
            }
            if (jSONObject != null) {
                jSONObject3 = a(jSONObject3, jSONObject);
            }
            if (jSONObject3 != null && jSONObject2 != null) {
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next != null && (next instanceof String)) {
                        String str2 = next;
                        if (jSONObject2.opt(str2) != null) {
                            try {
                                jSONObject3.put(str2, jSONObject2.opt(str2));
                            } catch (Exception unused2) {
                            }
                        }
                    }
                }
            }
            if (jSONObject3 != null && DataHelper.largeThanMaxSize(jSONObject3.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                }
                return a(113, jSONObject3);
            }
            if (jSONObject3 != null) {
                Envelope a4 = a(context, jSONObject3.toString().getBytes());
                if (a4 == null) {
                    return a(111, jSONObject3);
                }
                envelope = a4;
            } else {
                envelope = null;
            }
            if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                return a(114, jSONObject3);
            }
            int a5 = a(context, envelope, "z==1.2.0", jSONObject3 != null ? jSONObject3.optJSONObject("header").optString("app_version") : null, str);
            if (a5 != 0) {
                return a(a5, jSONObject3);
            }
            if (ULog.DEBUG) {
                StringBuilder sb = new StringBuilder();
                sb.append("constructHeader size is ");
                sb.append(jSONObject3.toString().getBytes().length);
            }
            return jSONObject3;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
            return a(110, new JSONObject());
        }
    }

    private JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject != null && jSONObject2 != null && jSONObject.opt("header") != null && (jSONObject.opt("header") instanceof JSONObject)) {
            JSONObject jSONObject3 = (JSONObject) jSONObject.opt("header");
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && (next instanceof String)) {
                    String str = next;
                    if (jSONObject2.opt(str) != null) {
                        try {
                            jSONObject3.put(str, jSONObject2.opt(str));
                            if (str.equals(com.umeng.analytics.pro.c.f60632i) && (jSONObject2.opt(str) instanceof Integer)) {
                                this.f61288j = ((Integer) jSONObject2.opt(str)).intValue();
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        return jSONObject;
    }

    private Envelope a(Context context, byte[] bArr) {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, "codex", null);
        int i2 = -1;
        try {
            if (!TextUtils.isEmpty(imprintProperty)) {
                i2 = Integer.valueOf(imprintProperty).intValue();
            }
        } catch (NumberFormatException e4) {
            UMCrashManager.reportCrash(context, e4);
        }
        if (i2 == 0) {
            return Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        if (i2 == 1) {
            return Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        if (f61287k) {
            return Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        return Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
    }

    private int a(Context context, Envelope envelope, String str, String str2, String str3) {
        if (context == null || envelope == null || TextUtils.isEmpty(str)) {
            return 101;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = DeviceConfig.getAppVersionName(context);
        }
        String b4 = d.b(str3);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("&&");
        sb.append(str2);
        sb.append("_");
        sb.append(System.currentTimeMillis());
        sb.append("_");
        sb.append(b4);
        sb.append(".log");
        byte[] binary = envelope.toBinary();
        if (!str.startsWith(ai.aB) && !str.startsWith(ai.aA) && !str.startsWith("a") && !str.startsWith(ai.aF)) {
            return d.a(context, com.umeng.commonsdk.stateless.a.f61248f, sb.toString(), binary);
        }
        return UMFrUtils.saveEnvelopeFile(context, sb.toString(), binary);
    }

    public static void a(boolean z3) {
        f61287k = z3;
    }
}
