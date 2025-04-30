package com.netease.nis.quicklogin.helper;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.CtAuth;
import cn.com.chinatelecom.account.api.CtSetting;
import cn.com.chinatelecom.account.api.ResultListener;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.QuickLogin;
import com.netease.nis.quicklogin.entity.CTPrefetchNumber;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.ui.YDQuickLoginActivity;
import com.netease.nis.quicklogin.utils.e;
import com.netease.nis.quicklogin.utils.g;
import org.json.JSONObject;
/* compiled from: CtLoginHelper.java */
/* loaded from: classes4.dex */
public class c extends com.netease.nis.quicklogin.helper.a {

    /* renamed from: b  reason: collision with root package name */
    private String f54233b;

    /* renamed from: c  reason: collision with root package name */
    private String f54234c;

    /* renamed from: d  reason: collision with root package name */
    private String f54235d;

    /* renamed from: e  reason: collision with root package name */
    private String f54236e;

    /* renamed from: f  reason: collision with root package name */
    private final Context f54237f;

    /* compiled from: CtLoginHelper.java */
    /* loaded from: classes4.dex */
    class a implements ResultListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QuickLoginPreMobileListener f54238a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f54239b;

        a(QuickLoginPreMobileListener quickLoginPreMobileListener, String str) {
            this.f54238a = quickLoginPreMobileListener;
            this.f54239b = str;
        }

