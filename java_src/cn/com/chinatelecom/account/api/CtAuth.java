package cn.com.chinatelecom.account.api;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.a.d;
import cn.com.chinatelecom.account.api.b.b;
import cn.com.chinatelecom.account.api.d.c;
import cn.com.chinatelecom.account.api.e.f;
import cn.com.chinatelecom.account.api.e.g;
import cn.com.chinatelecom.account.api.e.j;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class CtAuth {
    private static final String TAG = "CtAuth";
    private static volatile CtAuth instance = null;
    public static boolean isInit = false;
    public static String mAppId = "";
    public static String mAppSecret = "";
    public static Context mContext;
    public static Handler mHandler = new Handler(Looper.getMainLooper());
    public static TraceLogger mTraceLogger;

    public static CtAuth getInstance() {
        if (instance == null) {
            synchronized (CtAuth.class) {
                if (instance == null) {
                    instance = new CtAuth();
                }
            }
        }
        return instance;
    }

    public static void info(String str, String str2) {
        if (mTraceLogger != null) {
            mTraceLogger.info("CT_" + str, str2);
        }
    }

    public static void postResultOnMainThread(final String str, final JSONObject jSONObject, final ResultListener resultListener) {
        mHandler.post(new Runnable() { // from class: cn.com.chinatelecom.account.api.CtAuth.1
            @Override // java.lang.Runnable
            public void run() {
                if (ResultListener.this != null) {
                    try {
                        String str2 = str;
                        if (str2 != null) {
                            jSONObject.put("reqId", str2);
                        }
                        ResultListener.this.onResult(jSONObject.toString());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    f.c(str);
                }
            }
        });
    }

    public static void warn(String str, String str2, Throwable th) {
        if (mTraceLogger != null) {
            mTraceLogger.warn("CT_" + str, str2, th);
        }
    }

    public Context getContext() {
        return mContext;
    }

    public String getOperatorType() {
        Context context = mContext;
        if (context != null) {
            return g.a(context, false);
        }
        throw new IllegalArgumentException("Please call the init method");
    }

    public void getPreCodeParamsByJs(String str, cn.com.chinatelecom.account.api.b.a aVar) {
        info(TAG, "called getPreCodeParamsByJs()");
        if (aVar == null) {
            return;
        }
        if (mContext == null || TextUtils.isEmpty(mAppId) || TextUtils.isEmpty(mAppSecret)) {
            aVar.callbackPreCodeParams(j.e().toString());
        } else {
            new b().a(str, aVar);
        }
    }

    public void init(Context context, String str, String str2, TraceLogger traceLogger) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null!");
        }
        if (str == null) {
            throw new IllegalArgumentException("appId must not be null!");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("appSecret must not be null!");
        }
        if (!(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        mContext = context;
        c.a(mContext);
        mAppId = str;
        mAppSecret = str2;
        mTraceLogger = traceLogger;
    }

    public boolean isMobileDataEnabled() {
        Context context = mContext;
        if (context != null) {
            return g.d(context);
        }
        throw new IllegalArgumentException("Please call the init method");
    }

    @Deprecated
    public void requestPreCode(CtSetting ctSetting, ResultListener resultListener) {
        requestPreLogin(ctSetting, resultListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void requestPreCodeByJs(java.lang.String r5, cn.com.chinatelecom.account.api.b.a r6) {
        /*
            r4 = this;
            java.lang.String r0 = cn.com.chinatelecom.account.api.CtAuth.TAG
            java.lang.String r1 = "called requestPreCodeByJs()"
            info(r0, r1)
            if (r6 != 0) goto La
            return
        La:
            android.content.Context r0 = cn.com.chinatelecom.account.api.CtAuth.mContext
            if (r0 == 0) goto L85
            java.lang.String r0 = cn.com.chinatelecom.account.api.CtAuth.mAppId
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L85
            java.lang.String r0 = cn.com.chinatelecom.account.api.CtAuth.mAppSecret
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L20
            goto L85
        L20:
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            r1 = 0
            if (r0 != 0) goto L44
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Exception -> L3b
            r0.<init>(r5)     // Catch: java.lang.Exception -> L3b
            java.lang.String r5 = "url"
            java.lang.String r5 = r0.optString(r5)     // Catch: java.lang.Exception -> L3b
            java.lang.String r2 = "taskId"
            java.lang.String r1 = r0.optString(r2)     // Catch: java.lang.Exception -> L39
            goto L40
        L39:
            r0 = move-exception
            goto L3d
        L3b:
            r0 = move-exception
            r5 = r1
        L3d:
            r0.printStackTrace()
        L40:
            r3 = r1
            r1 = r5
            r5 = r3
            goto L45
        L44:
            r5 = r1
        L45:
            boolean r0 = android.text.TextUtils.isEmpty(r1)
            if (r0 == 0) goto L57
            org.json.JSONObject r5 = cn.com.chinatelecom.account.api.e.j.f()
        L4f:
            java.lang.String r5 = r5.toString()
            r6.callbackPreCode(r5)
            return
        L57:
            android.content.Context r0 = cn.com.chinatelecom.account.api.CtAuth.mContext
            boolean r0 = cn.com.chinatelecom.account.api.e.g.c(r0)
            if (r0 == 0) goto L68
            cn.com.chinatelecom.account.api.b.b r0 = new cn.com.chinatelecom.account.api.b.b
            r0.<init>()
            r0.a(r5, r1, r6)
            goto L84
        L68:
            android.content.Context r0 = cn.com.chinatelecom.account.api.CtAuth.mContext
            boolean r0 = cn.com.chinatelecom.account.api.e.g.d(r0)
            if (r0 == 0) goto L79
            cn.com.chinatelecom.account.api.b.b r0 = new cn.com.chinatelecom.account.api.b.b
            r0.<init>()
            r0.b(r5, r1, r6)
            goto L84
        L79:
            org.json.JSONObject r5 = cn.com.chinatelecom.account.api.e.j.d()
            java.lang.String r5 = r5.toString()
            r6.callbackPreCode(r5)
        L84:
            return
        L85:
            org.json.JSONObject r5 = cn.com.chinatelecom.account.api.e.j.e()
            goto L4f
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.com.chinatelecom.account.api.CtAuth.requestPreCodeByJs(java.lang.String, cn.com.chinatelecom.account.api.b.a):void");
    }

    public void requestPreLogin(CtSetting ctSetting, int i2, ResultListener resultListener) {
        JSONObject e4;
        info(TAG, "called requestPreLogin()");
        if (resultListener == null) {
            return;
        }
        if (mContext == null || TextUtils.isEmpty(mAppId) || TextUtils.isEmpty(mAppSecret)) {
            e4 = j.e();
        } else if (g.b(mContext)) {
            if (g.c(mContext)) {
                new cn.com.chinatelecom.account.api.c.a(mContext, mAppId, mAppSecret).a(d.a(cn.com.chinatelecom.account.api.e.b.f8624e), ctSetting, i2, resultListener);
                return;
            } else if (g.d(mContext)) {
                new cn.com.chinatelecom.account.api.c.a(mContext, mAppId, mAppSecret).b(d.a(cn.com.chinatelecom.account.api.e.b.f8624e), ctSetting, i2, resultListener);
                return;
            } else {
                postResultOnMainThread(null, j.d(), resultListener);
                return;
            }
        } else {
            e4 = j.a();
        }
        postResultOnMainThread(null, e4, resultListener);
    }

    public void requestPreLogin(CtSetting ctSetting, ResultListener resultListener) {
        requestPreLogin(ctSetting, a.f8486d, resultListener);
    }

    public void setDomainName(String str, String str2, String str3) {
        g.f8660a = str;
        g.f8661b = str2;
        g.f8662c = str3;
    }
}
