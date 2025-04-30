package com.netease.nis.quicklogin.helper;

import android.content.Context;
import android.text.TextUtils;
import com.cmic.sso.sdk.auth.AuthnHelper;
import com.cmic.sso.sdk.auth.TokenListener;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.QuickLogin;
import com.netease.nis.quicklogin.entity.CMPrefetchNumber;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.utils.e;
import com.netease.nis.quicklogin.utils.g;
import org.json.JSONObject;
/* compiled from: CmLoginHelper.java */
/* loaded from: classes4.dex */
public class b extends com.netease.nis.quicklogin.helper.a {

    /* renamed from: b  reason: collision with root package name */
    private final AuthnHelper f54220b;

    /* renamed from: c  reason: collision with root package name */
    private final String f54221c;

    /* renamed from: d  reason: collision with root package name */
    private final String f54222d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f54223e;

    /* compiled from: CmLoginHelper.java */
    /* loaded from: classes4.dex */
    class a implements TokenListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QuickLoginPreMobileListener f54224a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f54225b;

        a(QuickLoginPreMobileListener quickLoginPreMobileListener, String str) {
            this.f54224a = quickLoginPreMobileListener;
            this.f54225b = str;
        }

        @Override // com.cmic.sso.sdk.auth.TokenListener
        public void onGetTokenComplete(int i2, JSONObject jSONObject) {
            Logger.d("prefetchMobileNumber [callback]" + jSONObject.toString());
            Logger.d("prefetchMobileNumber [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
            CMPrefetchNumber cMPrefetchNumber = (CMPrefetchNumber) com.netease.nis.quicklogin.utils.a.a(jSONObject.toString(), CMPrefetchNumber.class);
            if (cMPrefetchNumber != null) {
                String desc = cMPrefetchNumber.getDesc();
                if ("true".equals(desc)) {
                    e.a(b.this.f54223e, "timeend", System.currentTimeMillis() + 3600000);
                    e.a(b.this.f54223e, "cmccAppid", b.this.f54221c);
                    e.a(b.this.f54223e, "cmccAppkey", b.this.f54222d);
                    e.a(b.this.f54223e, "phone", cMPrefetchNumber.getSecurityphone());
                    QuickLoginPreMobileListener quickLoginPreMobileListener = this.f54224a;
                    if (quickLoginPreMobileListener != null) {
                        try {
                            quickLoginPreMobileListener.onGetMobileNumberSuccess(this.f54225b, cMPrefetchNumber.getSecurityphone());
                            return;
                        } catch (Exception e4) {
                            Logger.e(e4.getMessage());
                            return;
                        }
                    }
                    return;
                }
                String str = "result code:" + cMPrefetchNumber.getResultCode() + " desc:" + desc + " scripExpiresIn:" + cMPrefetchNumber.getScripExpiresIn();
                Logger.d("移动 prefetchMobileNumber [error]" + str);
                QuickLoginPreMobileListener quickLoginPreMobileListener2 = this.f54224a;
                if (quickLoginPreMobileListener2 != null) {
                    try {
                        quickLoginPreMobileListener2.onGetMobileNumberError(this.f54225b, "移动 prefetchMobileNumber failed:" + str);
                    } catch (Exception e5) {
                        Logger.e(e5.getMessage());
                    }
                }
                b.this.a(this.f54225b, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), com.netease.nis.quicklogin.utils.a.b(cMPrefetchNumber.getResultCode()), str);
                return;
            }
            Logger.d("移动 prefetchMobileNumber [error]" + jSONObject.toString());
            QuickLoginPreMobileListener quickLoginPreMobileListener3 = this.f54224a;
            if (quickLoginPreMobileListener3 != null) {
                try {
                    quickLoginPreMobileListener3.onGetMobileNumberError(this.f54225b, "移动 prefetchMobileNumber failed:" + jSONObject.toString());
                } catch (Exception e6) {
                    Logger.e(e6.getMessage());
                }
            }
            b.this.a(this.f54225b, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), 0, jSONObject.toString());
        }
    }

    /* compiled from: CmLoginHelper.java */
    /* renamed from: com.netease.nis.quicklogin.helper.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0255b implements TokenListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f54227a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f54228b;

        C0255b(QuickLoginTokenListener quickLoginTokenListener, String str) {
            this.f54227a = quickLoginTokenListener;
            this.f54228b = str;
        }

        @Override // com.cmic.sso.sdk.auth.TokenListener
        public void onGetTokenComplete(int i2, JSONObject jSONObject) {
            QuickLoginTokenListener quickLoginTokenListener;
            String str;
            Logger.d("onePass [callback]" + jSONObject.toString());
            try {
                String string = jSONObject.getString("resultCode");
                if (string.equals("103000")) {
                    String string2 = jSONObject.getString("token");
                    if (this.f54227a != null) {
                        String str2 = null;
                        try {
                            str = com.netease.nis.quicklogin.utils.d.a();
                        } catch (Exception e4) {
                            e = e4;
                            str = null;
                        }
                        try {
                            str2 = com.netease.nis.quicklogin.utils.d.a(b.this.f54223e);
                        } catch (Exception e5) {
                            e = e5;
                            Logger.e(e.getMessage());
                            e.a(b.this.f54223e, "timeend", 0L);
                            this.f54227a.onGetTokenSuccess(this.f54228b, b.this.a(str, string2, str2));
                            if (string.equals("200020")) {
                                return;
                            }
                            return;
                        }
                        e.a(b.this.f54223e, "timeend", 0L);
                        this.f54227a.onGetTokenSuccess(this.f54228b, b.this.a(str, string2, str2));
                    }
                } else if (!string.equals("200020")) {
                    QuickLoginTokenListener quickLoginTokenListener2 = this.f54227a;
                    if (quickLoginTokenListener2 != null) {
                        try {
                            quickLoginTokenListener2.onGetTokenError(this.f54228b, "移动" + jSONObject.toString());
                        } catch (Exception e6) {
                            Logger.e(e6.getMessage());
                        }
                    }
                    b.this.a(this.f54228b, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), com.netease.nis.quicklogin.utils.a.b(string), jSONObject.toString());
                }
                if (string.equals("200020") || (quickLoginTokenListener = this.f54227a) == null) {
                    return;
                }
                quickLoginTokenListener.onCancelGetToken();
            } catch (Exception e7) {
                Logger.e(e7.getMessage());
                b.this.a(this.f54228b, com.netease.nis.quicklogin.b.b.SDK_INTERNAL_EXCEPTION.ordinal(), 0, e7.toString());
            }
        }
    }

    /* compiled from: CmLoginHelper.java */
    /* loaded from: classes4.dex */
    class c implements TokenListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f54230a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f54231b;

        c(QuickLoginTokenListener quickLoginTokenListener, String str) {
            this.f54230a = quickLoginTokenListener;
            this.f54231b = str;
        }

        @Override // com.cmic.sso.sdk.auth.TokenListener
        public void onGetTokenComplete(int i2, JSONObject jSONObject) {
            try {
                Logger.d("getToken [callback]" + jSONObject.toString());
                Logger.d("getToken [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
                String string = jSONObject.getString("resultCode");
                if (string.equals("103000")) {
                    String string2 = jSONObject.getString("token");
                    QuickLoginTokenListener quickLoginTokenListener = this.f54230a;
                    if (quickLoginTokenListener != null) {
                        quickLoginTokenListener.onGetTokenSuccess(this.f54231b, string2);
                        return;
                    }
                    return;
                }
                QuickLoginTokenListener quickLoginTokenListener2 = this.f54230a;
                if (quickLoginTokenListener2 != null) {
                    try {
                        String str = this.f54231b;
                        quickLoginTokenListener2.onGetTokenError(str, "移动" + jSONObject.toString());
                    } catch (Exception e4) {
                        Logger.e(e4.getMessage());
                    }
                }
                b.this.a(this.f54231b, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), com.netease.nis.quicklogin.utils.a.b(string), jSONObject.toString());
            } catch (Exception e5) {
                Logger.e(e5.getMessage());
                b.this.a(this.f54231b, com.netease.nis.quicklogin.b.b.SDK_INTERNAL_EXCEPTION.ordinal(), 0, e5.toString());
            }
        }
    }

    public b(Context context, String str, String str2) {
        AuthnHelper authnHelper = AuthnHelper.getInstance(context);
        this.f54220b = authnHelper;
        this.f54222d = str;
        this.f54221c = str2;
        this.f54223e = context;
        authnHelper.setOverTime(QuickLogin.prefetchNumberTimeout * 1000);
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(String str, QuickLoginPreMobileListener quickLoginPreMobileListener) {
        if (e.b(this.f54223e, "cmccAppid").equals(this.f54221c) && e.b(this.f54223e, "cmccAppkey").equals(this.f54222d) && System.currentTimeMillis() < e.a(this.f54223e, "timeend")) {
            if (quickLoginPreMobileListener != null) {
                quickLoginPreMobileListener.onGetMobileNumberSuccess(str, e.b(this.f54223e, "phone"));
            }
            Logger.d("prefetchMobileNumber [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
            return;
        }
        this.f54220b.getPhoneInfo(this.f54221c, this.f54222d, new a(quickLoginPreMobileListener, str));
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(String str, QuickLoginTokenListener quickLoginTokenListener) {
        this.f54220b.loginAuth(this.f54221c, this.f54222d, new C0255b(quickLoginTokenListener, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("accessToken", str2);
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("deviceId", str);
            }
            jSONObject.put("phone", e.b(this.f54223e, "phone"));
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("randomId", str3);
            }
            return (TextUtils.isEmpty(com.netease.nis.quicklogin.b.a.f54122a) || TextUtils.isEmpty(com.netease.nis.quicklogin.b.a.f54123b)) ? str2 : com.netease.nis.quicklogin.utils.c.b(jSONObject.toString(), com.netease.nis.quicklogin.b.a.f54122a, com.netease.nis.quicklogin.b.a.f54123b);
        } catch (Exception e4) {
            Logger.e(e4.getMessage());
            return str2;
        }
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(Context context, String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
        this.f54220b.mobileAuth(this.f54221c, this.f54222d, new c(quickLoginTokenListener, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2, int i4, String str2) {
        g.c().a(g.c.MONITOR_GET_TOKEN, i2, str, 2, i4, 0, str2, System.currentTimeMillis());
        g.c().d();
    }
}
