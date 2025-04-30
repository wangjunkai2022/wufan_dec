package com.cmic.sso.sdk.auth;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.cmic.sso.sdk.auth.c;
import com.cmic.sso.sdk.e.e;
import com.cmic.sso.sdk.e.h;
import com.cmic.sso.sdk.e.n;
import com.cmic.sso.sdk.view.AuthThemeConfig;
import com.cmic.sso.sdk.view.LoginPageInListener;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AuthnHelper extends c {

    /* renamed from: f  reason: collision with root package name */
    private static AuthnHelper f10717f;

    /* renamed from: g  reason: collision with root package name */
    private AuthThemeConfig f10718g;

    /* renamed from: h  reason: collision with root package name */
    private LoginPageInListener f10719h;

    private AuthnHelper(Context context) {
        super(context);
        this.f10719h = null;
    }

    public static AuthnHelper getInstance(Context context) {
        if (f10717f == null) {
            synchronized (AuthnHelper.class) {
                if (f10717f == null) {
                    f10717f = new AuthnHelper(context);
                }
            }
        }
        return f10717f;
    }

    public AuthThemeConfig getAuthThemeConfig() {
        if (this.f10718g == null) {
            this.f10718g = new AuthThemeConfig.Builder().build();
        }
        return this.f10718g;
    }

    public long getOverTime() {
        return this.f10746c;
    }

    @Override // com.cmic.sso.sdk.auth.c
    public void getPhoneInfo(String str, String str2, TokenListener tokenListener) {
        getPhoneInfo(str, str2, tokenListener, -1);
    }

    @Override // com.cmic.sso.sdk.auth.c
    public void loginAuth(String str, String str2, TokenListener tokenListener) {
        loginAuth(str, str2, tokenListener, -1);
    }

    public void loginPageInCallBack(String str, JSONObject jSONObject) {
        LoginPageInListener loginPageInListener = this.f10719h;
        if (loginPageInListener != null) {
            loginPageInListener.onLoginPageInComplete(str, jSONObject);
        }
    }

    @Override // com.cmic.sso.sdk.auth.c
    public void mobileAuth(String str, String str2, TokenListener tokenListener) {
        mobileAuth(str, str2, tokenListener, -1);
    }

    public void quitAuthActivity() {
        try {
            if (com.cmic.sso.sdk.view.a.a().b() != null) {
                com.cmic.sso.sdk.view.a.a().b().a();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            com.cmic.sso.sdk.e.c.a("AuthnHelper", "关闭授权页失败");
        }
    }

    public void setAuthThemeConfig(AuthThemeConfig authThemeConfig) {
        this.f10718g = authThemeConfig;
    }

    public void setPageInListener(LoginPageInListener loginPageInListener) {
        this.f10719h = loginPageInListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, com.cmic.sso.sdk.a aVar) {
        String b4 = aVar.b("traceId");
        Intent intent = new Intent();
        intent.putExtra("traceId", b4);
        e.a(aVar.b("traceId"), aVar);
        intent.setClassName(context, "com.cmic.sso.sdk.view.LoginAuthActivity");
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public void getPhoneInfo(final String str, final String str2, final TokenListener tokenListener, int i2) {
        final com.cmic.sso.sdk.a a4 = a(tokenListener);
        a4.a("SDKRequestCode", i2);
        n.a(new n.a(this.f10745b, a4) { // from class: com.cmic.sso.sdk.auth.AuthnHelper.1
            @Override // com.cmic.sso.sdk.e.n.a
            protected void a() {
                if (AuthnHelper.this.a(a4, str, str2, "preGetMobile", 3, tokenListener)) {
                    AuthnHelper.super.a(a4);
                }
            }
        });
    }

    public void loginAuth(final String str, final String str2, final TokenListener tokenListener, int i2) {
        final com.cmic.sso.sdk.a a4 = a(tokenListener);
        a4.a("SDKRequestCode", i2);
        n.a(new n.a(this.f10745b, a4) { // from class: com.cmic.sso.sdk.auth.AuthnHelper.2
            @Override // com.cmic.sso.sdk.e.n.a
            protected void a() {
                if (AuthnHelper.this.a(a4, str, str2, "loginAuth", 3, tokenListener)) {
                    String a5 = h.a(AuthnHelper.this.f10745b);
                    if (!TextUtils.isEmpty(a5)) {
                        a4.a("phonescrip", a5);
                    }
                    AuthnHelper.this.a(a4);
                }
            }
        });
    }

    public void mobileAuth(final String str, final String str2, final TokenListener tokenListener, int i2) {
        final com.cmic.sso.sdk.a a4 = a(tokenListener);
        a4.a("SDKRequestCode", i2);
        n.a(new n.a(this.f10745b, a4) { // from class: com.cmic.sso.sdk.auth.AuthnHelper.3
            @Override // com.cmic.sso.sdk.e.n.a
            protected void a() {
                if (AuthnHelper.this.a(a4, str, str2, "mobileAuth", 0, tokenListener)) {
                    AuthnHelper.super.a(a4);
                }
            }
        });
    }

    private AuthnHelper(Context context, String str) {
        super(context);
        this.f10719h = null;
        this.f10748e = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cmic.sso.sdk.auth.c
    public void a(com.cmic.sso.sdk.a aVar) {
        final c.a aVar2 = new c.a(aVar);
        this.f10747d.postDelayed(aVar2, this.f10746c);
        this.f10744a.a(aVar, new b() { // from class: com.cmic.sso.sdk.auth.AuthnHelper.4
            @Override // com.cmic.sso.sdk.auth.b
            public void a(String str, String str2, com.cmic.sso.sdk.a aVar3, JSONObject jSONObject) {
                com.cmic.sso.sdk.e.c.b("onBusinessComplete", "onBusinessComplete");
                AuthnHelper.this.f10747d.removeCallbacks(aVar2);
                if ("103000".equals(str) && !e.a(aVar3.b("traceId"))) {
                    AuthnHelper.b(AuthnHelper.this.f10745b, aVar3);
                } else {
                    AuthnHelper.this.callBackResult(str, str2, aVar3, jSONObject);
                }
            }
        });
    }

    public static AuthnHelper getInstance(Context context, String str) {
        if (f10717f == null) {
            synchronized (AuthnHelper.class) {
                if (f10717f == null) {
                    f10717f = new AuthnHelper(context, str);
                }
            }
        }
        return f10717f;
    }
}
