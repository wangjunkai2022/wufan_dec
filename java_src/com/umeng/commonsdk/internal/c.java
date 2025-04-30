package com.umeng.commonsdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.ai;
import com.umeng.analytics.pro.ak;
import com.umeng.analytics.pro.al;
import com.umeng.analytics.pro.am;
import com.umeng.analytics.pro.n;
import com.umeng.analytics.pro.z;
import com.umeng.commonsdk.UMConfigureImpl;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.listener.OnGetOaidListener;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.idtracking.i;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.commonsdk.utils.onMessageSendListener;
import com.umeng.umzid.ZIDManager;
import java.io.File;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* compiled from: UMInternalDataProtocol.java */
/* loaded from: classes4.dex */
public class c implements UMLogDataProtocol {

    /* renamed from: b  reason: collision with root package name */
    private static int f61155b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final String f61156c = "info";

    /* renamed from: d  reason: collision with root package name */
    private static final String f61157d = "stat";

    /* renamed from: e  reason: collision with root package name */
    private static Class<?> f61158e;

    /* renamed from: f  reason: collision with root package name */
    private static Method f61159f;

    /* renamed from: g  reason: collision with root package name */
    private static Method f61160g;

    /* renamed from: h  reason: collision with root package name */
    private static Method f61161h;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f61162i;

    /* renamed from: a  reason: collision with root package name */
    private Context f61163a;

    static {
        c();
    }

    public c(Context context) {
        if (context != null) {
            this.f61163a = context.getApplicationContext();
        }
    }

