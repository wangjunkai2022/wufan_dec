package com.umeng.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.h;
import com.umeng.analytics.pro.i;
import com.umeng.analytics.pro.j;
import com.umeng.analytics.pro.k;
import com.umeng.analytics.pro.l;
import com.umeng.analytics.pro.m;
import com.umeng.analytics.pro.n;
import com.umeng.analytics.pro.o;
import com.umeng.analytics.pro.r;
import com.umeng.analytics.pro.s;
import com.umeng.analytics.pro.t;
import com.umeng.analytics.pro.u;
import com.umeng.analytics.pro.x;
import com.umeng.common.ISysListener;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: InternalAgent.java */
/* loaded from: classes4.dex */
public class b implements m, s {
    private static final String A = "umsp_2";
    private static final String B = "umsp_3";
    private static final String C = "umsp_4";
    private static final String D = "umsp_5";

    /* renamed from: a  reason: collision with root package name */
    private static Context f60343a = null;

    /* renamed from: h  reason: collision with root package name */
    private static final String f60344h = "sp_uapp";

    /* renamed from: i  reason: collision with root package name */
    private static final String f60345i = "prepp_uapp";

    /* renamed from: o  reason: collision with root package name */
    private static final int f60346o = 128;

    /* renamed from: p  reason: collision with root package name */
    private static final int f60347p = 256;

    /* renamed from: q  reason: collision with root package name */
    private static String f60348q = "";

    /* renamed from: r  reason: collision with root package name */
    private static String f60349r = "";

    /* renamed from: s  reason: collision with root package name */
    private static final String f60350s = "ekv_bl";

    /* renamed from: t  reason: collision with root package name */
    private static final String f60351t = "ekv_bl_ver";

    /* renamed from: v  reason: collision with root package name */
    private static final String f60352v = "ekv_wl";

    /* renamed from: w  reason: collision with root package name */
    private static final String f60353w = "ekv_wl_ver";

    /* renamed from: z  reason: collision with root package name */
    private static final String f60354z = "umsp_1";

    /* renamed from: b  reason: collision with root package name */
    private ISysListener f60355b;

    /* renamed from: c  reason: collision with root package name */
    private o f60356c;

    /* renamed from: d  reason: collision with root package name */
    private u f60357d;

    /* renamed from: e  reason: collision with root package name */
    private j f60358e;

    /* renamed from: f  reason: collision with root package name */
    private t f60359f;

    /* renamed from: g  reason: collision with root package name */
    private k f60360g;

    /* renamed from: j  reason: collision with root package name */
    private boolean f60361j;

    /* renamed from: k  reason: collision with root package name */
    private volatile JSONObject f60362k;

    /* renamed from: l  reason: collision with root package name */
    private volatile JSONObject f60363l;

    /* renamed from: m  reason: collision with root package name */
    private volatile JSONObject f60364m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f60365n;

    /* renamed from: u  reason: collision with root package name */
    private com.umeng.analytics.filter.a f60366u;

    /* renamed from: x  reason: collision with root package name */
    private com.umeng.analytics.filter.b f60367x;

    /* renamed from: y  reason: collision with root package name */
    private l f60368y;

