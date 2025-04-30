package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.process.UMProcessDBHelper;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.utils.JSONArraySortUtil;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.umcrash.UMCrashUtils;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: CoreProtocolImpl.java */
/* loaded from: classes4.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static Context f60811a = null;

    /* renamed from: l  reason: collision with root package name */
    private static final String f60812l = "first_activate_time";

    /* renamed from: m  reason: collision with root package name */
    private static final String f60813m = "ana_is_f";

    /* renamed from: n  reason: collision with root package name */
    private static final String f60814n = "thtstart";

    /* renamed from: o  reason: collision with root package name */
    private static final String f60815o = "dstk_last_time";

    /* renamed from: p  reason: collision with root package name */
    private static final String f60816p = "dstk_cnt";

    /* renamed from: q  reason: collision with root package name */
    private static final String f60817q = "gkvc";

    /* renamed from: r  reason: collision with root package name */
    private static final String f60818r = "ekvc";

    /* renamed from: t  reason: collision with root package name */
    private static final String f60819t = "-1";

    /* renamed from: x  reason: collision with root package name */
    private static final String f60820x = "com.umeng.umcrash.UMCrashUtils";

    /* renamed from: y  reason: collision with root package name */
    private static Class<?> f60821y;

    /* renamed from: z  reason: collision with root package name */
    private static Method f60822z;

    /* renamed from: b  reason: collision with root package name */
    private c f60823b;

    /* renamed from: c  reason: collision with root package name */
    private SharedPreferences f60824c;

    /* renamed from: d  reason: collision with root package name */
    private String f60825d;

    /* renamed from: e  reason: collision with root package name */
    private String f60826e;

    /* renamed from: f  reason: collision with root package name */
    private int f60827f;

    /* renamed from: g  reason: collision with root package name */
    private JSONArray f60828g;

    /* renamed from: h  reason: collision with root package name */
    private final int f60829h;

    /* renamed from: i  reason: collision with root package name */
    private int f60830i;

    /* renamed from: j  reason: collision with root package name */
    private int f60831j;

    /* renamed from: k  reason: collision with root package name */
    private long f60832k;

    /* renamed from: s  reason: collision with root package name */
    private final long f60833s;

    /* renamed from: u  reason: collision with root package name */
    private boolean f60834u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f60835v;

    /* renamed from: w  reason: collision with root package name */
    private Object f60836w;

    /* compiled from: CoreProtocolImpl.java */
    /* loaded from: classes4.dex */
    public static class a {
        public static final int A = 8211;
        public static final int B = 8212;
        public static final int C = 8213;
        public static final int D = 8214;
        public static final int E = 8215;

        /* renamed from: a  reason: collision with root package name */
        public static final int f60837a = 4097;

        /* renamed from: b  reason: collision with root package name */
        public static final int f60838b = 4098;

        /* renamed from: c  reason: collision with root package name */
        public static final int f60839c = 4099;

        /* renamed from: d  reason: collision with root package name */
        public static final int f60840d = 4100;

        /* renamed from: e  reason: collision with root package name */
        public static final int f60841e = 4101;

        /* renamed from: f  reason: collision with root package name */
        public static final int f60842f = 4102;

        /* renamed from: g  reason: collision with root package name */
        public static final int f60843g = 4103;

        /* renamed from: h  reason: collision with root package name */
        public static final int f60844h = 4104;

        /* renamed from: i  reason: collision with root package name */
        public static final int f60845i = 4105;

        /* renamed from: j  reason: collision with root package name */
        public static final int f60846j = 4106;

        /* renamed from: k  reason: collision with root package name */
        public static final int f60847k = 4352;

        /* renamed from: l  reason: collision with root package name */
        public static final int f60848l = 4353;

        /* renamed from: m  reason: collision with root package name */
        public static final int f60849m = 4354;

        /* renamed from: n  reason: collision with root package name */
        public static final int f60850n = 4355;

        /* renamed from: o  reason: collision with root package name */
        public static final int f60851o = 4356;

        /* renamed from: p  reason: collision with root package name */
        public static final int f60852p = 8193;

        /* renamed from: q  reason: collision with root package name */
        public static final int f60853q = 8194;

        /* renamed from: r  reason: collision with root package name */
        public static final int f60854r = 8195;

        /* renamed from: s  reason: collision with root package name */
        public static final int f60855s = 8196;

        /* renamed from: t  reason: collision with root package name */
        public static final int f60856t = 8197;

        /* renamed from: u  reason: collision with root package name */
        public static final int f60857u = 8199;

        /* renamed from: v  reason: collision with root package name */
        public static final int f60858v = 8200;

        /* renamed from: w  reason: collision with root package name */
        public static final int f60859w = 8201;

        /* renamed from: x  reason: collision with root package name */
        public static final int f60860x = 8208;

        /* renamed from: y  reason: collision with root package name */
        public static final int f60861y = 8209;

        /* renamed from: z  reason: collision with root package name */
        public static final int f60862z = 8210;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CoreProtocolImpl.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final n f60863a = new n();

        private b() {
        }
    }

    static {
        h();
    }

    public static n a(Context context) {
        if (f60811a == null && context != null) {
            f60811a = context.getApplicationContext();
        }
        return b.f60863a;
    }

    private void b(JSONObject jSONObject) {
        JSONObject f4;
        if (h.a(UMGlobalContext.getAppContext(f60811a)).c() || (f4 = h.a(UMGlobalContext.getAppContext(f60811a)).f()) == null) {
            return;
        }
        String optString = f4.optString("__av");
        String optString2 = f4.optString("__vc");
        try {
            if (TextUtils.isEmpty(optString)) {
                jSONObject.put("app_version", UMUtils.getAppVersionName(f60811a));
            } else {
                jSONObject.put("app_version", optString);
            }
            if (TextUtils.isEmpty(optString2)) {
                jSONObject.put("version_code", UMUtils.getAppVersionCode(f60811a));
            } else {
                jSONObject.put("version_code", optString2);
            }
        } catch (Throwable unused) {
        }
    }

    private void e(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (2050 == jSONObject.getInt("__t")) {
                if (!a(this.f60832k, this.f60830i)) {
                    return;
                }
                this.f60830i++;
            } else if (2049 == jSONObject.getInt("__t")) {
                if (!a(this.f60832k, this.f60831j)) {
                    return;
                }
                this.f60831j++;
            }
            if (AnalyticsConfig.isRealTimeDebugMode()) {
                if (this.f60828g == null) {
                    this.f60828g = new JSONArray();
                }
                this.f60828g.put(jSONObject);
                h.a(f60811a).a(this.f60828g);
                this.f60828g = new JSONArray();
                return;
            }
            if (this.f60828g.length() >= this.f60827f) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** 超过10个事件，事件落库。");
                h.a(f60811a).a(this.f60828g);
                this.f60828g = new JSONArray();
            }
            if (this.f60832k == 0) {
                this.f60832k = System.currentTimeMillis();
            }
            this.f60828g.put(jSONObject);
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    private void f(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        try {
            if (jSONObject.getJSONObject("header").has(com.umeng.analytics.pro.c.aB)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has("analytics")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("analytics");
                    if (jSONObject2.has(com.umeng.analytics.pro.c.f60637n) && (optJSONObject2 = jSONObject2.getJSONArray(com.umeng.analytics.pro.c.f60637n).optJSONObject(0)) != null) {
                        String optString = optJSONObject2.optString("id");
                        if (!TextUtils.isEmpty(optString)) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> removeAllInstantData: really delete instant session data");
                            h.a(f60811a).b(optString);
                        }
                    }
                }
                h.a(f60811a).b();
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> removeAllInstantData: send INSTANT_SESSION_START_CONTINUE event because OVERSIZE.");
                Context context = f60811a;
                UMWorkDispatch.sendEvent(context, 4353, CoreProtocol.getInstance(context), null);
                return;
            }
            if (jSONObject.has("content")) {
                jSONObject = jSONObject.getJSONObject("content");
            }
            if (jSONObject.has("analytics") && (optJSONObject = jSONObject.optJSONObject("analytics")) != null && optJSONObject.length() > 0 && optJSONObject.has(com.umeng.analytics.pro.c.f60637n)) {
                h.a(f60811a).a(true, false);
            }
            h.a(f60811a).b();
        } catch (Exception unused) {
        }
    }

    private static void h() {
        try {
            f60821y = UMCrashUtils.class;
            Method declaredMethod = UMCrashUtils.class.getDeclaredMethod("setPuidAndProvider", String.class, String.class);
            if (declaredMethod != null) {
                f60822z = declaredMethod;
            }
        } catch (Throwable unused) {
        }
    }

    private void i() {
        JSONObject b4 = b(UMEnvelopeBuild.maxDataSpace(f60811a));
        if (b4 == null || b4.length() < 1) {
            return;
        }
        JSONObject jSONObject = (JSONObject) b4.opt("header");
        JSONObject jSONObject2 = (JSONObject) b4.opt("content");
        if (f60811a == null || jSONObject == null || jSONObject2 == null) {
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> constructInstantMessage: request build envelope.");
        JSONObject buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(f60811a, jSONObject, jSONObject2);
        if (buildEnvelopeWithExtHeader != null) {
            try {
                if (buildEnvelopeWithExtHeader.has("exception")) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Build envelope error code: " + buildEnvelopeWithExtHeader.getInt("exception"));
                }
            } catch (Throwable unused) {
            }
            if (UMConfigure.isDebugLog()) {
                e(buildEnvelopeWithExtHeader);
            }
            b((Object) buildEnvelopeWithExtHeader);
        }
    }

    private void j() {
        JSONObject buildEnvelopeWithExtHeader;
        JSONObject a4 = a(UMEnvelopeBuild.maxDataSpace(f60811a));
        if (a4 == null || a4.length() < 1) {
            return;
        }
        JSONObject jSONObject = (JSONObject) a4.opt("header");
        JSONObject jSONObject2 = (JSONObject) a4.opt("content");
        Context context = f60811a;
        if (context == null || jSONObject == null || jSONObject2 == null || (buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, jSONObject2)) == null) {
            return;
        }
        try {
            if (buildEnvelopeWithExtHeader.has("exception")) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "Build envelope error code: " + buildEnvelopeWithExtHeader.getInt("exception"));
            }
        } catch (Throwable unused) {
        }
        if (UMConfigure.isDebugLog()) {
            d(buildEnvelopeWithExtHeader);
        }
        a((Object) buildEnvelopeWithExtHeader);
    }

    private JSONObject k() {
        JSONObject l4 = l();
        if (l4 != null) {
            try {
                l4.put("st", "1");
            } catch (Throwable unused) {
            }
        }
        return l4;
    }

    private JSONObject l() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            if (AnalyticsConfig.mWrapperType != null && (str = AnalyticsConfig.mWrapperVersion) != null) {
                jSONObject.put("wrapper_version", str);
                jSONObject.put("wrapper_type", AnalyticsConfig.mWrapperType);
            }
            int verticalType = AnalyticsConfig.getVerticalType(f60811a);
            jSONObject.put(com.umeng.analytics.pro.c.f60632i, verticalType);
            String str2 = "9.4.0";
            if (verticalType == 1) {
                String gameSdkVersion = AnalyticsConfig.getGameSdkVersion(f60811a);
                if (!TextUtils.isEmpty(gameSdkVersion)) {
                    str2 = gameSdkVersion;
                }
                jSONObject.put("sdk_version", str2);
            } else {
                jSONObject.put("sdk_version", "9.4.0");
            }
            String MD5 = HelperUtils.MD5(AnalyticsConfig.getSecretKey(f60811a));
            if (!TextUtils.isEmpty(MD5)) {
                jSONObject.put("secret", MD5);
            }
            String imprintProperty = UMEnvelopeBuild.imprintProperty(f60811a, "pr_ve", null);
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f60811a);
            String imprintProperty2 = UMEnvelopeBuild.imprintProperty(f60811a, com.umeng.analytics.pro.c.an, "");
            if (!TextUtils.isEmpty(imprintProperty2)) {
                if (AnalyticsConfig.CLEAR_EKV_BL) {
                    jSONObject.put(com.umeng.analytics.pro.c.ap, "");
                } else {
                    jSONObject.put(com.umeng.analytics.pro.c.ap, imprintProperty2);
                }
            }
            String imprintProperty3 = UMEnvelopeBuild.imprintProperty(f60811a, com.umeng.analytics.pro.c.ao, "");
            if (!TextUtils.isEmpty(imprintProperty3)) {
                if (AnalyticsConfig.CLEAR_EKV_WL) {
                    jSONObject.put(com.umeng.analytics.pro.c.aq, "");
                } else {
                    jSONObject.put(com.umeng.analytics.pro.c.aq, imprintProperty3);
                }
            }
            jSONObject.put(com.umeng.analytics.pro.c.ah, "1.0.0");
            if (s()) {
                jSONObject.put(com.umeng.analytics.pro.c.aj, "1");
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putLong(f60813m, 0L).commit();
                }
            }
            jSONObject.put(com.umeng.analytics.pro.c.f60635l, m());
            jSONObject.put(com.umeng.analytics.pro.c.f60636m, n());
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("vers_name", "");
                if (!TextUtils.isEmpty(string)) {
                    String format = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    if (TextUtils.isEmpty(imprintProperty)) {
                        jSONObject.put(com.umeng.analytics.pro.c.f60635l, sharedPreferences.getString("vers_pre_version", "0"));
                        jSONObject.put(com.umeng.analytics.pro.c.f60636m, sharedPreferences.getString("vers_date", format));
                    }
                    sharedPreferences.edit().putString("pre_version", string).putString("cur_version", DeviceConfig.getAppVersionName(f60811a)).putString("pre_date", format).remove("vers_name").remove("vers_code").remove("vers_date").remove("vers_pre_version").commit();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    private String m() {
        String str = null;
        try {
            str = UMEnvelopeBuild.imprintProperty(f60811a, "pr_ve", null);
            if (TextUtils.isEmpty(str)) {
                if (!TextUtils.isEmpty(this.f60825d)) {
                    return this.f60825d;
                }
                if (this.f60824c == null) {
                    this.f60824c = PreferenceWrapper.getDefault(f60811a);
                }
                String string = this.f60824c.getString("pre_version", "");
                String appVersionName = DeviceConfig.getAppVersionName(f60811a);
                if (TextUtils.isEmpty(string)) {
                    this.f60824c.edit().putString("pre_version", "0").putString("cur_version", appVersionName).commit();
                    str = "0";
                } else {
                    String string2 = this.f60824c.getString("cur_version", "");
                    if (appVersionName.equals(string2)) {
                        str = string;
                    } else {
                        this.f60824c.edit().putString("pre_version", string2).putString("cur_version", appVersionName).commit();
                        str = string2;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        this.f60825d = str;
        return str;
    }

    private String n() {
        String str = null;
        try {
            str = UMEnvelopeBuild.imprintProperty(f60811a, "ud_da", null);
            if (TextUtils.isEmpty(str)) {
                if (!TextUtils.isEmpty(this.f60826e)) {
                    return this.f60826e;
                }
                if (this.f60824c == null) {
                    this.f60824c = PreferenceWrapper.getDefault(f60811a);
                }
                String string = this.f60824c.getString("pre_date", "");
                if (TextUtils.isEmpty(string)) {
                    string = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    this.f60824c.edit().putString("pre_date", string).commit();
                } else {
                    String format = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                    if (!string.equals(format)) {
                        this.f60824c.edit().putString("pre_date", format).commit();
                        str = format;
                    }
                }
                str = string;
            }
        } catch (Throwable unused) {
        }
        this.f60826e = str;
        return str;
    }

    private void o() {
        try {
            this.f60830i = 0;
            this.f60831j = 0;
            this.f60832k = System.currentTimeMillis();
            PreferenceWrapper.getDefault(f60811a).edit().putLong(f60815o, System.currentTimeMillis()).putInt(f60816p, 0).commit();
        } catch (Throwable unused) {
        }
    }

    private boolean p() {
        try {
            if (!TextUtils.isEmpty(t.a().b())) {
                b(f60811a);
            }
            if (this.f60828g.length() > 0) {
                for (int i2 = 0; i2 < this.f60828g.length(); i2++) {
                    JSONObject optJSONObject = this.f60828g.optJSONObject(i2);
                    if (optJSONObject != null && optJSONObject.length() > 0) {
                        String optString = optJSONObject.optString("__i");
                        if (TextUtils.isEmpty(optString) || f60819t.equals(optString)) {
                            return false;
                        }
                    }
                }
                return true;
            }
            return false;
        } catch (Throwable unused) {
            return true;
        }
    }

    private void q() {
        if (this.f60828g.length() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < this.f60828g.length(); i2++) {
                try {
                    JSONObject jSONObject = this.f60828g.getJSONObject(i2);
                    if (jSONObject != null && jSONObject.length() > 0) {
                        String optString = jSONObject.optString("__i");
                        boolean isEmpty = TextUtils.isEmpty(optString);
                        String str = f60819t;
                        if (isEmpty || f60819t.equals(optString)) {
                            String b4 = t.a().b();
                            if (!TextUtils.isEmpty(b4)) {
                                str = b4;
                            }
                            jSONObject.put("__i", str);
                        }
                        jSONArray.put(jSONObject);
                    } else {
                        jSONArray.put(jSONObject);
                    }
                } catch (Throwable unused) {
                }
            }
            this.f60828g = jSONArray;
        }
    }

    private void r() {
        Context context;
        SharedPreferences sharedPreferences;
        try {
            if (!s() || (context = f60811a) == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null || sharedPreferences.getLong(f60812l, 0L) != 0) {
                return;
            }
            sharedPreferences.edit().putLong(f60812l, System.currentTimeMillis()).commit();
        } catch (Throwable unused) {
        }
    }

    private boolean s() {
        SharedPreferences sharedPreferences;
        try {
            Context context = f60811a;
            if (context == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null) {
                return false;
            }
            return sharedPreferences.getLong(f60813m, -1L) != 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    public void b() {
    }

    public void c() {
        b(f60811a);
        d();
        a(true);
    }

    public void d() {
        try {
            if (this.f60828g.length() > 0) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** flushMemoryData: 事件落库。");
                h.a(f60811a).a(this.f60828g);
                this.f60828g = new JSONArray();
            }
            PreferenceWrapper.getDefault(f60811a).edit().putLong(f60814n, this.f60832k).putInt(f60817q, this.f60830i).putInt(f60818r, this.f60831j).commit();
        } catch (Throwable unused) {
        }
    }

    private n() {
        this.f60823b = null;
        this.f60824c = null;
        this.f60825d = null;
        this.f60826e = null;
        this.f60827f = 10;
        this.f60828g = new JSONArray();
        this.f60829h = 5000;
        this.f60830i = 0;
        this.f60831j = 0;
        this.f60832k = 0L;
        this.f60833s = 28800000L;
        this.f60834u = false;
        this.f60835v = false;
        this.f60836w = new Object();
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f60811a);
            this.f60832k = sharedPreferences.getLong(f60814n, 0L);
            this.f60830i = sharedPreferences.getInt(f60817q, 0);
            this.f60831j = sharedPreferences.getInt(f60818r, 0);
            this.f60823b = new c();
        } catch (Throwable unused) {
        }
    }

    private void g(JSONObject jSONObject) {
        JSONObject optJSONObject;
        try {
            if (jSONObject.getJSONObject("header").has(com.umeng.analytics.pro.c.aB)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has("analytics")) {
                    if (jSONObject.getJSONObject("analytics").has(com.umeng.analytics.pro.c.f60637n)) {
                        h.a(f60811a).i();
                        h.a(f60811a).h();
                        h.a(f60811a).b(true, false);
                        h.a(f60811a).a();
                        return;
                    }
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> Error, Should not go to this branch.");
                    return;
                }
                return;
            }
            if (jSONObject.has("content")) {
                jSONObject = jSONObject.getJSONObject("content");
            }
            if (jSONObject.has("analytics") && (optJSONObject = jSONObject.optJSONObject("analytics")) != null && optJSONObject.length() > 0) {
                if (optJSONObject.has(com.umeng.analytics.pro.c.f60637n)) {
                    h.a(f60811a).b(true, false);
                }
                if (optJSONObject.has("ekv") || optJSONObject.has(com.umeng.analytics.pro.c.T)) {
                    h.a(f60811a).h();
                }
                if (optJSONObject.has("error")) {
                    h.a(f60811a).i();
                }
            }
            h.a(f60811a).a();
        } catch (Exception unused) {
        }
    }

    /* compiled from: CoreProtocolImpl.java */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private ReportPolicy.ReportStrategy f60864a = null;

        /* renamed from: b  reason: collision with root package name */
        private int f60865b = -1;

        /* renamed from: c  reason: collision with root package name */
        private int f60866c = -1;

        /* renamed from: d  reason: collision with root package name */
        private int f60867d = -1;

        /* renamed from: e  reason: collision with root package name */
        private int f60868e = -1;

        /* renamed from: f  reason: collision with root package name */
        private ABTest f60869f;

        public c() {
            this.f60869f = null;
            this.f60869f = ABTest.getService(n.f60811a);
        }

        public void a() {
            try {
                int[] a4 = a(-1, -1);
                this.f60865b = a4[0];
                this.f60866c = a4[1];
            } catch (Throwable unused) {
            }
        }

        protected void b() {
            int i2;
            ReportPolicy.ReportStrategy defconPolicy;
            Defcon service = Defcon.getService(n.f60811a);
            if (!service.isOpen()) {
                boolean z3 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(n.f60811a, "integrated_test", n.f60819t)).intValue() == 1;
                if (UMConfigure.isDebugLog() && z3 && !MLog.DEBUG) {
                    UMLog.mutlInfo(i.K, 3, "\\|", null, null);
                }
                if (MLog.DEBUG && z3) {
                    this.f60864a = new ReportPolicy.DebugPolicy(StatTracer.getInstance(n.f60811a));
                } else if (this.f60869f.isInTest() && "RPT".equals(this.f60869f.getTestName())) {
                    if (this.f60869f.getTestPolicy() == 6) {
                        if (Integer.valueOf(UMEnvelopeBuild.imprintProperty(n.f60811a, "test_report_interval", n.f60819t)).intValue() != -1) {
                            i2 = a(90000);
                        } else {
                            i2 = this.f60866c;
                            if (i2 <= 0) {
                                i2 = this.f60868e;
                            }
                        }
                    } else {
                        i2 = 0;
                    }
                    this.f60864a = b(this.f60869f.getTestPolicy(), i2);
                } else {
                    int i4 = this.f60867d;
                    int i5 = this.f60868e;
                    int i6 = this.f60865b;
                    if (i6 != -1) {
                        i5 = this.f60866c;
                        i4 = i6;
                    }
                    this.f60864a = b(i4, i5);
                }
            } else {
                ReportPolicy.ReportStrategy reportStrategy = this.f60864a;
                if (!((reportStrategy instanceof ReportPolicy.DefconPolicy) && reportStrategy.isValid())) {
                    defconPolicy = new ReportPolicy.DefconPolicy(StatTracer.getInstance(n.f60811a), service);
                } else {
                    defconPolicy = this.f60864a;
                }
                this.f60864a = defconPolicy;
            }
            if (UMConfigure.isDebugLog()) {
                try {
                    ReportPolicy.ReportStrategy reportStrategy2 = this.f60864a;
                    if (reportStrategy2 instanceof ReportPolicy.ReportAtLaunch) {
                        UMLog.mutlInfo(i.I, 3, "", null, null);
                    } else if (reportStrategy2 instanceof ReportPolicy.ReportByInterval) {
                        UMLog.mutlInfo(i.J, 3, "", new String[]{"@"}, new String[]{String.valueOf(((ReportPolicy.ReportByInterval) reportStrategy2).getReportInterval() / 1000)});
                    } else if (reportStrategy2 instanceof ReportPolicy.DebugPolicy) {
                        UMLog.mutlInfo(i.L, 3, "", null, null);
                    } else if (reportStrategy2 instanceof ReportPolicy.ReportQuasiRealtime) {
                        String[] strArr = {String.valueOf(((ReportPolicy.ReportQuasiRealtime) reportStrategy2).getReportInterval() / 1000)};
                        UMLog uMLog = UMConfigure.umDebugLog;
                        UMLog.mutlInfo(i.M, 3, "", new String[]{"@"}, strArr);
                    } else {
                        boolean z4 = reportStrategy2 instanceof ReportPolicy.DefconPolicy;
                    }
                } catch (Throwable unused) {
                }
            }
        }

        public ReportPolicy.ReportStrategy c() {
            b();
            return this.f60864a;
        }

        public int[] a(int i2, int i4) {
            int intValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(n.f60811a, "report_policy", n.f60819t)).intValue();
            int intValue2 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(n.f60811a, "report_interval", n.f60819t)).intValue();
            if (intValue == -1 || !ReportPolicy.isValid(intValue)) {
                return new int[]{i2, i4};
            }
            if (6 == intValue) {
                return new int[]{intValue, ((intValue2 == -1 || intValue2 < 90 || intValue2 > 86400) ? 90 : 90) * 1000};
            } else if (11 == intValue) {
                return new int[]{intValue, ((intValue2 == -1 || intValue2 < 15 || intValue2 > 3600) ? 15 : 15) * 1000};
            } else {
                return new int[]{i2, i4};
            }
        }

        public int a(int i2) {
            int intValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(n.f60811a, "test_report_interval", n.f60819t)).intValue();
            return (intValue == -1 || intValue < 90 || intValue > 86400) ? i2 : intValue * 1000;
        }

        private ReportPolicy.ReportStrategy b(int i2, int i4) {
            if (i2 == 0) {
                ReportPolicy.ReportStrategy reportStrategy = this.f60864a;
                return reportStrategy instanceof ReportPolicy.ReportRealtime ? reportStrategy : new ReportPolicy.ReportRealtime();
            } else if (i2 == 1) {
                ReportPolicy.ReportStrategy reportStrategy2 = this.f60864a;
                return reportStrategy2 instanceof ReportPolicy.ReportAtLaunch ? reportStrategy2 : new ReportPolicy.ReportAtLaunch();
            } else if (i2 == 4) {
                ReportPolicy.ReportStrategy reportStrategy3 = this.f60864a;
                return reportStrategy3 instanceof ReportPolicy.ReportDaily ? reportStrategy3 : new ReportPolicy.ReportDaily(StatTracer.getInstance(n.f60811a));
            } else if (i2 == 5) {
                ReportPolicy.ReportStrategy reportStrategy4 = this.f60864a;
                return reportStrategy4 instanceof ReportPolicy.ReportWifiOnly ? reportStrategy4 : new ReportPolicy.ReportWifiOnly(n.f60811a);
            } else if (i2 == 6) {
                ReportPolicy.ReportStrategy reportStrategy5 = this.f60864a;
                if (reportStrategy5 instanceof ReportPolicy.ReportByInterval) {
                    ((ReportPolicy.ReportByInterval) reportStrategy5).setReportInterval(i4);
                    return reportStrategy5;
                }
                return new ReportPolicy.ReportByInterval(StatTracer.getInstance(n.f60811a), i4);
            } else if (i2 == 8) {
                ReportPolicy.ReportStrategy reportStrategy6 = this.f60864a;
                return reportStrategy6 instanceof ReportPolicy.SmartPolicy ? reportStrategy6 : new ReportPolicy.SmartPolicy(StatTracer.getInstance(n.f60811a));
            } else if (i2 != 11) {
                ReportPolicy.ReportStrategy reportStrategy7 = this.f60864a;
                return reportStrategy7 instanceof ReportPolicy.ReportAtLaunch ? reportStrategy7 : new ReportPolicy.ReportAtLaunch();
            } else {
                ReportPolicy.ReportStrategy reportStrategy8 = this.f60864a;
                if (reportStrategy8 instanceof ReportPolicy.ReportQuasiRealtime) {
                    ((ReportPolicy.ReportQuasiRealtime) reportStrategy8).setReportInterval(i4);
                    return reportStrategy8;
                }
                ReportPolicy.ReportQuasiRealtime reportQuasiRealtime = new ReportPolicy.ReportQuasiRealtime();
                reportQuasiRealtime.setReportInterval(i4);
                return reportQuasiRealtime;
            }
        }
    }

    private void c(JSONObject jSONObject) {
        try {
            if (!h.a(f60811a).e()) {
                JSONObject g4 = h.a(f60811a).g();
                if (g4 != null) {
                    String optString = g4.optString("__av");
                    String optString2 = g4.optString("__vc");
                    if (TextUtils.isEmpty(optString)) {
                        jSONObject.put("app_version", UMUtils.getAppVersionName(f60811a));
                    } else {
                        jSONObject.put("app_version", optString);
                    }
                    if (TextUtils.isEmpty(optString2)) {
                        jSONObject.put("version_code", UMUtils.getAppVersionCode(f60811a));
                        return;
                    } else {
                        jSONObject.put("version_code", optString2);
                        return;
                    }
                }
                return;
            }
            jSONObject.put("app_version", UMUtils.getAppVersionName(f60811a));
            jSONObject.put("version_code", UMUtils.getAppVersionCode(f60811a));
        } catch (Throwable unused) {
        }
    }

    public void a() {
        if (f60811a != null) {
            synchronized (this.f60836w) {
                if (this.f60834u) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> network is now available, rebuild instant session data packet.");
                    Context context = f60811a;
                    UMWorkDispatch.sendEvent(context, 4353, CoreProtocol.getInstance(context), null);
                }
            }
            synchronized (this.f60836w) {
                if (this.f60835v) {
                    Context context2 = f60811a;
                    UMWorkDispatch.sendEvent(context2, 4354, CoreProtocol.getInstance(context2), null);
                }
            }
        }
    }

    /* compiled from: CoreProtocolImpl.java */
    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private Map<String, Object> f60870a;

        /* renamed from: b  reason: collision with root package name */
        private String f60871b;

        /* renamed from: c  reason: collision with root package name */
        private String f60872c;

        /* renamed from: d  reason: collision with root package name */
        private long f60873d;

        private d() {
            this.f60870a = null;
            this.f60871b = null;
            this.f60872c = null;
            this.f60873d = 0L;
        }

        public Map<String, Object> a() {
            return this.f60870a;
        }

        public String b() {
            return this.f60872c;
        }

        public String c() {
            return this.f60871b;
        }

        public long d() {
            return this.f60873d;
        }

        public d(String str, Map<String, Object> map, String str2, long j4) {
            this.f60870a = null;
            this.f60871b = null;
            this.f60872c = null;
            this.f60873d = 0L;
            this.f60870a = map;
            this.f60871b = str;
            this.f60873d = j4;
            this.f60872c = str2;
        }
    }

    private void h(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null || jSONObject.length() <= 0 || !jSONObject.has("__ii")) {
                return;
            }
            String optString = jSONObject.optString("__ii");
            jSONObject.remove("__ii");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            h.a(f60811a).a(optString, obj.toString(), 2);
        } catch (Throwable unused) {
        }
    }

    private void d(JSONObject jSONObject) {
        String str;
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.length() <= 0) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            if (jSONObject.has("analytics")) {
                JSONObject jSONObject4 = jSONObject.getJSONObject("analytics");
                if (jSONObject4.has("ekv")) {
                    str = "version_code";
                    jSONObject3.put("ekv", jSONObject4.getJSONArray("ekv"));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]事件:" + jSONObject3.toString());
                        } else {
                            MLog.d("事件:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                } else {
                    str = "version_code";
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.T)) {
                    jSONObject3.put(com.umeng.analytics.pro.c.T, jSONObject4.getJSONArray(com.umeng.analytics.pro.c.T));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]游戏事件:" + jSONObject3.toString());
                        } else {
                            MLog.d("游戏事件:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has("error")) {
                    jSONObject3.put("error", jSONObject4.getJSONArray("error"));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]错误:" + jSONObject3.toString());
                        } else {
                            MLog.d("错误:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.f60637n)) {
                    JSONArray jSONArray = jSONObject4.getJSONArray(com.umeng.analytics.pro.c.f60637n);
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject5 = jSONArray.getJSONObject(i2);
                        if (jSONObject5 != null && jSONObject5.length() > 0) {
                            if (jSONObject5.has(com.umeng.analytics.pro.c.f60644u)) {
                                jSONObject5.remove(com.umeng.analytics.pro.c.f60644u);
                            }
                            jSONArray2.put(jSONObject5);
                        }
                    }
                    jSONObject3.put(com.umeng.analytics.pro.c.f60637n, jSONArray2);
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]会话:" + jSONObject3.toString());
                        } else {
                            MLog.d("会话:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.I)) {
                    jSONObject3.put(com.umeng.analytics.pro.c.I, jSONObject4.getJSONObject(com.umeng.analytics.pro.c.I));
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.L)) {
                    jSONObject3.put(com.umeng.analytics.pro.c.L, jSONObject4.getJSONObject(com.umeng.analytics.pro.c.L));
                    if (jSONObject3.length() > 0) {
                        if (AnalyticsConfig.isRealTimeDebugMode()) {
                            MLog.d("[埋点验证模式]账号:" + jSONObject3.toString());
                        } else {
                            MLog.d("账号:" + jSONObject3.toString());
                        }
                        jSONObject3 = new JSONObject();
                    }
                }
            } else {
                str = "version_code";
            }
            if (jSONObject.has("dplus")) {
                jSONObject3.put("dplus", jSONObject.getJSONObject("dplus"));
            }
            if (jSONObject.has("header") && jSONObject.has("header") && (jSONObject2 = jSONObject.getJSONObject("header")) != null && jSONObject2.length() > 0) {
                if (jSONObject2.has("sdk_version")) {
                    jSONObject3.put("sdk_version", jSONObject2.getString("sdk_version"));
                }
                if (jSONObject2.has("device_id")) {
                    jSONObject3.put("device_id", jSONObject2.getString("device_id"));
                }
                if (jSONObject2.has("device_model")) {
                    jSONObject3.put("device_model", jSONObject2.getString("device_model"));
                }
                String str2 = str;
                if (jSONObject2.has(str2)) {
                    jSONObject3.put("version", jSONObject2.getInt(str2));
                }
                if (jSONObject2.has("appkey")) {
                    jSONObject3.put("appkey", jSONObject2.getString("appkey"));
                }
                if (jSONObject2.has("channel")) {
                    jSONObject3.put("channel", jSONObject2.getString("channel"));
                }
                if (jSONObject3.length() > 0) {
                    MLog.d("基础信息:" + jSONObject3.toString());
                    jSONObject3 = new JSONObject();
                }
            }
            jSONObject3.length();
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    public JSONObject b(long j4) {
        if (TextUtils.isEmpty(x.a().d(UMGlobalContext.getAppContext(f60811a)))) {
            return null;
        }
        JSONObject b4 = h.a(UMGlobalContext.getAppContext(f60811a)).b(false);
        String[] a4 = com.umeng.analytics.c.a(f60811a);
        if (a4 != null && !TextUtils.isEmpty(a4[0]) && !TextUtils.isEmpty(a4[1])) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(com.umeng.analytics.pro.c.M, a4[0]);
                jSONObject.put(com.umeng.analytics.pro.c.N, a4[1]);
                if (jSONObject.length() > 0) {
                    b4.put(com.umeng.analytics.pro.c.L, jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
        int a5 = q.a().a(f60811a);
        if (b4.length() != 1 || b4.optJSONObject(com.umeng.analytics.pro.c.L) == null || a5 == 3) {
            q.a().b(b4, f60811a);
            if (b4.length() > 0 || a5 == 3) {
                JSONObject k4 = k();
                if (k4 != null) {
                    b(k4);
                }
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    if (a5 == 3) {
                        jSONObject3.put("analytics", new JSONObject());
                    } else if (b4.length() > 0) {
                        jSONObject3.put("analytics", b4);
                    }
                    if (k4 != null && k4.length() > 0) {
                        jSONObject2.put("header", k4);
                    }
                    if (jSONObject3.length() > 0) {
                        jSONObject2.put("content", jSONObject3);
                    }
                    return b(jSONObject2, j4);
                } catch (Throwable unused2) {
                    return jSONObject2;
                }
            }
            return null;
        }
        return null;
    }

    private boolean c(boolean z3) {
        if (s() || AnalyticsConfig.isRealTimeDebugMode()) {
            return true;
        }
        if (this.f60823b == null) {
            this.f60823b = new c();
        }
        this.f60823b.a();
        ReportPolicy.ReportStrategy c4 = this.f60823b.c();
        boolean shouldSendMessage = c4.shouldSendMessage(z3);
        if (shouldSendMessage) {
            if (((c4 instanceof ReportPolicy.ReportByInterval) || (c4 instanceof ReportPolicy.DebugPolicy) || (c4 instanceof ReportPolicy.ReportQuasiRealtime)) && p()) {
                d();
            }
            if ((c4 instanceof ReportPolicy.DefconPolicy) && p()) {
                d();
            }
            if (UMConfigure.isDebugLog()) {
                MLog.d("数据发送策略 : " + c4.getClass().getSimpleName());
            }
        }
        return shouldSendMessage;
    }

    private void a(String str, String str2) {
        Method method;
        Class<?> cls = f60821y;
        if (cls == null || (method = f60822z) == null) {
            return;
        }
        try {
            method.invoke(cls, str, str2);
        } catch (Throwable unused) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> reflect call setPuidAndProvider method of crash lib failed.");
        }
    }

    private void e(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.length() <= 0) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            if (jSONObject.has("analytics")) {
                JSONObject jSONObject4 = jSONObject.getJSONObject("analytics");
                if (jSONObject4.has(com.umeng.analytics.pro.c.f60637n)) {
                    JSONArray jSONArray = jSONObject4.getJSONArray(com.umeng.analytics.pro.c.f60637n);
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject5 = jSONArray.getJSONObject(i2);
                        if (jSONObject5 != null && jSONObject5.length() > 0) {
                            jSONArray2.put(jSONObject5);
                        }
                    }
                    jSONObject3.put(com.umeng.analytics.pro.c.f60637n, jSONArray2);
                    if (jSONObject3.length() > 0) {
                        MLog.d("本次启动会话:" + jSONObject3.toString());
                        jSONObject3 = new JSONObject();
                    }
                }
                if (jSONObject4.has(com.umeng.analytics.pro.c.L)) {
                    jSONObject3.put(com.umeng.analytics.pro.c.L, jSONObject4.getJSONObject(com.umeng.analytics.pro.c.L));
                    if (jSONObject3.length() > 0) {
                        MLog.d("本次启动账号:" + jSONObject3.toString());
                        jSONObject3 = new JSONObject();
                    }
                }
            }
            if (jSONObject.has("header") && jSONObject.has("header") && (jSONObject2 = jSONObject.getJSONObject("header")) != null && jSONObject2.length() > 0) {
                if (jSONObject2.has("sdk_version")) {
                    jSONObject3.put("sdk_version", jSONObject2.getString("sdk_version"));
                }
                if (jSONObject2.has("device_id")) {
                    jSONObject3.put("device_id", jSONObject2.getString("device_id"));
                }
                if (jSONObject2.has("device_model")) {
                    jSONObject3.put("device_model", jSONObject2.getString("device_model"));
                }
                if (jSONObject2.has("version_code")) {
                    jSONObject3.put("version", jSONObject2.getInt("version_code"));
                }
                if (jSONObject2.has("appkey")) {
                    jSONObject3.put("appkey", jSONObject2.getString("appkey"));
                }
                if (jSONObject2.has("channel")) {
                    jSONObject3.put("channel", jSONObject2.getString("channel"));
                }
                if (jSONObject3.length() > 0) {
                    MLog.d("本次启动基础信息:" + jSONObject3.toString());
                    jSONObject3 = new JSONObject();
                }
            }
            jSONObject3.length();
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    public void a(Object obj, int i2) {
        if (AnalyticsConfig.enable) {
            try {
                switch (i2) {
                    case 4097:
                        if (UMUtils.isMainProgress(f60811a)) {
                            if (obj != null) {
                                e(obj);
                            }
                            if (f60819t.equals(((JSONObject) obj).optString("__i"))) {
                                return;
                            }
                            a(false);
                            return;
                        }
                        UMProcessDBHelper.getInstance(f60811a).insertEventsInSubProcess(UMFrUtils.getSubProcessName(f60811a), new JSONArray().put(obj));
                        return;
                    case 4098:
                        if (obj != null) {
                            e(obj);
                        }
                        if (f60819t.equals(((JSONObject) obj).optString("__i"))) {
                            return;
                        }
                        a(false);
                        return;
                    case 4099:
                        u.a(f60811a);
                        return;
                    case a.f60840d /* 4100 */:
                        k.c(f60811a);
                        return;
                    case a.f60841e /* 4101 */:
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_SIGNIN");
                        a((Object) null, true);
                        g(obj);
                        return;
                    case a.f60842f /* 4102 */:
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_SIGNOFF");
                        a((Object) null, true);
                        f(obj);
                        return;
                    case a.f60843g /* 4103 */:
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> START_SESSION");
                        t.a().a(f60811a, obj);
                        synchronized (this.f60836w) {
                            this.f60835v = true;
                        }
                        return;
                    case a.f60844h /* 4104 */:
                        t.a().c(f60811a, obj);
                        return;
                    case a.f60845i /* 4105 */:
                        d();
                        return;
                    case a.f60846j /* 4106 */:
                        h(obj);
                        return;
                    default:
                        switch (i2) {
                            case 4352:
                                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> INSTANT_SESSION_START");
                                t.a().b(f60811a, obj);
                                synchronized (this.f60836w) {
                                    this.f60834u = true;
                                }
                                return;
                            case 4353:
                                a(obj, true);
                                return;
                            case 4354:
                                c();
                                return;
                            case 4355:
                                if (!UMUtils.isMainProgress(f60811a)) {
                                    UMProcessDBHelper.getInstance(f60811a).insertEventsInSubProcess(UMFrUtils.getSubProcessName(f60811a), new JSONArray().put(obj));
                                    return;
                                } else if (obj != null) {
                                    e(obj);
                                    d();
                                    return;
                                } else {
                                    return;
                                }
                            case 4356:
                                if (obj == null || f60821y == null || f60822z == null) {
                                    return;
                                }
                                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> PROFILE_CHANGE_NOTIFY");
                                String str = "";
                                String str2 = "";
                                if (obj instanceof JSONObject) {
                                    JSONObject jSONObject = (JSONObject) obj;
                                    if (jSONObject.has("uid") && jSONObject.has(com.umeng.analytics.pro.c.M)) {
                                        str = jSONObject.getString(com.umeng.analytics.pro.c.M);
                                        str2 = jSONObject.getString("uid");
                                    }
                                    a(str2, str);
                                    return;
                                }
                                return;
                            default:
                                switch (i2) {
                                    case a.f60854r /* 8195 */:
                                        com.umeng.analytics.b.a().a(obj);
                                        return;
                                    case a.f60855s /* 8196 */:
                                        com.umeng.analytics.b.a().m();
                                        return;
                                    case a.f60856t /* 8197 */:
                                        com.umeng.analytics.b.a().k();
                                        return;
                                    default:
                                        switch (i2) {
                                            case a.f60857u /* 8199 */:
                                            case a.f60858v /* 8200 */:
                                                com.umeng.analytics.b.a().b(obj);
                                                return;
                                            case a.f60859w /* 8201 */:
                                                com.umeng.analytics.b.a().b((Object) null);
                                                return;
                                            default:
                                                switch (i2) {
                                                    case a.f60860x /* 8208 */:
                                                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> receive DELAY_BUILD_ENVELOPE event.");
                                                        Context context = f60811a;
                                                        UMWorkDispatch.sendEvent(context, a.f60861y, CoreProtocol.getInstance(context), null);
                                                        Context context2 = f60811a;
                                                        UMWorkDispatch.sendEvent(context2, 4354, CoreProtocol.getInstance(context2), null);
                                                        return;
                                                    case a.f60861y /* 8209 */:
                                                        a(obj, false);
                                                        return;
                                                    case a.f60862z /* 8210 */:
                                                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> recv BUILD_ENVELOPE_IMMEDIATELY.");
                                                        if (!UMUtils.isMainProgress(f60811a) || (this.f60823b.c() instanceof ReportPolicy.ReportQuasiRealtime)) {
                                                            return;
                                                        }
                                                        a(true);
                                                        return;
                                                    default:
                                                        switch (i2) {
                                                            case a.C /* 8213 */:
                                                                if (FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
                                                                    if (DeviceConfig.getGlobleActivity(f60811a) != null) {
                                                                        t.b(f60811a);
                                                                    }
                                                                    Context context3 = f60811a;
                                                                    UMWorkDispatch.sendEventEx(context3, a.C, CoreProtocol.getInstance(context3), null, 5000L);
                                                                    return;
                                                                }
                                                                return;
                                                            case a.D /* 8214 */:
                                                                if (obj != null && (obj instanceof JSONObject)) {
                                                                    String optString = ((JSONObject) obj).optString(AnalyticsConfig.RTD_START_TIME);
                                                                    String optString2 = ((JSONObject) obj).optString("period");
                                                                    String optString3 = ((JSONObject) obj).optString(AnalyticsConfig.DEBUG_KEY);
                                                                    if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2) || TextUtils.isEmpty(optString3)) {
                                                                        return;
                                                                    }
                                                                    com.umeng.common.b.a(f60811a, AnalyticsConfig.RTD_SP_FILE, AnalyticsConfig.RTD_START_TIME, optString);
                                                                    com.umeng.common.b.a(f60811a, AnalyticsConfig.RTD_SP_FILE, "period", optString2);
                                                                    com.umeng.common.b.a(f60811a, AnalyticsConfig.RTD_SP_FILE, AnalyticsConfig.DEBUG_KEY, optString3);
                                                                    return;
                                                                }
                                                                return;
                                                            case a.E /* 8215 */:
                                                                com.umeng.common.b.a(f60811a, AnalyticsConfig.RTD_SP_FILE);
                                                                return;
                                                            default:
                                                                return;
                                                        }
                                                }
                                        }
                                }
                        }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void g(Object obj) {
        try {
            b(f60811a);
            d();
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                String string = jSONObject.getString(com.umeng.analytics.pro.c.M);
                String string2 = jSONObject.getString("uid");
                long j4 = jSONObject.getLong("ts");
                String[] a4 = com.umeng.analytics.c.a(f60811a);
                if (a4 != null && string.equals(a4[0]) && string2.equals(a4[1])) {
                    return;
                }
                t.a().a(f60811a, j4);
                String c4 = x.a().c(f60811a);
                boolean b4 = t.a().b(f60811a, j4, false);
                com.umeng.analytics.c.a(f60811a, string, string2);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onProfileSignIn: force generate new session: session id = " + c4);
                t.a().a(f60811a, j4, true);
                if (b4) {
                    t.a().b(f60811a, j4);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public long f() {
        SharedPreferences sharedPreferences;
        try {
            Context context = f60811a;
            if (context == null || (sharedPreferences = PreferenceWrapper.getDefault(context)) == null) {
                return 0L;
            }
            long j4 = sharedPreferences.getLong(f60812l, 0L);
            if (j4 == 0) {
                try {
                    long currentTimeMillis = System.currentTimeMillis();
                    sharedPreferences.edit().putLong(f60812l, currentTimeMillis).commit();
                    return currentTimeMillis;
                } catch (Throwable unused) {
                }
            }
            return j4;
        } catch (Throwable unused2) {
            return 0L;
        }
    }

    public void c(Object obj) {
        b(f60811a);
        d();
        if (d(false)) {
            j();
        }
    }

    private void f(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                long j4 = jSONObject.getLong("ts");
                b(f60811a);
                d();
                String[] a4 = com.umeng.analytics.c.a(f60811a);
                if (a4 == null || TextUtils.isEmpty(a4[0]) || TextUtils.isEmpty(a4[1])) {
                    return;
                }
                t.a().a(f60811a, j4);
                String c4 = x.a().c(f60811a);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onProfileSignIn: force generate new session: session id = " + c4);
                boolean b4 = t.a().b(f60811a, j4, false);
                com.umeng.analytics.c.b(f60811a);
                t.a().a(f60811a, j4, true);
                if (b4) {
                    t.a().b(f60811a, j4);
                }
            }
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    private JSONObject b(JSONObject jSONObject, long j4) {
        try {
            if (p.a(jSONObject) > j4) {
                jSONObject = null;
                h.a(f60811a).a(true, false);
                h.a(f60811a).b();
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> Instant session packet overload !!! ");
                return null;
            }
            return jSONObject;
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    public JSONObject b(boolean z3) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONObject jSONObject = null;
        try {
            jSONObject = h.a(f60811a).a(z3);
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            } else {
                try {
                    if (jSONObject.has(com.umeng.analytics.pro.c.f60637n)) {
                        JSONArray jSONArray3 = jSONObject.getJSONArray(com.umeng.analytics.pro.c.f60637n);
                        JSONArray jSONArray4 = new JSONArray();
                        int i2 = 0;
                        while (i2 < jSONArray3.length()) {
                            JSONObject jSONObject2 = (JSONObject) jSONArray3.get(i2);
                            JSONArray optJSONArray = jSONObject2.optJSONArray(com.umeng.analytics.pro.c.f60643t);
                            JSONArray optJSONArray2 = jSONObject2.optJSONArray(com.umeng.analytics.pro.c.f60644u);
                            if (optJSONArray == null && optJSONArray2 != null) {
                                jSONObject2.put(com.umeng.analytics.pro.c.f60643t, optJSONArray2);
                                jSONObject2.remove(com.umeng.analytics.pro.c.f60644u);
                            }
                            if (optJSONArray != null && optJSONArray2 != null) {
                                ArrayList<JSONObject> arrayList = new ArrayList();
                                for (int i4 = 0; i4 < optJSONArray.length(); i4++) {
                                    arrayList.add((JSONObject) optJSONArray.get(i4));
                                }
                                for (int i5 = 0; i5 < optJSONArray2.length(); i5++) {
                                    arrayList.add((JSONObject) optJSONArray2.get(i5));
                                }
                                JSONArraySortUtil jSONArraySortUtil = new JSONArraySortUtil();
                                jSONArraySortUtil.setCompareKey(com.umeng.analytics.pro.c.f60647x);
                                Collections.sort(arrayList, jSONArraySortUtil);
                                JSONArray jSONArray5 = new JSONArray();
                                for (JSONObject jSONObject3 : arrayList) {
                                    jSONArray5.put(jSONObject3);
                                }
                                jSONObject2.put(com.umeng.analytics.pro.c.f60643t, jSONArray5);
                                jSONObject2.remove(com.umeng.analytics.pro.c.f60644u);
                            }
                            if (jSONObject2.has(com.umeng.analytics.pro.c.f60643t)) {
                                JSONArray optJSONArray3 = jSONObject2.optJSONArray(com.umeng.analytics.pro.c.f60643t);
                                int i6 = 0;
                                while (i6 < optJSONArray3.length()) {
                                    JSONObject jSONObject4 = optJSONArray3.getJSONObject(i6);
                                    if (jSONObject4.has(com.umeng.analytics.pro.c.f60647x)) {
                                        jSONArray2 = jSONArray3;
                                        jSONObject4.put("ts", jSONObject4.getLong(com.umeng.analytics.pro.c.f60647x));
                                        jSONObject4.remove(com.umeng.analytics.pro.c.f60647x);
                                    } else {
                                        jSONArray2 = jSONArray3;
                                    }
                                    i6++;
                                    jSONArray3 = jSONArray2;
                                }
                                jSONArray = jSONArray3;
                                jSONObject2.put(com.umeng.analytics.pro.c.f60643t, optJSONArray3);
                                jSONObject2.put(com.umeng.analytics.pro.c.f60649z, optJSONArray3.length());
                            } else {
                                jSONArray = jSONArray3;
                                jSONObject2.put(com.umeng.analytics.pro.c.f60649z, 0);
                            }
                            jSONArray4.put(jSONObject2);
                            i2++;
                            jSONArray3 = jSONArray;
                        }
                        jSONObject.put(com.umeng.analytics.pro.c.f60637n, jSONArray4);
                    }
                } catch (Exception e4) {
                    MLog.e("merge pages error");
                    e4.printStackTrace();
                }
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f60811a);
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("userlevel", "");
                if (!TextUtils.isEmpty(string)) {
                    jSONObject.put("userlevel", string);
                }
            }
            String[] a4 = com.umeng.analytics.c.a(f60811a);
            if (a4 != null && !TextUtils.isEmpty(a4[0]) && !TextUtils.isEmpty(a4[1])) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put(com.umeng.analytics.pro.c.M, a4[0]);
                jSONObject5.put(com.umeng.analytics.pro.c.N, a4[1]);
                if (jSONObject5.length() > 0) {
                    jSONObject.put(com.umeng.analytics.pro.c.L, jSONObject5);
                }
            }
            if (ABTest.getService(f60811a).isInTest()) {
                JSONObject jSONObject6 = new JSONObject();
                jSONObject6.put(ABTest.getService(f60811a).getTestName(), ABTest.getService(f60811a).getGroupInfo());
                jSONObject.put(com.umeng.analytics.pro.c.K, jSONObject6);
            }
            q.a().a(jSONObject, f60811a);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public void e() {
        if (d(false)) {
            j();
        }
    }

    public void d(Object obj) {
        r();
        m();
        n();
        a(true);
    }

    private boolean d(boolean z3) {
        if (this.f60823b == null) {
            this.f60823b = new c();
        }
        ReportPolicy.ReportStrategy c4 = this.f60823b.c();
        if (c4 instanceof ReportPolicy.DefconPolicy) {
            if (z3) {
                return ((ReportPolicy.DefconPolicy) c4).shouldSendMessageByInstant();
            }
            return c4.shouldSendMessage(false);
        }
        return true;
    }

    public void b(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() > 0) {
                    if (jSONObject.has("exception")) {
                        if (101 != jSONObject.getInt("exception")) {
                            f(jSONObject);
                        }
                    } else {
                        f(jSONObject);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void b(Context context) {
        try {
            h.a(context).d();
            q();
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z3) {
        if (c(z3)) {
            if (!(this.f60823b.c() instanceof ReportPolicy.ReportQuasiRealtime)) {
                if (UMEnvelopeBuild.isReadyBuild(f60811a, UMLogDataProtocol.UMBusinessType.U_APP)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> constructMessage()");
                    j();
                }
            } else if (z3) {
                if (UMEnvelopeBuild.isOnline(f60811a)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send session start in policy ReportQuasiRealtime.");
                    j();
                }
            } else if (UMEnvelopeBuild.isReadyBuild(f60811a, UMLogDataProtocol.UMBusinessType.U_APP)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send normal data in policy ReportQuasiRealtime.");
                j();
            }
        }
    }

    private boolean a(JSONArray jSONArray) {
        int length = jSONArray.length();
        List asList = Arrays.asList("$$_onUMengEnterForeground", "$$_onUMengEnterBackground", "$$_onUMengEnterForegroundInitError");
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            try {
                JSONObject optJSONObject = jSONArray.optJSONObject(i4);
                if (optJSONObject != null && asList.contains(optJSONObject.optString("id"))) {
                    i2++;
                }
            } catch (Throwable unused) {
            }
        }
        return i2 >= length;
    }

    private boolean a(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("ekv");
        int length = optJSONArray.length();
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            try {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i4);
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray(keys.next());
                    if (optJSONArray2 != null && a(optJSONArray2)) {
                        i2++;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return i2 >= length;
    }

    public JSONObject a(long j4) {
        if (TextUtils.isEmpty(x.a().d(f60811a))) {
            return null;
        }
        JSONObject b4 = b(false);
        int a4 = q.a().a(f60811a);
        if (b4.length() > 0) {
            if (b4.length() == 1) {
                if (b4.optJSONObject(com.umeng.analytics.pro.c.L) != null && a4 != 3) {
                    return null;
                }
                if (!TextUtils.isEmpty(b4.optString("userlevel")) && a4 != 3) {
                    return null;
                }
            } else if (b4.length() == 2 && b4.optJSONObject(com.umeng.analytics.pro.c.L) != null && !TextUtils.isEmpty(b4.optString("userlevel")) && a4 != 3) {
                return null;
            }
            String optString = b4.optString(com.umeng.analytics.pro.c.f60637n);
            String optString2 = b4.optString(com.umeng.analytics.pro.c.T);
            String optString3 = b4.optString("ekv");
            if (TextUtils.isEmpty(optString) && TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString3) && a(b4)) {
                return null;
            }
        } else if (a4 != 3) {
            return null;
        }
        JSONObject l4 = l();
        if (l4 != null) {
            c(l4);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (a4 == 3) {
                jSONObject2.put("analytics", new JSONObject());
            } else if (b4.length() > 0) {
                jSONObject2.put("analytics", b4);
            }
            if (l4 != null && l4.length() > 0) {
                jSONObject.put("header", l4);
            }
            if (jSONObject2.length() > 0) {
                jSONObject.put("content", jSONObject2);
            }
            return a(jSONObject, j4);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    private JSONObject a(JSONObject jSONObject, long j4) {
        try {
            if (p.a(jSONObject) > j4) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("header");
                jSONObject2.put(com.umeng.analytics.pro.c.aB, p.a(jSONObject));
                jSONObject.put("header", jSONObject2);
                return p.a(f60811a, j4, jSONObject);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    private boolean a(long j4, int i2) {
        if (j4 != 0) {
            if (System.currentTimeMillis() - j4 <= 28800000) {
                return i2 < 5000;
            }
            o();
            return true;
        }
        return true;
    }

    public void a(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() > 0) {
                    if (jSONObject.has("exception")) {
                        if (101 != jSONObject.getInt("exception")) {
                            g(jSONObject);
                        }
                    } else {
                        g(jSONObject);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void a(Object obj, boolean z3) {
        if (z3) {
            if (d(true)) {
                i();
            }
        } else if (UMEnvelopeBuild.isOnline(f60811a) && d(true)) {
            i();
        }
    }
}
