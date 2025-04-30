package com.umeng.commonsdk.internal;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.umeng.analytics.pro.ai;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.internal.utils.a;
import com.umeng.commonsdk.internal.utils.d;
import com.umeng.commonsdk.internal.utils.j;
import com.umeng.commonsdk.internal.utils.k;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UMInternalManager.java */
/* loaded from: classes4.dex */
public class d {
    public static void a(Context context) {
        try {
            ULog.i("walle", "[internal] workEvent send envelope");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ai.aK, a.f61130e);
            JSONObject buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, d(context), UMServerURL.PATH_ANALYTICS, ai.aA, a.f61130e);
            if (buildEnvelopeWithExtHeader == null || buildEnvelopeWithExtHeader.has("exception")) {
                return;
            }
            ULog.i("walle", "[internal] workEvent send envelope back, result is ok");
            com.umeng.commonsdk.internal.utils.a.e(context);
        } catch (Exception e4) {
            UMCrashManager.reportCrash(context, e4);
        }
    }

    public static void b(Context context) {
        ULog.i("walle", "[internal] begin by stateful--->>>");
        if (context != null) {
            j(context);
        }
    }

    public static void c(Context context) {
        ULog.i("walle", "[internal] begin by stateful--->>>");
        if (context == null || !UMEnvelopeBuild.getTransmissionSendFlag()) {
            return;
        }
        j(context);
    }

    public static JSONObject d(Context context) {
        JSONArray h4;
        JSONArray k4;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.I) && (k4 = k(applicationContext)) != null && k4.length() > 0) {
                    jSONObject2.put("rs", k4);
                }
            } catch (Exception e4) {
                UMCrashManager.reportCrash(applicationContext, e4);
            }
            try {
                JSONArray l4 = l(applicationContext);
                if (l4 != null && l4.length() > 0) {
                    jSONObject2.put("by", l4);
                }
            } catch (Exception e5) {
                UMCrashManager.reportCrash(applicationContext, e5);
            }
            try {
                a(applicationContext, jSONObject2);
            } catch (Exception e6) {
                UMCrashManager.reportCrash(applicationContext, e6);
            }
            try {
                b(applicationContext, jSONObject2);
            } catch (Exception e7) {
                UMCrashManager.reportCrash(applicationContext, e7);
            }
            try {
                JSONObject a4 = a();
                if (a4 != null && a4.length() > 0) {
                    jSONObject2.put(JsonPOJOBuilder.DEFAULT_BUILD_METHOD, a4);
                }
            } catch (Exception e8) {
                UMCrashManager.reportCrash(applicationContext, e8);
            }
            try {
                JSONObject e9 = e(applicationContext);
                if (e9 != null && e9.length() > 0) {
                    jSONObject2.put("scr", e9);
                }
            } catch (Exception e10) {
                UMCrashManager.reportCrash(applicationContext, e10);
            }
            try {
                JSONObject f4 = f(applicationContext);
                if (f4 != null && f4.length() > 0) {
                    jSONObject2.put("sinfo", f4);
                }
            } catch (Exception e11) {
                UMCrashManager.reportCrash(applicationContext, e11);
            }
            try {
                JSONObject jSONObject3 = new JSONObject();
                JSONArray d4 = com.umeng.commonsdk.internal.utils.a.d(applicationContext);
                if (d4 != null && d4.length() > 0) {
                    try {
                        jSONObject3.put("wl", d4);
                    } catch (JSONException unused) {
                    }
                }
                jSONObject2.put("winfo", jSONObject3);
            } catch (Exception e12) {
                UMCrashManager.reportCrash(applicationContext, e12);
            }
            try {
                JSONArray g4 = g(applicationContext);
                if (g4 != null && g4.length() > 0) {
                    jSONObject2.put("input", g4);
                }
            } catch (Exception e13) {
                UMCrashManager.reportCrash(applicationContext, e13);
            }
            try {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.af) && (h4 = h(applicationContext)) != null && h4.length() > 0) {
                    jSONObject2.put("appls", h4);
                }
            } catch (Exception e14) {
                UMCrashManager.reportCrash(applicationContext, e14);
            }
            try {
                JSONObject i2 = i(applicationContext);
                if (i2 != null && i2.length() > 0) {
                    jSONObject2.put("mem", i2);
                }
            } catch (Exception e15) {
                UMCrashManager.reportCrash(applicationContext, e15);
            }
            try {
                JSONObject b4 = b();
                if (b4 != null && b4.length() > 0) {
                    jSONObject2.put(ai.f60423w, b4);
                }
            } catch (Exception unused2) {
            }
            try {
                jSONObject.put(ai.as, jSONObject2);
            } catch (JSONException e16) {
                UMCrashManager.reportCrash(applicationContext, e16);
            }
        }
        return jSONObject;
    }

    public static JSONObject e(Context context) {
        DisplayMetrics displayMetrics;
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            try {
                jSONObject.put("a_st_h", com.umeng.commonsdk.internal.utils.a.g(context));
                jSONObject.put("a_nav_h", com.umeng.commonsdk.internal.utils.a.h(context));
                if (context.getResources() != null && (displayMetrics = context.getResources().getDisplayMetrics()) != null) {
                    jSONObject.put("a_den", displayMetrics.density);
                    jSONObject.put("a_dpi", displayMetrics.densityDpi);
                }
            } catch (Exception e4) {
                UMCrashManager.reportCrash(context, e4);
            }
        }
        return jSONObject;
    }

    public static JSONObject f(Context context) {
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String packageName = applicationContext.getPackageName();
            try {
                jSONObject.put("a_fit", com.umeng.commonsdk.internal.utils.a.a(applicationContext, packageName));
                jSONObject.put("a_alut", com.umeng.commonsdk.internal.utils.a.b(applicationContext, packageName));
                jSONObject.put("a_c", com.umeng.commonsdk.internal.utils.a.c(applicationContext, packageName));
                jSONObject.put("a_uid", com.umeng.commonsdk.internal.utils.a.d(applicationContext, packageName));
                if (com.umeng.commonsdk.internal.utils.a.a()) {
                    jSONObject.put("a_root", 1);
                } else {
                    jSONObject.put("a_root", 0);
                }
                jSONObject.put("tf", com.umeng.commonsdk.internal.utils.a.b());
                jSONObject.put("s_fs", com.umeng.commonsdk.internal.utils.a.a(applicationContext));
                jSONObject.put("a_meid", DeviceConfig.getMeid(applicationContext));
                jSONObject.put("a_imsi", DeviceConfig.getImsi(applicationContext));
                jSONObject.put("st", com.umeng.commonsdk.internal.utils.a.d());
                String simICCID = DeviceConfig.getSimICCID(applicationContext);
                if (!TextUtils.isEmpty(simICCID)) {
                    try {
                        jSONObject.put("a_iccid", simICCID);
                    } catch (Exception unused) {
                    }
                }
                String secondSimIMEi = DeviceConfig.getSecondSimIMEi(applicationContext);
                if (!TextUtils.isEmpty(secondSimIMEi)) {
                    try {
                        jSONObject.put("a_simei", secondSimIMEi);
                    } catch (Exception unused2) {
                    }
                }
                jSONObject.put("hn", com.umeng.commonsdk.internal.utils.a.e());
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e4) {
                UMCrashManager.reportCrash(applicationContext, e4);
            }
        }
        return jSONObject;
    }

    public static JSONArray g(Context context) {
        Context applicationContext;
        List<InputMethodInfo> j4;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (j4 = com.umeng.commonsdk.internal.utils.a.j((applicationContext = context.getApplicationContext()))) != null) {
            for (InputMethodInfo inputMethodInfo : j4) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("a_id", inputMethodInfo.getId());
                    jSONObject.put("a_pn", inputMethodInfo.getPackageName());
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONArray.put(jSONObject);
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(applicationContext, th);
                }
            }
        }
        return jSONArray;
    }

    public static JSONArray h(Context context) {
        Context applicationContext;
        List<a.C0355a> k4;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (k4 = com.umeng.commonsdk.internal.utils.a.k((applicationContext = context.getApplicationContext()))) != null && !k4.isEmpty()) {
            for (a.C0355a c0355a : k4) {
                if (c0355a != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_pn", c0355a.f61170a);
                        jSONObject.put("a_la", c0355a.f61171b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        jSONArray.put(jSONObject);
                    } catch (Exception e4) {
                        UMCrashManager.reportCrash(applicationContext, e4);
                    }
                }
            }
        }
        return jSONArray;
    }

    public static JSONObject i(Context context) {
        Context applicationContext;
        ActivityManager.MemoryInfo l4;
        JSONObject jSONObject = new JSONObject();
        if (context != null && (l4 = com.umeng.commonsdk.internal.utils.a.l((applicationContext = context.getApplicationContext()))) != null) {
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    jSONObject.put(ai.aF, l4.totalMem);
                }
                jSONObject.put("f", l4.availMem);
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e4) {
                UMCrashManager.reportCrash(applicationContext, e4);
            }
        }
        return jSONObject;
    }

    private static void j(Context context) {
        try {
            if (UMEnvelopeBuild.isReadyBuild(context, UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                UMWorkDispatch.sendEvent(context, a.f61131f, b.a(context).a(), null);
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 冷启动：5秒后触发2号数据仓遗留信封检查动作。");
            UMWorkDispatch.sendEvent(context, a.f61147v, b.a(context).a(), null, 5000L);
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
    }

    private static JSONArray k(Context context) {
        List<ActivityManager.RunningServiceInfo> runningServices;
        JSONArray jSONArray = null;
        if (context == null) {
            return null;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager == null || (runningServices = activityManager.getRunningServices(Integer.MAX_VALUE)) == null || runningServices.isEmpty()) {
                return null;
            }
            for (int i2 = 0; i2 < runningServices.size(); i2++) {
                if (runningServices.get(i2) != null && runningServices.get(i2).service != null && runningServices.get(i2).service.getClassName() != null && runningServices.get(i2).service.getPackageName() != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("sn", runningServices.get(i2).service.getClassName().toString());
                        jSONObject.put("pn", runningServices.get(i2).service.getPackageName().toString());
                        if (jSONArray == null) {
                            jSONArray = new JSONArray();
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
            }
            if (jSONArray != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ts", System.currentTimeMillis());
                    jSONObject2.put("ls", jSONArray);
                } catch (JSONException unused2) {
                }
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("sers", jSONObject2);
                } catch (JSONException unused3) {
                }
                JSONArray jSONArray2 = new JSONArray();
                try {
                    jSONArray2.put(jSONObject3);
                    return jSONArray2;
                } catch (Throwable th) {
                    th = th;
                    jSONArray = jSONArray2;
                    UMCrashManager.reportCrash(context, th);
                    return jSONArray;
                }
            }
            return jSONArray;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static JSONArray l(Context context) {
        JSONArray jSONArray = new JSONArray();
        String a4 = j.a(context);
        if (!TextUtils.isEmpty(a4)) {
            try {
                jSONArray.put(new JSONObject(a4));
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    private static JSONObject b() {
        try {
            d.a a4 = com.umeng.commonsdk.internal.utils.d.a();
            if (a4 != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("pro", a4.f61197a);
                    jSONObject.put("pla", a4.f61198b);
                    jSONObject.put("cpus", a4.f61199c);
                    jSONObject.put("fea", a4.f61200d);
                    jSONObject.put("imp", a4.f61201e);
                    jSONObject.put("arc", a4.f61202f);
                    jSONObject.put("var", a4.f61203g);
                    jSONObject.put("par", a4.f61204h);
                    jSONObject.put("rev", a4.f61205i);
                    jSONObject.put("har", a4.f61206j);
                    jSONObject.put("rev", a4.f61207k);
                    jSONObject.put("ser", a4.f61208l);
                    jSONObject.put("cur_cpu", com.umeng.commonsdk.internal.utils.d.d());
                    jSONObject.put("max_cpu", com.umeng.commonsdk.internal.utils.d.b());
                    jSONObject.put("min_cpu", com.umeng.commonsdk.internal.utils.d.c());
                    jSONObject.put("ts", System.currentTimeMillis());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
            return null;
        } catch (Exception unused2) {
            return null;
        }
    }

    private static void a(Context context, JSONObject jSONObject) {
        PackageManager packageManager;
        if (context == null || (packageManager = context.getApplicationContext().getPackageManager()) == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        a(jSONObject, "gp", packageManager.hasSystemFeature("android.hardware.location.gps"));
        a(jSONObject, TypedValues.TransitionType.S_TO, packageManager.hasSystemFeature("android.hardware.touchscreen"));
        a(jSONObject, "mo", packageManager.hasSystemFeature("android.hardware.telephony"));
        a(jSONObject, "ca", packageManager.hasSystemFeature("android.hardware.camera"));
        a(jSONObject, "fl", packageManager.hasSystemFeature("android.hardware.camera.flash"));
    }

    private static void a(JSONObject jSONObject, String str, boolean z3) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (z3) {
                jSONObject.put(str, 1);
            } else {
                jSONObject.put(str, 0);
            }
        } catch (Exception unused) {
        }
    }

    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("a_pr", Build.PRODUCT);
            jSONObject.put("a_bl", Build.BOOTLOADER);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 14) {
                jSONObject.put("a_rv", Build.getRadioVersion());
            }
            jSONObject.put("a_fp", Build.FINGERPRINT);
            jSONObject.put("a_hw", Build.HARDWARE);
            jSONObject.put("a_host", Build.HOST);
            int i4 = 0;
            if (i2 >= 21) {
                JSONArray jSONArray = new JSONArray();
                int i5 = 0;
                while (true) {
                    String[] strArr = Build.SUPPORTED_32_BIT_ABIS;
                    if (i5 >= strArr.length) {
                        break;
                    }
                    jSONArray.put(strArr[i5]);
                    i5++;
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("a_s32", jSONArray);
                }
            }
            if (Build.VERSION.SDK_INT >= 21) {
                JSONArray jSONArray2 = new JSONArray();
                int i6 = 0;
                while (true) {
                    String[] strArr2 = Build.SUPPORTED_64_BIT_ABIS;
                    if (i6 >= strArr2.length) {
                        break;
                    }
                    jSONArray2.put(strArr2[i6]);
                    i6++;
                }
                if (jSONArray2.length() > 0) {
                    jSONObject.put("a_s64", jSONArray2);
                }
            }
            if (Build.VERSION.SDK_INT >= 21) {
                JSONArray jSONArray3 = new JSONArray();
                while (true) {
                    String[] strArr3 = Build.SUPPORTED_ABIS;
                    if (i4 >= strArr3.length) {
                        break;
                    }
                    jSONArray3.put(strArr3[i4]);
                    i4++;
                }
                if (jSONArray3.length() > 0) {
                    jSONObject.put("a_sa", jSONArray3);
                }
            }
            jSONObject.put("a_ta", Build.TAGS);
            jSONObject.put("a_uk", "unknown");
            jSONObject.put("a_user", Build.USER);
            jSONObject.put("a_cpu1", Build.CPU_ABI);
            jSONObject.put("a_cpu2", Build.CPU_ABI2);
            jSONObject.put("a_ra", Build.RADIO);
            if (Build.VERSION.SDK_INT >= 23) {
                jSONObject.put("a_bos", Build.VERSION.BASE_OS);
                jSONObject.put("a_pre", Build.VERSION.PREVIEW_SDK_INT);
                jSONObject.put("a_sp", Build.VERSION.SECURITY_PATCH);
            }
            jSONObject.put("a_cn", Build.VERSION.CODENAME);
            jSONObject.put("a_intl", Build.VERSION.INCREMENTAL);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static void b(Context context, JSONObject jSONObject) {
        if (context != null) {
            String a4 = k.a(context);
            if (TextUtils.isEmpty(a4)) {
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(a4);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                if (jSONObject2.has(k.f61236d)) {
                    jSONObject.put(k.f61236d, jSONObject2.opt(k.f61236d));
                }
                if (jSONObject2.has(k.f61235c)) {
                    jSONObject.put(k.f61235c, jSONObject2.opt(k.f61235c));
                }
                if (jSONObject2.has(k.f61234b)) {
                    jSONObject.put(k.f61234b, jSONObject2.opt(k.f61234b));
                }
            } catch (Exception unused) {
            }
        }
    }
}