    /* compiled from: InternalAgent.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final b f60369a = new b();

        private a() {
        }
    }

    static {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            f60343a = appContext.getApplicationContext();
        }
    }

    public static b a() {
        return a.f60369a;
    }

    private void i(Context context) {
        try {
            if (context == null) {
                MLog.e("unexpected null context in getNativeSuperProperties");
                return;
            }
            if (f60343a == null) {
                f60343a = context.getApplicationContext();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (this.f60362k == null) {
                this.f60362k = new JSONObject();
            }
            if (this.f60363l == null) {
                this.f60363l = new JSONObject();
            }
            String string = sharedPreferences.getString(f60345i, null);
            if (!TextUtils.isEmpty(string)) {
                try {
                    this.f60364m = new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
            if (this.f60364m == null) {
                this.f60364m = new JSONObject();
            }
        } catch (Throwable unused2) {
        }
    }

    public JSONObject b() {
        return this.f60362k;
    }

    public JSONObject c() {
        return this.f60364m;
    }

    public JSONObject d() {
        return this.f60363l;
    }

    public void e() {
        this.f60363l = null;
    }

    public String f() {
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("getOnResumedActivityName can not be called in child process");
            return null;
        }
        return f60348q;
    }

    public String g() {
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("getOnPausedActivityName can not be called in child process");
            return null;
        }
        return f60349r;
    }

    public void h() {
        try {
            Context context = f60343a;
            if (context != null) {
                if (!UMUtils.isMainProgress(context)) {
                    MLog.e("onStartSessionInternal can not be called in child process");
                    return;
                }
                if (UMConfigure.isDebugLog() && !UMConfigure.getInitStatus()) {
                    UMLog.mutlInfo(i.H, 3, "", null, null);
                }
                long currentTimeMillis = System.currentTimeMillis();
                Context context2 = f60343a;
                UMWorkDispatch.sendEvent(context2, 4352, CoreProtocol.getInstance(context2), Long.valueOf(currentTimeMillis));
                Context context3 = f60343a;
                UMWorkDispatch.sendEvent(context3, n.a.f60843g, CoreProtocol.getInstance(context3), Long.valueOf(currentTimeMillis));
            }
            ISysListener iSysListener = this.f60355b;
            if (iSysListener != null) {
                iSysListener.onAppResume();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        try {
            Context context = f60343a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("onProfileSignOff can not be called in child process");
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", currentTimeMillis);
            Context context2 = f60343a;
            UMWorkDispatch.sendEvent(context2, n.a.f60842f, CoreProtocol.getInstance(context2), jSONObject);
            Context context3 = f60343a;
            UMWorkDispatch.sendEvent(context3, 4356, CoreProtocol.getInstance(context3), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    public synchronized void k() {
        Context context;
        try {
            context = f60343a;
        } catch (Throwable unused) {
        }
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("unregisterSuperPropertyByCoreProtocol can not be called in child process");
            return;
        }
        if (this.f60362k != null) {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(f60343a).edit();
            edit.putString(f60344h, this.f60362k.toString());
            edit.commit();
        } else {
            this.f60362k = new JSONObject();
        }
    }

    public synchronized JSONObject l() {
        Context context;
        try {
            context = f60343a;
        } catch (Throwable unused) {
        }
        if (context == null) {
            return null;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("getSuperPropertiesJSONObject can not be called in child process");
            return null;
        }
        if (this.f60362k == null) {
            this.f60362k = new JSONObject();
        }
        return this.f60362k;
    }

    public synchronized void m() {
        try {
            Context context = f60343a;
            if (context != null) {
                if (!UMUtils.isMainProgress(context)) {
                    MLog.e("clearSuperPropertiesByCoreProtocol can not be called in child process");
                    return;
                }
                SharedPreferences.Editor edit = PreferenceWrapper.getDefault(f60343a).edit();
                edit.remove(f60344h);
                edit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.umeng.analytics.pro.m
    public void n() {
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onIntoBackground triggered.");
        if (AnalyticsConfig.enable && FieldManager.b()) {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.D)) {
                if (UMWorkDispatch.eventHasExist(n.a.f60862z)) {
                    return;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 退出时发送策略 被触发！");
                Context context = f60343a;
                UMWorkDispatch.sendEvent(context, n.a.f60862z, CoreProtocol.getInstance(context), null);
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 退出发送策略: 云控控制字关闭。功能不生效");
        }
    }

    private b() {
        this.f60356c = new o();
        this.f60357d = new u();
        this.f60358e = new j();
        this.f60359f = t.a();
        this.f60360g = null;
        this.f60361j = false;
        this.f60362k = null;
        this.f60363l = null;
        this.f60364m = null;
        this.f60365n = false;
        this.f60366u = null;
        this.f60367x = null;
        this.f60368y = null;
        this.f60356c.a(this);
    }

    public void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (f60343a == null) {
                f60343a = context.getApplicationContext();
            }
            if (this.f60366u == null) {
                com.umeng.analytics.filter.a aVar = new com.umeng.analytics.filter.a("ekv_bl", "ekv_bl_ver");
                this.f60366u = aVar;
                aVar.register(f60343a);
            }
            if (this.f60367x == null) {
                com.umeng.analytics.filter.b bVar = new com.umeng.analytics.filter.b("ekv_wl", "ekv_wl_ver");
                this.f60367x = bVar;
                bVar.register(f60343a);
            }
            if (UMUtils.isMainProgress(f60343a)) {
                if (!this.f60361j) {
                    this.f60361j = true;
                    i(f60343a);
                }
                if (Build.VERSION.SDK_INT > 13) {
                    synchronized (this) {
                        if (!this.f60365n) {
                            k a4 = k.a(context);
                            this.f60360g = a4;
                            if (a4.a()) {
                                this.f60365n = true;
                            }
                            this.f60368y = l.a();
                            try {
                                l.a(context);
                                this.f60368y.a(this);
                            } catch (Throwable unused) {
                            }
                        }
                    }
                } else {
                    this.f60365n = true;
                }
                if (UMConfigure.isDebugLog()) {
                    UMLog.mutlInfo(i.B, 3, "", null, null);
                }
                UMWorkDispatch.registerConnStateObserver(CoreProtocol.getInstance(f60343a));
            }
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("onPageEnd can not be called in child process");
            return;
        }
        try {
            if (k.f60784b != MobclickAgent.PageMode.LEGACY_AUTO) {
                this.f60357d.b(str);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(Context context) {
        if (context == null) {
            UMLog.aq(i.f60772p, 0, "\\|");
        } else if (k.f60784b == MobclickAgent.PageMode.AUTO) {
        } else {
            if (f60343a == null) {
                f60343a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f60343a)) {
                MLog.e("onPause can not be called in child process");
                return;
            }
            if (UMConfigure.isDebugLog() && !(context instanceof Activity)) {
                UMLog.aq(i.f60773q, 2, "\\|");
            }
            try {
                if (!this.f60361j || !this.f60365n) {
                    a(context);
                }
                if (k.f60784b != MobclickAgent.PageMode.LEGACY_MANUAL) {
                    this.f60358e.b(context.getClass().getName());
                }
                i();
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.e("Exception occurred in Mobclick.onRause(). ", th);
                }
            }
            if (UMConfigure.isDebugLog() && (context instanceof Activity)) {
                f60349r = context.getClass().getName();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (f60343a == null) {
                f60343a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f60343a)) {
                MLog.e("onKillProcess can not be called in child process");
                return;
            }
            k kVar = this.f60360g;
            if (kVar != null) {
                kVar.c();
            }
            k.a(context, "onKillProcess");
            j jVar = this.f60358e;
            if (jVar != null) {
                jVar.b();
            }
            u uVar = this.f60357d;
            if (uVar != null) {
                uVar.b();
            }
            Context context2 = f60343a;
            if (context2 != null) {
                t tVar = this.f60359f;
                if (tVar != null) {
                    tVar.c(context2, Long.valueOf(System.currentTimeMillis()));
                }
                n.a(f60343a).d();
                u.a(f60343a);
                if (k.f60784b == MobclickAgent.PageMode.AUTO) {
                    k.c(f60343a);
                }
                PreferenceWrapper.getDefault(f60343a).edit().commit();
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized Object e(Context context, String str) {
        if (context == null) {
            UMLog.aq(i.ai, 0, "\\|");
            return null;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("getSuperProperty can not be called in child process");
            return null;
        } else if (TextUtils.isEmpty(str)) {
            UMLog.aq(i.ag, 0, "\\|");
            return null;
        } else if (!str.equals(f60354z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
            MLog.e("please check key or value, must be correct!");
            return null;
        } else {
            if (this.f60362k != null) {
                if (this.f60362k.has(str)) {
                    return this.f60362k.opt(str);
                }
            } else {
                this.f60362k = new JSONObject();
            }
            return null;
        }
    }

    public synchronized void f(Context context) {
        if (context == null) {
            UMLog.aq(i.ah, 0, "\\|");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("clearSuperProperties can not be called in child process");
            return;
        }
        if (!this.f60361j || !this.f60365n) {
            a(f60343a);
        }
        this.f60362k = new JSONObject();
        Context context2 = f60343a;
        UMWorkDispatch.sendEvent(context2, n.a.f60855s, CoreProtocol.getInstance(context2), null);
    }

    public synchronized void g(Context context) {
        if (context == null) {
            UMLog.aq(i.ap, 0, "\\|");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("clearPreProperties can not be called in child process");
            return;
        }
        if (!this.f60361j || !this.f60365n) {
            a(f60343a);
        }
        if (this.f60364m.length() > 0) {
            Context context2 = f60343a;
            UMWorkDispatch.sendEvent(context2, n.a.f60859w, CoreProtocol.getInstance(context2), null);
        }
        this.f60364m = new JSONObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Context context) {
        if (context == null) {
            MLog.e("unexpected null context in onResume");
        } else if (k.f60784b == MobclickAgent.PageMode.AUTO) {
        } else {
            if (f60343a == null) {
                f60343a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f60343a)) {
                MLog.e("onResume can not be called in child process");
                return;
            }
            if (UMConfigure.isDebugLog() && !(context instanceof Activity)) {
                UMLog.aq(i.f60771o, 2, "\\|");
            }
            try {
                if (!this.f60361j || !this.f60365n) {
                    a(context);
                }
                if (k.f60784b != MobclickAgent.PageMode.LEGACY_MANUAL) {
                    this.f60358e.a(context.getClass().getName());
                }
                h();
                if (UMConfigure.isDebugLog() && (context instanceof Activity)) {
                    f60348q = context.getClass().getName();
                }
            } catch (Throwable th) {
                MLog.e("Exception occurred in Mobclick.onResume(). ", th);
            }
        }
    }

    public void i() {
        try {
            Context context = f60343a;
            if (context != null) {
                if (!UMUtils.isMainProgress(context)) {
                    MLog.e("onEndSessionInternal can not be called in child process");
                    return;
                }
                Context context2 = f60343a;
                UMWorkDispatch.sendEvent(context2, n.a.f60844h, CoreProtocol.getInstance(context2), Long.valueOf(System.currentTimeMillis()));
                Context context3 = f60343a;
                UMWorkDispatch.sendEvent(context3, n.a.f60840d, CoreProtocol.getInstance(context3), null);
                Context context4 = f60343a;
                UMWorkDispatch.sendEvent(context4, 4099, CoreProtocol.getInstance(context4), null);
                Context context5 = f60343a;
                UMWorkDispatch.sendEvent(context5, n.a.f60845i, CoreProtocol.getInstance(context5), null);
            }
        } catch (Throwable unused) {
        }
        ISysListener iSysListener = this.f60355b;
        if (iSysListener != null) {
            iSysListener.onAppPause();
        }
    }

    public synchronized JSONObject h(Context context) {
        if (context == null) {
            UMLog.aq(i.aq, 0, "\\|");
            return null;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("getPreProperties can not be called in child process");
            return null;
        }
        if (!this.f60361j || !this.f60365n) {
            a(f60343a);
        }
        if (this.f60364m == null) {
            this.f60364m = new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        if (this.f60364m.length() > 0) {
            try {
                jSONObject = new JSONObject(this.f60364m.toString());
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    public synchronized void f(Context context, String str) {
        if (context == null) {
            UMLog.aq(i.an, 0, "\\|");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("unregisterPreProperty can not be called in child process");
            return;
        }
        if (!this.f60361j || !this.f60365n) {
            a(f60343a);
        }
        if (this.f60364m == null) {
            this.f60364m = new JSONObject();
        }
        if (str != null && str.length() > 0) {
            if (this.f60364m.has(str)) {
                this.f60364m.remove(str);
                Context context2 = f60343a;
                UMWorkDispatch.sendEvent(context2, n.a.f60858v, CoreProtocol.getInstance(context2), this.f60364m.toString());
            } else if (UMConfigure.isDebugLog()) {
                UMLog.aq(i.ao, 0, "\\|");
            }
            return;
        }
        MLog.e("please check propertics, property is null!");
    }

    private boolean c(String str) {
        if (this.f60366u.enabled() && this.f60366u.matchHit(str)) {
            return true;
        }
        if (this.f60367x.enabled()) {
            if (this.f60367x.matchHit(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> white list match! id = " + str);
                return false;
            }
            return true;
        }
        return false;
    }

    public synchronized void d(Context context, String str) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (context == null) {
            UMLog.aq(i.ah, 0, "\\|");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("unregisterSuperProperty can not be called in child process");
            return;
        }
        if (!this.f60361j || !this.f60365n) {
            a(f60343a);
        }
        if (TextUtils.isEmpty(str)) {
            UMLog.aq(i.ag, 0, "\\|");
        } else if (!str.equals(f60354z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
            MLog.e("please check key or value, must be correct!");
        } else {
            if (this.f60362k == null) {
                this.f60362k = new JSONObject();
            }
            if (this.f60362k.has(str)) {
                this.f60362k.remove(str);
                Context context2 = f60343a;
                UMWorkDispatch.sendEvent(context2, n.a.f60856t, CoreProtocol.getInstance(context2), str);
            }
        }
    }

    public void b(Context context, String str) {
        try {
            if (context == null) {
                UMLog.aq(i.N, 0, "\\|");
                return;
            }
            if (f60343a == null) {
                f60343a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f60343a)) {
                MLog.e("onDeepLinkReceived can not be called in child process");
                return;
            }
            if (!this.f60361j || !this.f60365n) {
                a(f60343a);
            }
            if (!TextUtils.isEmpty(str)) {
                HashMap hashMap = new HashMap();
                hashMap.put(com.umeng.analytics.pro.c.aE, str);
                a(f60343a, com.umeng.analytics.pro.c.aD, (Map<String, Object>) hashMap, -1L, false);
                return;
            }
            UMLog.aq(i.O, 0, "\\|");
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public synchronized String e(Context context) {
        if (context == null) {
            UMLog.aq(i.ai, 0, "\\|");
            return null;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("getSuperProperties can not be called in child process");
            return null;
        } else if (this.f60362k != null) {
            return this.f60362k.toString();
        } else {
            this.f60362k = new JSONObject();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(Context context, String str) {
        if (context == null) {
            UMLog.aq(i.f60782z, 0, "\\|");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("setSecret can not be called in child process");
            return;
        }
        if (!this.f60361j || !this.f60365n) {
            a(f60343a);
        }
        AnalyticsConfig.a(f60343a, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("onPageStart can not be called in child process");
            return;
        }
        try {
            if (k.f60784b != MobclickAgent.PageMode.LEGACY_AUTO) {
                this.f60357d.a(str);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(ISysListener iSysListener) {
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("setSysListener can not be called in child process");
        } else {
            this.f60355b = iSysListener;
        }
    }

    public void a(Context context, int i2) {
        if (context == null) {
            MLog.e("unexpected null context in setVerticalType");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("setVerticalType can not be called in child process");
            return;
        }
        if (!this.f60361j || !this.f60365n) {
            a(f60343a);
        }
        AnalyticsConfig.a(f60343a, i2);
    }

    public synchronized void b(Object obj) {
        Context context;
        try {
            context = f60343a;
        } catch (Throwable unused) {
        }
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("updateNativePrePropertiesByCoreProtocol can not be called in child process");
            return;
        }
        SharedPreferences.Editor edit = PreferenceWrapper.getDefault(f60343a).edit();
        if (obj != null) {
            String str = (String) obj;
            if (edit != null && !TextUtils.isEmpty(str)) {
                edit.putString(f60345i, str).commit();
            }
        } else if (edit != null) {
            edit.remove(f60345i).commit();
        }
    }

    public void a(Context context, String str, HashMap<String, Object> hashMap) {
        if (context == null) {
            return;
        }
        try {
            if (f60343a == null) {
                f60343a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f60343a)) {
                MLog.e("onGKVEvent can not be called in child process");
                return;
            }
            if (!this.f60361j || !this.f60365n) {
                a(f60343a);
            }
            String str2 = "";
            if (this.f60362k == null) {
                this.f60362k = new JSONObject();
            } else {
                str2 = this.f60362k.toString();
            }
            r.a(f60343a).a(str, hashMap, str2);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    private boolean b(String str, Object obj) {
        int i2;
        if (TextUtils.isEmpty(str)) {
            MLog.e("key is " + str + ", please check key, illegal");
            return false;
        }
        try {
            i2 = str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException unused) {
            i2 = 0;
        }
        if (i2 > 128) {
            MLog.e("key length is " + i2 + ", please check key, illegal");
            return false;
        } else if (obj instanceof String) {
            if (((String) obj).getBytes("UTF-8").length > 256) {
                MLog.e("value length is " + ((String) obj).getBytes("UTF-8").length + ", please check value, illegal");
                return false;
            }
            return true;
        } else if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof Float)) {
            return true;
        } else {
            MLog.e("value is " + obj + ", please check value, type illegal");
            return false;
        }
    }

    void a(Context context, String str) {
        if (context == null) {
            UMLog.aq(i.f60779w, 0, "\\|");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("reportError can not be called in child process");
        } else if (TextUtils.isEmpty(str)) {
            if (UMConfigure.isDebugLog()) {
                UMLog.aq(i.f60780x, 0, "\\|");
            }
        } else {
            try {
                if (!this.f60361j || !this.f60365n) {
                    a(f60343a);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put(com.umeng.analytics.pro.c.Q, 2);
                jSONObject.put("context", str);
                jSONObject.put("__ii", this.f60359f.c());
                Context context2 = f60343a;
                UMWorkDispatch.sendEvent(context2, n.a.f60846j, CoreProtocol.getInstance(context2), jSONObject);
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.e(th);
                }
            }
        }
    }

    void a(Context context, Throwable th) {
        if (context != null && th != null) {
            if (f60343a == null) {
                f60343a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f60343a)) {
                MLog.e("reportError can not be called in child process");
                return;
            }
            try {
                if (!this.f60361j || !this.f60365n) {
                    a(f60343a);
                }
                a(f60343a, DataHelper.convertExceptionToString(th));
                return;
            } catch (Exception e4) {
                if (MLog.DEBUG) {
                    MLog.e(e4);
                    return;
                }
                return;
            }
        }
        UMLog.aq(i.f60781y, 0, "\\|");
    }

    public void a(Context context, String str, String str2, long j4, int i2) {
        if (context == null) {
            return;
        }
        try {
            if (f60343a == null) {
                f60343a = context.getApplicationContext();
            }
            if (!this.f60361j || !this.f60365n) {
                a(f60343a);
            }
            if (c(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            String str3 = "";
            if (this.f60362k == null) {
                this.f60362k = new JSONObject();
            } else {
                str3 = this.f60362k.toString();
            }
            r.a(f60343a).a(str, str2, j4, i2, str3);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, String str, Map<String, Object> map, long j4) {
        try {
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            if (Arrays.asList(com.umeng.analytics.pro.c.aF).contains(str)) {
                UMLog.aq(i.f60758b, 0, "\\|");
                return;
            } else if (map.isEmpty()) {
                UMLog.aq(i.f60760d, 0, "\\|");
                return;
            } else {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    if (Arrays.asList(com.umeng.analytics.pro.c.aF).contains(entry.getKey())) {
                        UMLog.aq(i.f60761e, 0, "\\|");
                        return;
                    }
                }
                a(context, str, map, j4, false);
                return;
            }
        }
        UMLog.aq(i.f60759c, 0, "\\|");
    }

    public void a(Context context, String str, Map<String, Object> map) {
        a(context, str, map, -1L, true);
    }

    private void a(Context context, String str, Map<String, Object> map, long j4, boolean z3) {
        try {
            if (context == null) {
                MLog.e("context is null in onEventNoCheck, please check!");
                return;
            }
            if (f60343a == null) {
                f60343a = context.getApplicationContext();
            }
            if (!this.f60361j || !this.f60365n) {
                a(f60343a);
            }
            if (c(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            String str2 = "";
            if (this.f60362k == null) {
                this.f60362k = new JSONObject();
            } else {
                str2 = this.f60362k.toString();
            }
            r.a(f60343a).a(str, map, j4, str2, z3);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    @Override // com.umeng.analytics.pro.s
    public void a(Throwable th) {
        try {
            Context context = f60343a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("onAppCrash can not be called in child process");
            } else if (AnalyticsConfig.enable) {
                u uVar = this.f60357d;
                if (uVar != null) {
                    uVar.b();
                }
                k.a(f60343a, "onAppCrash");
                j jVar = this.f60358e;
                if (jVar != null) {
                    jVar.b();
                }
                k kVar = this.f60360g;
                if (kVar != null) {
                    kVar.c();
                }
                t tVar = this.f60359f;
                if (tVar != null) {
                    tVar.c(f60343a, Long.valueOf(System.currentTimeMillis()));
                }
                if (th != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONObject.put(com.umeng.analytics.pro.c.Q, 1);
                    jSONObject.put("context", DataHelper.convertExceptionToString(th));
                    h.a(f60343a).a(this.f60359f.c(), jSONObject.toString(), 1);
                }
                n.a(f60343a).d();
                u.a(f60343a);
                if (k.f60784b == MobclickAgent.PageMode.AUTO) {
                    k.c(f60343a);
                }
                PreferenceWrapper.getDefault(f60343a).edit().commit();
            }
        } catch (Exception e4) {
            if (MLog.DEBUG) {
                MLog.e("Exception in onAppCrash", e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        try {
            Context context = f60343a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("onProfileSignIn can not be called in child process");
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(com.umeng.analytics.pro.c.M, str);
            jSONObject.put("uid", str2);
            jSONObject.put("ts", currentTimeMillis);
            Context context2 = f60343a;
            UMWorkDispatch.sendEvent(context2, n.a.f60841e, CoreProtocol.getInstance(context2), jSONObject);
            Context context3 = f60343a;
            UMWorkDispatch.sendEvent(context3, 4356, CoreProtocol.getInstance(context3), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignIn", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z3) {
        Context context = f60343a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setCatchUncaughtExceptions can not be called in child process");
        } else if (AnalyticsConfig.CHANGE_CATCH_EXCEPTION_NOTALLOW) {
        } else {
            AnalyticsConfig.CATCH_EXCEPTION = z3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(GL10 gl10) {
        String[] gpu = UMUtils.getGPU(gl10);
        if (gpu.length == 2) {
            AnalyticsConfig.GPU_VENDER = gpu[0];
            AnalyticsConfig.GPU_RENDERER = gpu[1];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MobclickAgent.PageMode pageMode) {
        Context context = f60343a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setPageCollectionMode can not be called in child process");
        } else {
            k.f60784b = pageMode;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(double d4, double d5) {
        Context context = f60343a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setLocation can not be called in child process");
            return;
        }
        if (AnalyticsConfig.f60320a == null) {
            AnalyticsConfig.f60320a = new double[2];
        }
        double[] dArr = AnalyticsConfig.f60320a;
        dArr[0] = d4;
        dArr[1] = d5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, MobclickAgent.EScenarioType eScenarioType) {
        if (context == null) {
            MLog.e("unexpected null context in setScenarioType");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("setScenarioType can not be called in child process");
            return;
        }
        if (eScenarioType != null) {
            a(f60343a, eScenarioType.toValue());
        }
        if (this.f60361j && this.f60365n) {
            return;
        }
        a(f60343a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j4) {
        Context context = f60343a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setSessionContinueMillis can not be called in child process");
            return;
        }
        AnalyticsConfig.kContinueSessionMillis = j4;
        x.a().a(AnalyticsConfig.kContinueSessionMillis);
    }

    public synchronized void a(Context context, String str, Object obj) {
        int i2 = 0;
        if (context == null) {
            UMLog.aq(i.af, 0, "\\|");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("registerSuperProperty can not be called in child process");
            return;
        }
        if (!this.f60361j || !this.f60365n) {
            a(f60343a);
        }
        if (!TextUtils.isEmpty(str) && obj != null) {
            if (!str.equals(f60354z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
                MLog.e("property name is " + str + ", please check key, must be correct!");
                return;
            } else if ((obj instanceof String) && !HelperUtils.checkStrLen(obj.toString(), 256)) {
                MLog.e("property value is " + obj + ", please check value, lawless!");
                return;
            } else {
                try {
                    if (this.f60362k == null) {
                        this.f60362k = new JSONObject();
                    }
                    if (obj.getClass().isArray()) {
                        if (obj instanceof String[]) {
                            String[] strArr = (String[]) obj;
                            if (strArr.length > 10) {
                                MLog.e("please check value, size is " + strArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray = new JSONArray();
                            while (i2 < strArr.length) {
                                if (strArr[i2] != null && HelperUtils.checkStrLen(strArr[i2], 256)) {
                                    jSONArray.put(strArr[i2]);
                                    i2++;
                                }
                                MLog.e("please check value, length is " + strArr[i2].length() + ", overlength 256!");
                                return;
                            }
                            this.f60362k.put(str, jSONArray);
                        } else if (obj instanceof long[]) {
                            long[] jArr = (long[]) obj;
                            if (jArr.length > 10) {
                                MLog.e("please check value, size is " + jArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray2 = new JSONArray();
                            while (i2 < jArr.length) {
                                jSONArray2.put(jArr[i2]);
                                i2++;
                            }
                            this.f60362k.put(str, jSONArray2);
                        } else if (obj instanceof int[]) {
                            int[] iArr = (int[]) obj;
                            if (iArr.length > 10) {
                                MLog.e("please check value, size is " + iArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray3 = new JSONArray();
                            while (i2 < iArr.length) {
                                jSONArray3.put(iArr[i2]);
                                i2++;
                            }
                            this.f60362k.put(str, jSONArray3);
                        } else if (obj instanceof float[]) {
                            float[] fArr = (float[]) obj;
                            if (fArr.length > 10) {
                                MLog.e("please check value, size is " + fArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray4 = new JSONArray();
                            while (i2 < fArr.length) {
                                jSONArray4.put(fArr[i2]);
                                i2++;
                            }
                            this.f60362k.put(str, jSONArray4);
                        } else if (obj instanceof double[]) {
                            double[] dArr = (double[]) obj;
                            if (dArr.length > 10) {
                                MLog.e("please check value, size is " + dArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray5 = new JSONArray();
                            while (i2 < dArr.length) {
                                jSONArray5.put(dArr[i2]);
                                i2++;
                            }
                            this.f60362k.put(str, jSONArray5);
                        } else if (obj instanceof short[]) {
                            short[] sArr = (short[]) obj;
                            if (sArr.length > 10) {
                                MLog.e("please check value, size is " + sArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray6 = new JSONArray();
                            while (i2 < sArr.length) {
                                jSONArray6.put((int) sArr[i2]);
                                i2++;
                            }
                            this.f60362k.put(str, jSONArray6);
                        } else {
                            MLog.e("please check value, illegal type!");
                            return;
                        }
                    } else {
                        if (!(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Integer) && !(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof Short)) {
                            MLog.e("please check value, illegal type!");
                            return;
                        }
                        this.f60362k.put(str, obj);
                    }
                } catch (Throwable unused) {
                }
                Context context2 = f60343a;
                UMWorkDispatch.sendEvent(context2, n.a.f60854r, CoreProtocol.getInstance(context2), this.f60362k.toString());
                return;
            }
        }
        UMLog.aq(i.ag, 0, "\\|");
    }

    private void a(String str, Object obj) {
        try {
            if (this.f60362k == null) {
                this.f60362k = new JSONObject();
            }
            int i2 = 0;
            if (obj.getClass().isArray()) {
                if (obj instanceof String[]) {
                    String[] strArr = (String[]) obj;
                    if (strArr.length > 10) {
                        return;
                    }
                    JSONArray jSONArray = new JSONArray();
                    while (i2 < strArr.length) {
                        if (strArr[i2] != null && !HelperUtils.checkStrLen(strArr[i2], 256)) {
                            jSONArray.put(strArr[i2]);
                        }
                        i2++;
                    }
                    this.f60362k.put(str, jSONArray);
                } else if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    JSONArray jSONArray2 = new JSONArray();
                    while (i2 < jArr.length) {
                        jSONArray2.put(jArr[i2]);
                        i2++;
                    }
                    this.f60362k.put(str, jSONArray2);
                } else if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    JSONArray jSONArray3 = new JSONArray();
                    while (i2 < iArr.length) {
                        jSONArray3.put(iArr[i2]);
                        i2++;
                    }
                    this.f60362k.put(str, jSONArray3);
                } else if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    JSONArray jSONArray4 = new JSONArray();
                    while (i2 < fArr.length) {
                        jSONArray4.put(fArr[i2]);
                        i2++;
                    }
                    this.f60362k.put(str, jSONArray4);
                } else if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    JSONArray jSONArray5 = new JSONArray();
                    while (i2 < dArr.length) {
                        jSONArray5.put(dArr[i2]);
                        i2++;
                    }
                    this.f60362k.put(str, jSONArray5);
                } else if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    JSONArray jSONArray6 = new JSONArray();
                    while (i2 < sArr.length) {
                        jSONArray6.put((int) sArr[i2]);
                        i2++;
                    }
                    this.f60362k.put(str, jSONArray6);
                }
            } else if (obj instanceof List) {
                List list = (List) obj;
                JSONArray jSONArray7 = new JSONArray();
                while (i2 < list.size()) {
                    Object obj2 = list.get(i2);
                    if ((obj2 instanceof String) || (obj2 instanceof Long) || (obj2 instanceof Integer) || (obj2 instanceof Float) || (obj2 instanceof Double) || (obj2 instanceof Short)) {
                        jSONArray7.put(list.get(i2));
                    }
                    i2++;
                }
                this.f60362k.put(str, jSONArray7);
            } else if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                this.f60362k.put(str, obj);
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized void a(Object obj) {
        Context context;
        try {
            context = f60343a;
        } catch (Throwable unused) {
        }
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("registerSuperPropertyByCoreProtocol can not be called in child process");
            return;
        }
        if (obj != null) {
            String str = (String) obj;
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(f60343a).edit();
            if (edit != null && !TextUtils.isEmpty(str)) {
                edit.putString(f60344h, this.f60362k.toString()).commit();
            }
        }
    }

    public synchronized void a(Context context, List<String> list) {
        try {
        } catch (Throwable th) {
            MLog.e(th);
        }
        if (context == null) {
            UMLog.aq(i.aj, 0, "\\|");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("setFirstLaunchEvent can not be called in child process");
            return;
        }
        if (!this.f60361j || !this.f60365n) {
            a(f60343a);
        }
        r.a(f60343a).a(list);
    }

    public synchronized void a(Context context, JSONObject jSONObject) {
        String obj;
        Object obj2;
        if (context == null) {
            UMLog.aq(i.al, 0, "\\|");
            return;
        }
        if (f60343a == null) {
            f60343a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f60343a)) {
            MLog.e("registerPreProperties can not be called in child process");
            return;
        }
        if (!this.f60361j || !this.f60365n) {
            a(f60343a);
        }
        if (this.f60364m == null) {
            this.f60364m = new JSONObject();
        }
        if (jSONObject != null && jSONObject.length() > 0) {
            JSONObject jSONObject2 = null;
            try {
                jSONObject2 = new JSONObject(this.f60364m.toString());
            } catch (Exception unused) {
            }
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            Iterator<String> keys = jSONObject.keys();
            if (keys != null) {
                while (keys.hasNext()) {
                    try {
                        obj = keys.next().toString();
                        obj2 = jSONObject.get(obj);
                    } catch (Exception unused2) {
                    }
                    if (b(obj, obj2)) {
                        jSONObject2.put(obj, obj2);
                        if (jSONObject2.length() > 10) {
                            MLog.e("please check propertics, size overlength!");
                            return;
                        }
                        continue;
                    } else {
                        return;
                    }
                }
            }
            this.f60364m = jSONObject2;
            if (this.f60364m.length() > 0) {
                Context context2 = f60343a;
                UMWorkDispatch.sendEvent(context2, n.a.f60857u, CoreProtocol.getInstance(context2), this.f60364m.toString());
            }
            return;
        }
        UMLog.aq(i.am, 0, "\\|");
    }
}