    public static String b() {
        Method method;
        Class<?> cls = f61158e;
        if (cls == null || (method = f61159f) == null || f61161h == null) {
            return "";
        }
        try {
            Object invoke = method.invoke(cls, new Object[0]);
            return invoke != null ? (String) f61161h.invoke(invoke, new Object[0]) : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private static void c() {
        try {
            f61158e = ZIDManager.class;
            Method declaredMethod = ZIDManager.class.getDeclaredMethod("getInstance", new Class[0]);
            if (declaredMethod != null) {
                f61159f = declaredMethod;
            }
            Method declaredMethod2 = f61158e.getDeclaredMethod("getZID", Context.class);
            if (declaredMethod2 != null) {
                f61160g = declaredMethod2;
            }
            Method declaredMethod3 = f61158e.getDeclaredMethod("getSDKVersion", new Class[0]);
            if (declaredMethod3 != null) {
                f61161h = declaredMethod3;
            }
        } catch (Throwable unused) {
        }
    }

    private void d() {
        ak a4 = ak.a(this.f61163a);
        al a5 = a4.a(am.f60481c);
        if (a5 != null) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]二级缓存记录构建成真正信封。");
            try {
                String str = a5.f60473a;
                String str2 = a5.f60474b;
                JSONObject a6 = new com.umeng.commonsdk.statistics.b().a(this.f61163a.getApplicationContext(), new JSONObject(a5.f60475c), new JSONObject(a5.f60476d), a5.f60477e, str2, a5.f60478f);
                if (a6 != null && a6.has("exception")) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]二级缓存记录构建真正信封 失败。删除二级缓存记录");
                } else {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> [有状态]二级缓存记录构建真正信封 成功! 删除二级缓存记录。");
                }
                a4.a(am.f60481c, str);
                a4.b();
            } catch (Throwable unused) {
            }
        }
    }

    private void e() {
        if (!f61162i) {
            if (!FieldManager.allow(com.umeng.commonsdk.utils.b.G) || Build.VERSION.SDK_INT <= 28) {
                return;
            }
            f61162i = true;
            a(this.f61163a, new OnGetOaidListener() { // from class: com.umeng.commonsdk.internal.c.4
                @Override // com.umeng.commonsdk.listener.OnGetOaidListener
                public void onGetOaid(String str) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> OAID云控参数更新(不采集->采集)：采集完成");
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            SharedPreferences sharedPreferences = c.this.f61163a.getSharedPreferences(i.f61371a, 0);
                            if (sharedPreferences != null) {
                                SharedPreferences.Editor edit = sharedPreferences.edit();
                                edit.putString(i.f61372b, str);
                                edit.commit();
                            }
                        } catch (Throwable unused) {
                        }
                        UMWorkDispatch.sendEvent(c.this.f61163a, a.f61148w, b.a(c.this.f61163a).a(), null);
                        return;
                    }
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> oaid返回null或者空串，不需要 伪冷启动。");
                }
            });
        } else if (FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
        } else {
            f61162i = false;
        }
    }

    private void f() {
        if (!FieldManager.allow(com.umeng.commonsdk.utils.b.G) || Build.VERSION.SDK_INT <= 28) {
            return;
        }
        f61162i = true;
        UMConfigureImpl.registerInterruptFlag();
        UMConfigureImpl.init(this.f61163a);
        f61155b++;
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 要读取 oaid，需等待读取结果.");
        UMConfigureImpl.registerMessageSendListener(new onMessageSendListener() { // from class: com.umeng.commonsdk.internal.c.5
            @Override // com.umeng.commonsdk.utils.onMessageSendListener
            public void onMessageSend() {
                if (c.this.f61163a != null) {
                    UMWorkDispatch.sendEvent(c.this.f61163a, a.f61149x, b.a(c.this.f61163a).a(), null);
                }
                UMConfigureImpl.removeMessageSendListener(this);
            }
        });
        b(this.f61163a);
    }

    private void g() {
        if (f61155b <= 0) {
            h();
            d(this.f61163a);
        }
    }

    private void h() {
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 真实构建条件满足，开始构建业务信封。");
        if (UMUtils.isMainProgress(this.f61163a)) {
            e(this.f61163a);
            com.umeng.commonsdk.a.a(this.f61163a);
            Context context = this.f61163a;
            UMWorkDispatch.sendEvent(context, n.a.f60860x, CoreProtocol.getInstance(context), null);
            Context context2 = this.f61163a;
            UMWorkDispatch.sendEvent(context2, a.f61145t, b.a(context2).a(), null);
        }
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j4) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00d1 A[Catch: all -> 0x0285, TryCatch #0 {all -> 0x0285, blocks: (B:5:0x001b, B:17:0x008d, B:19:0x00a4, B:21:0x00af, B:24:0x00b6, B:26:0x00bc, B:28:0x00c7, B:33:0x00d1, B:35:0x00d7, B:36:0x00e3, B:37:0x00ea), top: B:68:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ea A[Catch: all -> 0x0285, TRY_LEAVE, TryCatch #0 {all -> 0x0285, blocks: (B:5:0x001b, B:17:0x008d, B:19:0x00a4, B:21:0x00af, B:24:0x00b6, B:26:0x00bc, B:28:0x00c7, B:33:0x00d1, B:35:0x00d7, B:36:0x00e3, B:37:0x00ea), top: B:68:0x0016 }] */
    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void workEvent(java.lang.Object r9, int r10) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.internal.c.workEvent(java.lang.Object, int):void");
    }

    public String a() {
        Method method;
        Class<?> cls = f61158e;
        if (cls == null || (method = f61159f) == null || f61160g == null) {
            return "";
        }
        try {
            Object invoke = method.invoke(cls, new Object[0]);
            return invoke != null ? (String) f61160g.invoke(invoke, this.f61163a) : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private static void b(final Context context) {
        new Thread(new Runnable() { // from class: com.umeng.commonsdk.internal.c.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SharedPreferences sharedPreferences = context.getSharedPreferences(i.f61371a, 0);
                    long currentTimeMillis = System.currentTimeMillis();
                    String a4 = z.a(context);
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (!TextUtils.isEmpty(a4) && sharedPreferences != null) {
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        edit.putString(i.f61373c, (currentTimeMillis2 - currentTimeMillis) + "");
                        edit.commit();
                    }
                    if (sharedPreferences != null) {
                        SharedPreferences.Editor edit2 = sharedPreferences.edit();
                        edit2.putString(i.f61372b, a4);
                        edit2.commit();
                    }
                    if (Build.VERSION.SDK_INT > 28) {
                        UMConfigureImpl.removeInterruptFlag();
                    }
                } catch (Throwable unused) {
                }
            }
        }).start();
    }

    private void a(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appkey", UMGlobalContext.getInstance(context).getAppkey());
            jSONObject.put("app_version", UMGlobalContext.getInstance(context).getAppVersion());
            jSONObject.put(ai.f60424x, "Android");
            JSONObject buildZeroEnvelopeWithExtHeader = UMEnvelopeBuild.buildZeroEnvelopeWithExtHeader(context, jSONObject, null, UMServerURL.ZCFG_PATH);
            if (buildZeroEnvelopeWithExtHeader != null && buildZeroEnvelopeWithExtHeader.has("exception")) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建零号报文失败.");
            } else {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 构建零号报文 成功!!!");
            }
        } catch (Throwable unused) {
        }
    }

    private static void c(final Context context) {
        if (!FieldManager.allow(com.umeng.commonsdk.utils.b.G) || Build.VERSION.SDK_INT <= 28) {
            return;
        }
        a(context, new OnGetOaidListener() { // from class: com.umeng.commonsdk.internal.c.3
            @Override // com.umeng.commonsdk.listener.OnGetOaidListener
            public void onGetOaid(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                try {
                    SharedPreferences sharedPreferences = context.getSharedPreferences(i.f61371a, 0);
                    if (sharedPreferences == null || sharedPreferences.getString(i.f61372b, "").equalsIgnoreCase(str)) {
                        return;
                    }
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 更新本地缓存OAID");
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString(i.f61372b, str);
                    edit.commit();
                } catch (Throwable unused) {
                }
            }
        });
    }

    private static void e(Context context) {
        File filesDir = context.getFilesDir();
        File file = new File(filesDir.getAbsolutePath() + File.separator + am.f60490l);
        if (file.exists()) {
            return;
        }
        try {
            file.createNewFile();
        } catch (Throwable unused) {
        }
    }

    private static void a(Context context, final OnGetOaidListener onGetOaidListener) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        new Thread(new Runnable() { // from class: com.umeng.commonsdk.internal.c.2
            @Override // java.lang.Runnable
            public void run() {
                String a4 = z.a(applicationContext);
                OnGetOaidListener onGetOaidListener2 = onGetOaidListener;
                if (onGetOaidListener2 != null) {
                    onGetOaidListener2.onGetOaid(a4);
                }
            }
        }).start();
    }

    private static Class<?> a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private void d(Context context) {
        Object invoke;
        Method declaredMethod;
        Context applicationContext = context.getApplicationContext();
        String appkey = UMUtils.getAppkey(context);
        try {
            Class<?> a4 = a("com.umeng.umzid.ZIDManager");
            Method declaredMethod2 = a4.getDeclaredMethod("getInstance", new Class[0]);
            if (declaredMethod2 == null || (invoke = declaredMethod2.invoke(a4, new Object[0])) == null || (declaredMethod = a4.getDeclaredMethod("init", Context.class, String.class, a("com.umeng.umzid.IZIDCompletionCallback"))) == null) {
                return;
            }
            declaredMethod.invoke(invoke, applicationContext, appkey, null);
        } catch (Throwable unused) {
        }
    }
}