        @Override // cn.com.chinatelecom.account.api.ResultListener
        public void onResult(String str) {
            Logger.d("prefetchMobileNumber [callback]" + str);
            Logger.d("prefetchMobileNumber [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
            CTPrefetchNumber cTPrefetchNumber = (CTPrefetchNumber) com.netease.nis.quicklogin.utils.a.a(str, CTPrefetchNumber.class);
            if (cTPrefetchNumber != null) {
                int result = cTPrefetchNumber.getResult();
                String msg = cTPrefetchNumber.getMsg();
                if (result == 0) {
                    c.this.f54234c = cTPrefetchNumber.getData().getAccessCode();
                    c.this.f54233b = cTPrefetchNumber.getData().getNumber();
                    c.this.f54235d = cTPrefetchNumber.getData().getGwAuth();
                    e.a(c.this.f54237f, "timeend", System.currentTimeMillis() + TTAdConstant.AD_MAX_EVENT_TIME);
                    e.a(c.this.f54237f, "ctccNumber", c.this.f54233b);
                    e.a(c.this.f54237f, "ctccAccessCode", c.this.f54234c);
                    e.a(c.this.f54237f, "ctccGwAuth", c.this.f54235d);
                    QuickLoginPreMobileListener quickLoginPreMobileListener = this.f54238a;
                    if (quickLoginPreMobileListener != null) {
                        quickLoginPreMobileListener.onGetMobileNumberSuccess(this.f54239b, c.this.f54233b);
                        return;
                    }
                    return;
                }
                c cVar = c.this;
                cVar.f54236e = "msg:" + msg + " reqId:" + cTPrefetchNumber.getReqId();
                StringBuilder sb = new StringBuilder();
                sb.append("电信 prefetchMobileNumber [error]");
                sb.append(c.this.f54236e);
                Logger.d(sb.toString());
                QuickLoginPreMobileListener quickLoginPreMobileListener2 = this.f54238a;
                if (quickLoginPreMobileListener2 != null) {
                    try {
                        String str2 = this.f54239b;
                        quickLoginPreMobileListener2.onGetMobileNumberError(str2, "电信" + c.this.f54236e);
                    } catch (Exception e4) {
                        Logger.e(e4.getMessage());
                    }
                }
                c.this.a(this.f54239b, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), result, str);
                return;
            }
            Logger.d("电信 prefetchMobileNumber [error]" + str);
            QuickLoginPreMobileListener quickLoginPreMobileListener3 = this.f54238a;
            if (quickLoginPreMobileListener3 != null) {
                try {
                    String str3 = this.f54239b;
                    quickLoginPreMobileListener3.onGetMobileNumberError(str3, "电信" + str);
                } catch (Exception e5) {
                    Logger.e(e5.getMessage());
                }
            }
            c.this.a(this.f54239b, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), 0, str);
        }
    }

    public c(Context context, String str, String str2, boolean z3) {
        if (z3) {
            CtAuth.getInstance().init(context, str, str2, null);
        }
        this.f54237f = context;
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(String str, QuickLoginPreMobileListener quickLoginPreMobileListener) {
        if (!TextUtils.isEmpty(e.b(this.f54237f, "ctccAccessCode")) && System.currentTimeMillis() < e.a(this.f54237f, "timeend")) {
            this.f54234c = e.b(this.f54237f, "ctccAccessCode");
            this.f54233b = e.b(this.f54237f, "ctccNumber");
            this.f54235d = e.b(this.f54237f, "ctccGwAuth");
            if (quickLoginPreMobileListener != null) {
                quickLoginPreMobileListener.onGetMobileNumberSuccess(str, this.f54233b);
            }
            Logger.d("prefetchMobileNumber [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
            return;
        }
        CtAuth.getInstance().requestPreLogin(new CtSetting(5000, 5000, QuickLogin.prefetchNumberTimeout * 1000), new a(quickLoginPreMobileListener, str));
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(String str, QuickLoginTokenListener quickLoginTokenListener) {
        if (TextUtils.isEmpty(this.f54234c) || TextUtils.isEmpty(this.f54235d)) {
            if (quickLoginTokenListener != null) {
                try {
                    quickLoginTokenListener.onGetTokenError(str, "电信" + this.f54236e);
                    return;
                } catch (Exception e4) {
                    Logger.e(e4.getMessage());
                    return;
                }
            }
            return;
        }
        Intent intent = new Intent(this.f54237f, YDQuickLoginActivity.class);
        intent.putExtra("operatorType", "ct");
        intent.putExtra("ydToken", str);
        intent.putExtra("maskNumber", this.f54233b);
        intent.putExtra("accessToken", this.f54234c);
        intent.putExtra("gwAuth", this.f54235d);
        if (quickLoginTokenListener != null) {
            YDQuickLoginActivity.a(quickLoginTokenListener);
        }
        intent.addFlags(268435456);
        this.f54237f.startActivity(intent);
    }

    @Override // com.netease.nis.quicklogin.helper.a
    protected void a(String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
        try {
            Logger.d("getToken [callback]" + str);
            Logger.d("getToken [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
            JSONObject jSONObject = new JSONObject(str);
            int i2 = jSONObject.getInt("result");
            if (i2 == 0) {
                String string = jSONObject.getString("data");
                if (quickLoginTokenListener != null) {
                    quickLoginTokenListener.onGetTokenSuccess(str2, string);
                    return;
                }
                return;
            }
            if (quickLoginTokenListener != null) {
                try {
                    quickLoginTokenListener.onGetTokenError(str2, "电信 getToken failed:" + jSONObject.toString());
                } catch (Exception e4) {
                    Logger.e(e4.getMessage());
                }
            }
            a(str2, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), i2, jSONObject.toString());
        } catch (Exception e5) {
            Logger.e(e5.getMessage());
            a(str2, com.netease.nis.quicklogin.b.b.SDK_INTERNAL_EXCEPTION.ordinal(), 0, e5.toString());
        }
    }

    @Override // com.netease.nis.quicklogin.helper.a
    protected void a(int i2, String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
        if (quickLoginTokenListener != null) {
            try {
                quickLoginTokenListener.onGetTokenError(str2, str);
            } catch (Exception e4) {
                Logger.e(e4.getMessage());
            }
        }
        a(str2, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), i2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2, int i4, String str2) {
        g.c().a(g.c.MONITOR_GET_TOKEN, i2, str, 1, i4, 0, str2, System.currentTimeMillis());
        g.c().d();
    }
}
