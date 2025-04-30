package com.qq.e.comm.managers.setting;

import android.text.TextUtils;
import com.qq.e.comm.util.GDTLogger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public final class GlobalSetting {
    public static final String BD_SDK_WRAPPER = "BD";
    public static final String KS_SDK_WRAPPER = "KS";
    public static final String TT_SDK_WRAPPER = "TT";

    /* renamed from: a  reason: collision with root package name */
    private static volatile Integer f56472a = null;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f56473b = false;

    /* renamed from: c  reason: collision with root package name */
    private static volatile boolean f56474c = true;

    /* renamed from: d  reason: collision with root package name */
    private static volatile Integer f56475d;

    /* renamed from: e  reason: collision with root package name */
    private static volatile Boolean f56476e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile Boolean f56477f;

    /* renamed from: g  reason: collision with root package name */
    private static volatile Boolean f56478g;

    /* renamed from: h  reason: collision with root package name */
    private static volatile Map<String, String> f56479h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    private static volatile Map<String, String> f56480i = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    private static final Map<String, String> f56481j = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    private static final JSONObject f56482k = new JSONObject();

    /* renamed from: l  reason: collision with root package name */
    private static volatile String f56483l = null;

    /* renamed from: m  reason: collision with root package name */
    private static volatile String f56484m = null;

    /* renamed from: n  reason: collision with root package name */
    private static volatile String f56485n = null;

    /* renamed from: o  reason: collision with root package name */
    private static volatile String f56486o = null;

    /* renamed from: p  reason: collision with root package name */
    private static volatile String f56487p = null;

    public static Boolean getAgreeReadAndroidId() {
        return f56478g;
    }

    public static Boolean getAgreeReadDeviceId() {
        return f56477f;
    }

    public static Integer getChannel() {
        return f56472a;
    }

    public static String getCustomADActivityClassName() {
        return f56483l;
    }

    public static String getCustomLandscapeActivityClassName() {
        return f56486o;
    }

    public static String getCustomPortraitActivityClassName() {
        return f56484m;
    }

    public static String getCustomRewardvideoLandscapeActivityClassName() {
        return f56487p;
    }

    public static String getCustomRewardvideoPortraitActivityClassName() {
        return f56485n;
    }

    public static Map<String, String> getExtraUserData() {
        return Collections.unmodifiableMap(f56479h);
    }

    public static Integer getPersonalizedState() {
        return f56475d;
    }

    public static Map<String, String> getPreloadAdapterMaps() {
        return f56481j;
    }

    public static JSONObject getSettings() {
        return f56482k;
    }

    public static boolean isAgreePrivacyStrategy() {
        return f56476e == null || f56476e.booleanValue();
    }

    public static boolean isAgreeReadAndroidId() {
        if (f56478g == null) {
            return true;
        }
        return f56478g.booleanValue();
    }

    public static boolean isAgreeReadDeviceId() {
        if (f56477f == null) {
            return true;
        }
        return f56477f.booleanValue();
    }

    public static boolean isEnableMediationTool() {
        return f56473b;
    }

    public static boolean isEnableVideoDownloadingCache() {
        return f56474c;
    }

    public static void setAgreePrivacyStrategy(boolean z3) {
        if (f56476e == null) {
            f56476e = Boolean.valueOf(z3);
        }
    }

    public static void setAgreeReadAndroidId(boolean z3) {
        f56478g = Boolean.valueOf(z3);
    }

    public static void setAgreeReadDeviceId(boolean z3) {
        f56477f = Boolean.valueOf(z3);
    }

    public static void setChannel(int i2) {
        if (f56472a == null) {
            f56472a = Integer.valueOf(i2);
        }
    }

    public static void setCustomADActivityClassName(String str) {
        f56483l = str;
    }

    public static void setCustomLandscapeActivityClassName(String str) {
        f56486o = str;
    }

    public static void setCustomPortraitActivityClassName(String str) {
        f56484m = str;
    }

    public static void setCustomRewardvideoLandscapeActivityClassName(String str) {
        f56487p = str;
    }

    public static void setCustomRewardvideoPortraitActivityClassName(String str) {
        f56485n = str;
    }

    public static void setEnableMediationTool(boolean z3) {
        f56473b = z3;
    }

    public static void setEnableVideoDownloadingCache(boolean z3) {
        f56474c = z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setExtraUserData(java.util.Map<java.lang.String, java.lang.String> r3) {
        /*
            if (r3 != 0) goto L3
            return
        L3:
            java.util.Set r0 = r3.entrySet()
            java.util.Iterator r0 = r0.iterator()
        Lb:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L35
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L2f
            java.lang.Object r1 = r1.getValue()
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto Lb
        L2f:
            java.lang.String r3 = "参数key和value不能为空！"
            com.qq.e.comm.util.GDTLogger.e(r3)
            return
        L35:
            com.qq.e.comm.managers.setting.GlobalSetting.f56479h = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.e.comm.managers.setting.GlobalSetting.setExtraUserData(java.util.Map):void");
    }

    public static void setMediaExtData(Map<String, String> map, boolean z3) {
        if (map == null) {
            return;
        }
        if (z3) {
            f56480i = new HashMap();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                f56480i.put(entry.getKey(), entry.getValue());
            }
        }
        try {
            f56482k.putOpt("media_ext", new JSONObject(f56480i));
        } catch (JSONException unused) {
            GDTLogger.e("setMediaExtData失败，请检查");
        }
    }

    public static void setPersonalizedState(int i2) {
        f56475d = Integer.valueOf(i2);
    }

    public static void setPreloadAdapters(Map<String, String> map) {
        if (map == null) {
            return;
        }
        f56481j.putAll(map);
    }
}
