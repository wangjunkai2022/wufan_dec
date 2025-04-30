package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.d;
import com.umeng.analytics.pro.h;
import com.umeng.analytics.pro.n;
import com.umeng.analytics.pro.x;
import com.umeng.analytics.process.UMProcessDBDatasSender;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* compiled from: SessionTracker.java */
/* loaded from: classes4.dex */
public class t implements x.a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f60891a = "session_start_time";

    /* renamed from: b  reason: collision with root package name */
    public static final String f60892b = "session_end_time";

    /* renamed from: c  reason: collision with root package name */
    public static final String f60893c = "session_id";

    /* renamed from: d  reason: collision with root package name */
    public static final String f60894d = "pre_session_id";

    /* renamed from: e  reason: collision with root package name */
    public static final String f60895e = "a_start_time";

    /* renamed from: f  reason: collision with root package name */
    public static final String f60896f = "a_end_time";

    /* renamed from: g  reason: collision with root package name */
    public static final String f60897g = "fg_count";

    /* renamed from: h  reason: collision with root package name */
    private static String f60898h = null;

    /* renamed from: i  reason: collision with root package name */
    private static Context f60899i = null;

    /* renamed from: j  reason: collision with root package name */
    private static boolean f60900j = false;

    /* renamed from: k  reason: collision with root package name */
    private static long f60901k = 0;

    /* renamed from: l  reason: collision with root package name */
    private static boolean f60902l = true;

    /* renamed from: m  reason: collision with root package name */
    private static long f60903m;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SessionTracker.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final t f60904a = new t();

        private a() {
        }
    }

    public static t a() {
        return a.f60904a;
    }

    public static void b(Context context) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f60899i);
        if (sharedPreferences != null) {
            long j4 = sharedPreferences.getLong(f60897g, 0L);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            if (edit != null) {
                edit.putLong(f60897g, j4 + 1);
                edit.commit();
            }
        }
    }

    private void d(Context context) {
        try {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(context).edit();
            edit.putLong(f60897g, 0L);
            edit.commit();
        } catch (Throwable unused) {
        }
    }

    private String e(Context context) {
        if (f60899i == null && context != null) {
            f60899i = context.getApplicationContext();
        }
        String d4 = x.a().d(f60899i);
        try {
            f(context);
            n.a(f60899i).d((Object) null);
        } catch (Throwable unused) {
        }
        return d4;
    }

    private void f(Context context) {
        n.a(context).b(context);
        n.a(context).d();
    }

    public void c(Context context, Object obj) {
        try {
            if (f60899i == null && context != null) {
                f60899i = context.getApplicationContext();
            }
            long longValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null) {
                return;
            }
            if (sharedPreferences.getLong(f60895e, 0L) == 0) {
                MLog.e("onPause called before onResume");
                return;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onEndSessionInternal: write activity end time = " + longValue);
            edit.putLong(f60896f, longValue);
            edit.putLong(f60892b, longValue);
            edit.commit();
        } catch (Throwable unused) {
        }
    }

    private t() {
        x.a().a(this);
    }

    public static long a(Context context) {
        try {
            return PreferenceWrapper.getDefault(context).getLong(f60897g, 0L);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public void a(Context context, long j4) {
        SharedPreferences.Editor edit;
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f60899i);
        if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null) {
            return;
        }
        edit.putLong(f60891a, j4);
        edit.commit();
    }

    public void b(Context context, Object obj) {
        long longValue;
        try {
            if (f60899i == null) {
                f60899i = UMGlobalContext.getAppContext(context);
            }
            if (obj == null) {
                longValue = System.currentTimeMillis();
            } else {
                longValue = ((Long) obj).longValue();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f60899i);
            if (sharedPreferences == null) {
                return;
            }
            f60901k = sharedPreferences.getLong(f60896f, 0L);
            UMRTLog.i(UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime: " + f60901k);
            String string = sharedPreferences.getString(c.az, "");
            String appVersionName = UMUtils.getAppVersionName(f60899i);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            if (edit == null) {
                return;
            }
            if (!TextUtils.isEmpty(string) && !string.equals(appVersionName)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> requestNewInstantSessionIf: version upgrade");
                edit.putLong(f60891a, longValue);
                edit.commit();
                n.a(f60899i).a((Object) null, true);
                String c4 = x.a().c(f60899i);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> force generate new session: session id = " + c4);
                f60900j = true;
                a(f60899i, longValue, true);
            } else if (x.a().e(f60899i)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> More then 30 sec from last session.");
                f60900j = true;
                edit.putLong(f60891a, longValue);
                edit.commit();
                a(f60899i, longValue, false);
            } else {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> less then 30 sec from last session, do nothing.");
                f60900j = false;
            }
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, Object obj) {
        SharedPreferences.Editor edit;
        try {
            if (f60899i == null && context != null) {
                f60899i = context.getApplicationContext();
            }
            long longValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f60899i);
            if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null) {
                return;
            }
            String string = sharedPreferences.getString(c.az, "");
            String appVersionName = UMUtils.getAppVersionName(f60899i);
            if (TextUtils.isEmpty(string)) {
                edit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
                edit.putString(c.az, appVersionName);
                edit.commit();
            } else if (!string.equals(appVersionName)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onStartSessionInternal: upgrade version: " + string + "-> " + appVersionName);
                int i2 = sharedPreferences.getInt("versioncode", 0);
                String string2 = sharedPreferences.getString("pre_date", "");
                String string3 = sharedPreferences.getString("pre_version", "");
                String string4 = sharedPreferences.getString(c.az, "");
                edit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
                edit.putString(c.az, appVersionName);
                edit.putString("vers_date", string2);
                edit.putString("vers_pre_version", string3);
                edit.putString("cur_version", string4);
                edit.putInt("vers_code", i2);
                edit.putString("vers_name", string);
                edit.commit();
                if (f60902l) {
                    f60902l = false;
                }
                if (f60900j) {
                    f60900j = false;
                    b(f60899i, longValue, true);
                    b(f60899i, longValue);
                    return;
                }
                return;
            }
            if (f60900j) {
                f60900j = false;
                if (f60902l) {
                    f60902l = false;
                }
                f60898h = e(context);
                MLog.d("创建新会话: " + f60898h);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "mSessionChanged flag has been set, Start new session: " + f60898h);
                return;
            }
            f60898h = sharedPreferences.getString("session_id", null);
            edit.putLong(f60895e, longValue);
            edit.putLong(f60896f, 0L);
            edit.commit();
            MLog.d("延续上一个会话: " + f60898h);
            UMRTLog.i(UMRTLog.RTLOG_TAG, "Extend current session: " + f60898h);
            if (f60902l) {
                f60902l = false;
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
                    Context context2 = f60899i;
                    UMWorkDispatch.sendEventEx(context2, n.a.C, CoreProtocol.getInstance(context2), null, 0L);
                }
            }
            f(context);
            n.a(f60899i).a(false);
        } catch (Throwable unused) {
        }
    }

    public String c(Context context) {
        try {
            if (f60898h == null) {
                return PreferenceWrapper.getDefault(context).getString("session_id", null);
            }
        } catch (Throwable unused) {
        }
        return f60898h;
    }

    public String c() {
        return c(f60899i);
    }

    public boolean b(Context context, long j4, boolean z3) {
        SharedPreferences sharedPreferences;
        String a4;
        long j5;
        boolean z4 = false;
        try {
            sharedPreferences = PreferenceWrapper.getDefault(context);
        } catch (Throwable unused) {
        }
        if (sharedPreferences == null || (a4 = x.a().a(f60899i)) == null) {
            return false;
        }
        long j6 = sharedPreferences.getLong(f60895e, 0L);
        long j7 = sharedPreferences.getLong(f60896f, 0L);
        if (j6 > 0 && j7 == 0) {
            z4 = true;
            if (z3) {
                j5 = f60901k;
                if (j5 == 0) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime = 0, In-app upgrade, use currentTime: = " + j4);
                    j5 = j4;
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime != 0, app upgrade, use lastActivityEndTime: = " + f60901k);
                }
                c(f60899i, Long.valueOf(j5));
            } else {
                c(f60899i, Long.valueOf(j4));
                j5 = j4;
            }
            JSONObject jSONObject = new JSONObject();
            if (z3) {
                jSONObject.put(d.C0351d.a.f60711g, j5);
            } else {
                jSONObject.put(d.C0351d.a.f60711g, j4);
            }
            JSONObject b4 = com.umeng.analytics.b.a().b();
            if (b4 != null && b4.length() > 0) {
                jSONObject.put("__sp", b4);
            }
            JSONObject c4 = com.umeng.analytics.b.a().c();
            if (c4 != null && c4.length() > 0) {
                jSONObject.put("__pp", c4);
            }
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** foregroundCount = " + f60903m);
                jSONObject.put(d.C0351d.a.f60712h, f60903m);
                f60903m = 0L;
            } else {
                jSONObject.put(d.C0351d.a.f60712h, 0L);
            }
            h.a(context).a(a4, jSONObject, h.a.END);
            n.a(f60899i).e();
        }
        return z4;
    }

    public void b(Context context, long j4) {
        if (PreferenceWrapper.getDefault(context) == null) {
            return;
        }
        try {
            n.a(f60899i).c((Object) null);
        } catch (Throwable unused) {
        }
    }

    public String a(Context context, long j4, boolean z3) {
        String b4 = x.a().b(context);
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onInstantSessionInternal: current session id = " + b4);
        if (TextUtils.isEmpty(b4)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__e", j4);
            JSONObject b5 = com.umeng.analytics.b.a().b();
            if (b5 != null && b5.length() > 0) {
                jSONObject.put("__sp", b5);
            }
            JSONObject c4 = com.umeng.analytics.b.a().c();
            if (c4 != null && c4.length() > 0) {
                jSONObject.put("__pp", c4);
            }
            h.a(context).a(b4, jSONObject, h.a.INSTANTSESSIONBEGIN);
            n.a(context).a(jSONObject, z3);
        } catch (Throwable unused) {
        }
        return b4;
    }

    public String b() {
        return f60898h;
    }

    @Override // com.umeng.analytics.pro.x.a
    public void a(String str, String str2, long j4, long j5, long j6) {
        a(f60899i, str2, j4, j5, j6);
        UMRTLog.i(UMRTLog.RTLOG_TAG, "saveSessionToDB: complete");
        if (AnalyticsConstants.SUB_PROCESS_EVENT) {
            Context context = f60899i;
            UMWorkDispatch.sendEvent(context, UMProcessDBDatasSender.UM_PROCESS_EVENT_KEY, UMProcessDBDatasSender.getInstance(context), Long.valueOf(System.currentTimeMillis()));
        }
    }

    @Override // com.umeng.analytics.pro.x.a
    public void a(String str, long j4, long j5, long j6) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(str, j4);
    }

    private void a(Context context, String str, long j4, long j5, long j6) {
        if (TextUtils.isEmpty(f60898h)) {
            f60898h = x.a().a(f60899i);
        }
        if (TextUtils.isEmpty(str) || str.equals(f60898h)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(d.C0351d.a.f60711g, j5);
            jSONObject.put(d.C0351d.a.f60712h, j6);
            JSONObject b4 = com.umeng.analytics.b.a().b();
            if (b4 != null && b4.length() > 0) {
                jSONObject.put("__sp", b4);
            }
            JSONObject c4 = com.umeng.analytics.b.a().c();
            if (c4 != null && c4.length() > 0) {
                jSONObject.put("__pp", c4);
            }
            h.a(context).a(f60898h, jSONObject, h.a.END);
        } catch (Exception unused) {
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__e", j4);
            h.a(context).a(str, jSONObject2, h.a.BEGIN);
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
                f60903m = j6;
                d(context);
                Context context2 = f60899i;
                UMWorkDispatch.sendEventEx(context2, n.a.C, CoreProtocol.getInstance(context2), null, 0L);
            }
        } catch (Exception unused2) {
        }
        f60898h = str;
    }

    private void a(String str, long j4) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f60899i);
        if (sharedPreferences == null) {
            return;
        }
        long j5 = sharedPreferences.getLong(f60892b, 0L);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__ii", str);
            jSONObject.put("__e", j4);
            jSONObject.put(d.C0351d.a.f60711g, j5);
            double[] location = AnalyticsConfig.getLocation();
            if (location != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(c.C, location[0]);
                jSONObject2.put(c.D, location[1]);
                jSONObject2.put("ts", System.currentTimeMillis());
                jSONObject.put(d.C0351d.a.f60709e, jSONObject2);
            }
            Class<?> cls = Class.forName("android.net.TrafficStats");
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("getUidRxBytes", cls2);
            Method method2 = cls.getMethod("getUidTxBytes", cls2);
            int i2 = f60899i.getApplicationInfo().uid;
            if (i2 == -1) {
                return;
            }
            long longValue = ((Long) method.invoke(null, Integer.valueOf(i2))).longValue();
            long longValue2 = ((Long) method2.invoke(null, Integer.valueOf(i2))).longValue();
            if (longValue > 0 && longValue2 > 0) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(c.H, longValue);
                jSONObject3.put(c.G, longValue2);
                jSONObject.put(d.C0351d.a.f60708d, jSONObject3);
            }
            h.a(f60899i).a(str, jSONObject, h.a.NEWSESSION);
            u.a(f60899i);
            k.c(f60899i);
        } catch (Throwable unused) {
        }
    }
}
