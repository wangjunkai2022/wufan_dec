package com.cmic.sso.sdk.auth;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.cmic.sso.sdk.e.e;
import com.cmic.sso.sdk.e.g;
import com.cmic.sso.sdk.e.h;
import com.cmic.sso.sdk.e.j;
import com.cmic.sso.sdk.e.k;
import com.cmic.sso.sdk.e.m;
import com.cmic.sso.sdk.e.n;
import com.cmic.sso.sdk.e.o;
import com.cmic.sso.sdk.e.q;
import com.cmic.sso.sdk.e.r;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.qq.e.comm.pi.ACTD;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AuthnHelperCore.java */
/* loaded from: classes2.dex */
public class c {
    public static final String SDK_VERSION = "quick_login_android_5.9.1";
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: f  reason: collision with root package name */
    private static c f10743f;

    /* renamed from: a  reason: collision with root package name */
    protected final com.cmic.sso.sdk.auth.a f10744a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f10745b;

    /* renamed from: c  reason: collision with root package name */
    protected long f10746c;

    /* renamed from: d  reason: collision with root package name */
    protected final Handler f10747d;

    /* renamed from: e  reason: collision with root package name */
    protected String f10748e;

    /* renamed from: g  reason: collision with root package name */
    private final Object f10749g;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: AuthnHelperCore.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final com.cmic.sso.sdk.a f10777b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(com.cmic.sso.sdk.a aVar) {
            this.f10777b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONObject a4;
            if (!r.a(c.this.f10745b).a() && this.f10777b.b("doNetworkSwitch", false)) {
                a4 = d.a("102508", "数据网络切换失败");
            } else {
                a4 = d.a("200023", "登录超时");
            }
            c.this.callBackResult(a4.optString("resultCode", "200023"), a4.optString("resultString", "登录超时"), this.f10777b, a4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        this.f10746c = 8000L;
        this.f10749g = new Object();
        Context applicationContext = context.getApplicationContext();
        this.f10745b = applicationContext;
        this.f10747d = new Handler(applicationContext.getMainLooper());
        this.f10744a = com.cmic.sso.sdk.auth.a.a(applicationContext);
        r.a(applicationContext);
        k.a(applicationContext);
        j.a(applicationContext);
        n.a(new n.a() { // from class: com.cmic.sso.sdk.auth.c.1
            @Override // com.cmic.sso.sdk.e.n.a
            protected void a() {
                String b4 = k.b("AID", "");
                com.cmic.sso.sdk.e.c.b("AuthnHelperCore", "aid = " + b4);
                if (TextUtils.isEmpty(b4)) {
                    c.this.a();
                }
                if (com.cmic.sso.sdk.e.b.a(c.this.f10745b, true)) {
                    com.cmic.sso.sdk.e.c.b("AuthnHelperCore", "生成androidkeystore成功");
                } else {
                    com.cmic.sso.sdk.e.c.b("AuthnHelperCore", "生成androidkeystore失败");
                }
            }
        });
    }

    public static c getInstance(Context context) {
        if (f10743f == null) {
            synchronized (c.class) {
                if (f10743f == null) {
                    f10743f = new c(context);
                }
            }
        }
        return f10743f;
    }

    public static void setDebugMode(boolean z3) {
        com.cmic.sso.sdk.e.c.a(z3);
    }

    public void callBackResult(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
        final JSONObject a4;
        try {
            String b4 = aVar.b("traceId");
            final int b5 = aVar.b("SDKRequestCode", -1);
            if (e.a(b4)) {
                return;
            }
            synchronized (this) {
                final TokenListener c4 = e.c(b4);
                if (jSONObject == null || !jSONObject.optBoolean("keepListener", false)) {
                    e.b(b4);
                }
                if (c4 == null) {
                    return;
                }
                aVar.a("systemEndTime", SystemClock.elapsedRealtime());
                aVar.a("endtime", o.a());
                int c5 = aVar.c("logintype");
                if (jSONObject == null) {
                    jSONObject = d.a(str, str2);
                }
                if (c5 == 3) {
                    a4 = d.a(str, aVar, jSONObject);
                } else {
                    a4 = d.a(str, str2, aVar, jSONObject);
                }
                a4.put("scripExpiresIn", String.valueOf(h.a()));
                this.f10747d.post(new Runnable() { // from class: com.cmic.sso.sdk.auth.c.6
                    @Override // java.lang.Runnable
                    public void run() {
                        c4.onGetTokenComplete(b5, a4);
                    }
                });
                com.cmic.sso.sdk.a.c.a(this.f10745b).a(aVar);
                if (!aVar.b().j() && !q.a(aVar.b())) {
                    a(this.f10745b, str, aVar);
                }
                if (e.a()) {
                    r.a(this.f10745b).b();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void delScrip() {
        try {
            h.a(true, true);
            com.cmic.sso.sdk.e.c.b("AuthnHelperCore", "删除scrip");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public JSONObject getNetworkType(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            try {
                boolean a4 = m.a(this.f10745b);
                com.cmic.sso.sdk.b.a.a().a(context, g.a(context, "android.permission.READ_PHONE_STATE"), a4);
                String a5 = j.a().a((String) null);
                int a6 = m.a(context, a4);
                jSONObject.put("operatortype", a5);
                jSONObject.put("networktype", a6 + "");
                com.cmic.sso.sdk.e.c.b("AuthnHelperCore", "网络类型: " + a6);
                com.cmic.sso.sdk.e.c.b("AuthnHelperCore", "运营商类型: " + a5);
                return jSONObject;
            } catch (Exception unused) {
                jSONObject.put("errorDes", "发生未知错误");
                return jSONObject;
            }
        } catch (JSONException e4) {
            e4.printStackTrace();
            return jSONObject;
        }
    }

    public void getPhoneInfo(final String str, final String str2, final TokenListener tokenListener) {
        final com.cmic.sso.sdk.a a4 = a(tokenListener);
        n.a(new n.a(this.f10745b, a4) { // from class: com.cmic.sso.sdk.auth.c.4
            @Override // com.cmic.sso.sdk.e.n.a
            protected void a() {
                if (c.this.a(a4, str, str2, "preGetMobile", 3, tokenListener)) {
                    c.this.a(a4);
                }
            }
        });
    }

    public void loginAuth(final String str, final String str2, final TokenListener tokenListener) {
        final com.cmic.sso.sdk.a a4 = a(tokenListener);
        n.a(new n.a(this.f10745b, a4) { // from class: com.cmic.sso.sdk.auth.c.2
            @Override // com.cmic.sso.sdk.e.n.a
            protected void a() {
                if (c.this.a(a4, str, str2, "loginAuth", 1, tokenListener)) {
                    c.this.a(a4);
                }
            }
        });
    }

    public void mobileAuth(final String str, final String str2, final TokenListener tokenListener) {
        final com.cmic.sso.sdk.a a4 = a(tokenListener);
        n.a(new n.a(this.f10745b, a4) { // from class: com.cmic.sso.sdk.auth.c.3
            @Override // com.cmic.sso.sdk.e.n.a
            protected void a() {
                if (c.this.a(a4, str, str2, "mobileAuth", 0, tokenListener)) {
                    c.this.a(a4);
                }
            }
        });
    }

    public void setOverTime(long j4) {
        this.f10746c = j4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        String str = "%" + q.b();
        com.cmic.sso.sdk.e.c.b("AuthnHelperCore", "generate aid = " + str);
        k.a("AID", str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.cmic.sso.sdk.a a(TokenListener tokenListener) {
        com.cmic.sso.sdk.a aVar = new com.cmic.sso.sdk.a(64);
        String c4 = q.c();
        aVar.a(new com.cmic.sso.sdk.d.b());
        aVar.a("traceId", c4);
        com.cmic.sso.sdk.e.c.a("traceId", c4);
        if (tokenListener != null) {
            e.a(c4, tokenListener);
        }
        return aVar;
    }

    public static c getInstance(Context context, String str) {
        if (f10743f == null) {
            synchronized (c.class) {
                if (f10743f == null) {
                    f10743f = new c(context, str);
                }
            }
        }
        return f10743f;
    }

    private c(Context context, String str) {
        this(context);
        this.f10748e = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.cmic.sso.sdk.a aVar) {
        final a aVar2 = new a(aVar);
        this.f10747d.postDelayed(aVar2, this.f10746c);
        this.f10744a.a(aVar, new b() { // from class: com.cmic.sso.sdk.auth.c.5
            @Override // com.cmic.sso.sdk.auth.b
            public void a(String str, String str2, com.cmic.sso.sdk.a aVar3, JSONObject jSONObject) {
                c.this.f10747d.removeCallbacks(aVar2);
                c.this.callBackResult(str, str2, aVar3, jSONObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(com.cmic.sso.sdk.a aVar, String str, String str2, String str3, int i2, TokenListener tokenListener) {
        boolean a4;
        com.cmic.sso.sdk.a.a a5 = com.cmic.sso.sdk.a.c.a(this.f10745b).a();
        aVar.a(a5);
        aVar.a("use2048PublicKey", "rsa2048".equals(this.f10748e));
        aVar.a("systemStartTime", SystemClock.elapsedRealtime());
        aVar.a("starttime", o.a());
        aVar.a("loginMethod", str3);
        aVar.a("appkey", str2);
        aVar.a(ACTD.APPID_KEY, str);
        aVar.a("timeOut", String.valueOf(this.f10746c));
        boolean a6 = g.a(this.f10745b, "android.permission.READ_PHONE_STATE");
        com.cmic.sso.sdk.e.c.a("AuthnHelperCore", "有READ_PHONE_STATE权限？" + a6);
        aVar.a("hsaReadPhoneStatePermission", a6);
        boolean a7 = m.a(this.f10745b);
        com.cmic.sso.sdk.b.a.a().a(this.f10745b, a6, a7);
        aVar.a("networkClass", com.cmic.sso.sdk.b.a.a().a(this.f10745b));
        String b4 = j.a().b();
        String c4 = j.a().c();
        String a8 = j.a().a(c4);
        aVar.a("operator", c4);
        aVar.a("operatortype", a8);
        aVar.a("logintype", i2);
        com.cmic.sso.sdk.e.c.b("AuthnHelperCore", "subId = " + b4);
        if (!TextUtils.isEmpty(b4)) {
            com.cmic.sso.sdk.e.c.a("AuthnHelperCore", "使用subId作为缓存key = " + b4);
            aVar.a("scripType", "subid");
            aVar.a("scripKey", b4);
        } else if (!TextUtils.isEmpty(c4)) {
            com.cmic.sso.sdk.e.c.a("AuthnHelperCore", "使用operator作为缓存key = " + c4);
            aVar.a("scripType", "operator");
            aVar.a("scripKey", c4);
        }
        int a9 = m.a(this.f10745b, a7);
        aVar.a("networktype", a9);
        if (!a7) {
            aVar.a("authType", String.valueOf(0));
            callBackResult("200010", "无法识别sim卡或没有sim卡", aVar, null);
            return false;
        } else if (tokenListener == null) {
            callBackResult("102203", "listener不能为空", aVar, null);
            return false;
        } else if (a5.g()) {
            callBackResult("200082", "服务器繁忙，请稍后重试", aVar, null);
            return false;
        } else {
            if (TextUtils.isEmpty(str == null ? "" : str.trim())) {
                callBackResult("102203", "appId 不能为空", aVar, null);
                return false;
            }
            if (TextUtils.isEmpty(str2 == null ? "" : str2.trim())) {
                callBackResult("102203", "appkey不能为空", aVar, null);
                return false;
            } else if (a9 == 0) {
                callBackResult("102101", "未检测到网络", aVar, null);
                return false;
            } else if (PayCenterOrderRequest.PAY_TYPE_RECHARGE.equals(a8) && a5.f()) {
                callBackResult("200082", "服务器繁忙，请稍后重试", aVar, null);
                return false;
            } else if ("3".equals(a8) && a5.e()) {
                callBackResult("200082", "服务器繁忙，请稍后重试", aVar, null);
                return false;
            } else {
                synchronized (this.f10749g) {
                    a4 = h.a(aVar);
                    if (a4) {
                        aVar.a("securityphone", k.b("securityphone", ""));
                        if (3 != i2) {
                            String a10 = h.a(this.f10745b);
                            StringBuilder sb = new StringBuilder();
                            sb.append("解密phoneScript ");
                            sb.append(!TextUtils.isEmpty(a10));
                            com.cmic.sso.sdk.e.c.b("AuthnHelperCore", sb.toString());
                            if (TextUtils.isEmpty(a10)) {
                                a4 = false;
                            } else {
                                aVar.a("phonescrip", a10);
                            }
                            h.a(true, false);
                        }
                    }
                    aVar.a("isCacheScrip", a4);
                    com.cmic.sso.sdk.e.c.b("AuthnHelperCore", "isCachePhoneScrip = " + a4);
                }
                if (a9 != 2 || a4) {
                    return true;
                }
                callBackResult("102103", "无数据网络", aVar, null);
                return false;
            }
        }
    }

    private void a(final Context context, final String str, final com.cmic.sso.sdk.a aVar) {
        n.a(new n.a() { // from class: com.cmic.sso.sdk.auth.c.7
            @Override // com.cmic.sso.sdk.e.n.a
            protected void a() {
                if ("200023".equals(str)) {
                    SystemClock.sleep(8000L);
                }
                new com.cmic.sso.sdk.d.d().a(context, str, aVar);
            }
        });
    }
}
