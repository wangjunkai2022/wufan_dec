package com.umeng.analytics.pro;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import com.join.mgps.Util.g0;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.papa91.common.BaseAppConfig;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.d;
import com.umeng.analytics.pro.h;
import com.umeng.analytics.vshelper.PageNameMonitor;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AutoViewPageTracker.java */
/* loaded from: classes4.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    public static String f60783a;

    /* renamed from: c  reason: collision with root package name */
    boolean f60793c;

    /* renamed from: d  reason: collision with root package name */
    boolean f60794d;

    /* renamed from: g  reason: collision with root package name */
    com.umeng.analytics.vshelper.a f60795g;

    /* renamed from: h  reason: collision with root package name */
    Application.ActivityLifecycleCallbacks f60796h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, Long> f60797i;

    /* renamed from: m  reason: collision with root package name */
    private boolean f60798m;

    /* renamed from: n  reason: collision with root package name */
    private int f60799n;

    /* renamed from: o  reason: collision with root package name */
    private int f60800o;

    /* renamed from: j  reason: collision with root package name */
    private static JSONArray f60787j = new JSONArray();

    /* renamed from: k  reason: collision with root package name */
    private static Object f60788k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private static Application f60789l = null;

    /* renamed from: b  reason: collision with root package name */
    public static MobclickAgent.PageMode f60784b = MobclickAgent.PageMode.AUTO;

    /* renamed from: e  reason: collision with root package name */
    static String f60785e = null;

    /* renamed from: f  reason: collision with root package name */
    static int f60786f = -1;

    /* renamed from: p  reason: collision with root package name */
    private static boolean f60790p = true;

    /* renamed from: q  reason: collision with root package name */
    private static Object f60791q = new Object();

    /* renamed from: r  reason: collision with root package name */
    private static an f60792r = new com.umeng.analytics.vshelper.b();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AutoViewPageTracker.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final k f60802a = new k();

        private a() {
        }
    }

    static /* synthetic */ int a(k kVar) {
        int i2 = kVar.f60800o;
        kVar.f60800o = i2 - 1;
        return i2;
    }

    static /* synthetic */ int b(k kVar) {
        int i2 = kVar.f60799n;
        kVar.f60799n = i2 - 1;
        return i2;
    }

    static /* synthetic */ int e(k kVar) {
        int i2 = kVar.f60800o;
        kVar.f60800o = i2 + 1;
        return i2;
    }

    static /* synthetic */ int f(k kVar) {
        int i2 = kVar.f60799n;
        kVar.f60799n = i2 + 1;
        return i2;
    }

    private void g() {
        if (this.f60798m) {
            return;
        }
        this.f60798m = true;
        Application application = f60789l;
        if (application == null || Build.VERSION.SDK_INT < 14) {
            return;
        }
        application.registerActivityLifecycleCallbacks(this.f60796h);
    }

    private k() {
        this.f60797i = new HashMap();
        this.f60798m = false;
        this.f60793c = false;
        this.f60794d = false;
        this.f60799n = 0;
        this.f60800o = 0;
        this.f60795g = PageNameMonitor.getInstance();
        this.f60796h = new Application.ActivityLifecycleCallbacks() { // from class: com.umeng.analytics.pro.k.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                k.f60792r.a(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.F)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityPaused: FirstResumeTrigger enabled.");
                    synchronized (k.f60791q) {
                        if (k.f60790p) {
                            return;
                        }
                    }
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityPaused: FirstResumeTrigger disabled.");
                }
                if (k.f60784b != MobclickAgent.PageMode.AUTO) {
                    return;
                }
                k.this.c(activity);
                com.umeng.analytics.b.a().i();
                k.this.f60793c = false;
                k.f60792r.d(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.F)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityResumed: FirstResumeTrigger enabled.");
                    synchronized (k.f60791q) {
                        if (k.f60790p) {
                            boolean unused = k.f60790p = false;
                        }
                    }
                    k.this.a(activity);
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityResumed: FirstResumeTrigger disabled.");
                    k.this.a(activity);
                }
                k.f60792r.c(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                if (activity != null) {
                    if (k.this.f60799n <= 0) {
                        if (k.f60785e == null) {
                            k.f60785e = UUID.randomUUID().toString();
                        }
                        if (k.f60786f == -1) {
                            k.f60786f = activity.isTaskRoot() ? 1 : 0;
                        }
                        if (k.f60786f == 0 && UMUtils.isMainProgress(activity)) {
                            HashMap hashMap = new HashMap();
                            hashMap.put(BaseAppConfig.KEY_ACTIVITY_NAME, activity.toString());
                            hashMap.put(ForumPostsTagSelectActivity_.f30340y, Integer.valueOf(Process.myPid()));
                            hashMap.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(activity) ? 1 : 0));
                            com.umeng.analytics.b a4 = com.umeng.analytics.b.a();
                            if (a4 != null) {
                                a4.a((Context) activity, "$$_onUMengEnterForegroundInitError", (Map<String, Object>) hashMap);
                            }
                            k.f60786f = -2;
                            if (UMConfigure.isDebugLog()) {
                                UMLog.mutlInfo(2, i.ar);
                            }
                        } else if (k.f60786f == 1 || !UMUtils.isMainProgress(activity)) {
                            HashMap hashMap2 = new HashMap();
                            hashMap2.put("pairUUID", k.f60785e);
                            hashMap2.put(ForumPostsTagSelectActivity_.f30340y, Integer.valueOf(Process.myPid()));
                            hashMap2.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(activity) ? 1 : 0));
                            hashMap2.put(BaseAppConfig.KEY_ACTIVITY_NAME, activity.toString());
                            if (com.umeng.analytics.b.a() != null) {
                                com.umeng.analytics.b.a().a((Context) activity, "$$_onUMengEnterForeground", (Map<String, Object>) hashMap2);
                            }
                        }
                    }
                    if (k.this.f60800o < 0) {
                        k.e(k.this);
                    } else {
                        k.f(k.this);
                    }
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                MobclickAgent.PageMode pageMode = k.f60784b;
                MobclickAgent.PageMode pageMode2 = MobclickAgent.PageMode.AUTO;
                if (activity != null) {
                    if (activity.isChangingConfigurations()) {
                        k.a(k.this);
                        return;
                    }
                    k.b(k.this);
                    if (k.this.f60799n <= 0) {
                        if (k.f60786f == 0 && UMUtils.isMainProgress(activity)) {
                            return;
                        }
                        int i2 = k.f60786f;
                        if (i2 == 1 || (i2 == 0 && !UMUtils.isMainProgress(activity))) {
                            HashMap hashMap = new HashMap();
                            hashMap.put("pairUUID", k.f60785e);
                            hashMap.put("reason", "Normal");
                            hashMap.put(ForumPostsTagSelectActivity_.f30340y, Integer.valueOf(Process.myPid()));
                            hashMap.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(activity) ? 1 : 0));
                            hashMap.put(BaseAppConfig.KEY_ACTIVITY_NAME, activity.toString());
                            com.umeng.analytics.b a4 = com.umeng.analytics.b.a();
                            if (a4 != null) {
                                a4.a((Context) activity, "$$_onUMengEnterBackground", (Map<String, Object>) hashMap);
                            }
                            if (k.f60785e != null) {
                                k.f60785e = null;
                            }
                        }
                    }
                }
            }
        };
        synchronized (this) {
            if (f60789l != null) {
                g();
            }
        }
    }

    public void c() {
        c((Activity) null);
        b();
    }

    public void b(Context context) {
        synchronized (f60791q) {
            if (f60790p) {
                f60790p = false;
                Activity globleActivity = DeviceConfig.getGlobleActivity(context);
                if (globleActivity == null) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> init触发onResume: 无前台Activity，直接退出。");
                    return;
                }
                String localClassName = globleActivity.getLocalClassName();
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> init触发onResume: 补救成功，前台Activity名：" + localClassName);
                a(globleActivity);
                return;
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> init触发onResume: firstResumeCall = false，直接返回。");
        }
    }

    public static void c(Context context) {
        String jSONArray;
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                synchronized (f60788k) {
                    jSONArray = f60787j.toString();
                    f60787j = new JSONArray();
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put(d.C0351d.a.f60707c, new JSONArray(jSONArray));
                    h.a(context).a(t.a().c(), jSONObject, h.a.AUTOPAGE);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public boolean a() {
        return this.f60798m;
    }

    public static synchronized k a(Context context) {
        k kVar;
        synchronized (k.class) {
            if (f60789l == null && context != null) {
                if (context instanceof Activity) {
                    f60789l = ((Activity) context).getApplication();
                } else if (context instanceof Application) {
                    f60789l = (Application) context;
                }
            }
            kVar = a.f60802a;
        }
        return kVar;
    }

    public static void a(Context context, String str) {
        if (f60786f == 1 && UMUtils.isMainProgress(context)) {
            HashMap hashMap = new HashMap();
            hashMap.put("pairUUID", f60785e);
            hashMap.put("reason", str);
            if (f60785e != null) {
                f60785e = null;
            }
            if (context != null) {
                hashMap.put(ForumPostsTagSelectActivity_.f30340y, Integer.valueOf(Process.myPid()));
                hashMap.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(context) ? 1 : 0));
                hashMap.put("Context", context.toString());
                com.umeng.analytics.b.a().a(context, "$$_onUMengEnterBackground", (Map<String, Object>) hashMap);
            }
        }
    }

    public void b() {
        this.f60798m = false;
        Application application = f60789l;
        if (application != null) {
            if (Build.VERSION.SDK_INT >= 14) {
                application.unregisterActivityLifecycleCallbacks(this.f60796h);
            }
            f60789l = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Activity activity) {
        long j4;
        long j5;
        try {
            synchronized (this.f60797i) {
                if (f60783a == null && activity != null) {
                    f60783a = activity.getPackageName() + g0.f27568a + activity.getLocalClassName();
                }
                j4 = 0;
                if (TextUtils.isEmpty(f60783a) || !this.f60797i.containsKey(f60783a)) {
                    j5 = 0;
                } else {
                    long longValue = this.f60797i.get(f60783a).longValue();
                    this.f60797i.remove(f60783a);
                    j4 = System.currentTimeMillis() - longValue;
                    j5 = longValue;
                }
            }
            synchronized (f60788k) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(c.f60645v, f60783a);
                    jSONObject.put("duration", j4);
                    jSONObject.put(c.f60647x, j5);
                    jSONObject.put("type", 0);
                    f60787j.put(jSONObject);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    private void b(Activity activity) {
        f60783a = activity.getPackageName() + g0.f27568a + activity.getLocalClassName();
        synchronized (this.f60797i) {
            this.f60797i.put(f60783a, Long.valueOf(System.currentTimeMillis()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity) {
        if (f60784b == MobclickAgent.PageMode.AUTO && activity != null) {
            String str = activity.getPackageName() + g0.f27568a + activity.getLocalClassName();
            this.f60795g.activityResume(str);
            if (this.f60793c) {
                this.f60793c = false;
                if (!TextUtils.isEmpty(f60783a)) {
                    if (f60783a.equals(str)) {
                        return;
                    }
                    b(activity);
                    synchronized (f60791q) {
                        com.umeng.analytics.b.a().h();
                    }
                    return;
                }
                f60783a = str;
                return;
            }
            b(activity);
            synchronized (f60791q) {
                com.umeng.analytics.b.a().h();
            }
        }
    }
}
