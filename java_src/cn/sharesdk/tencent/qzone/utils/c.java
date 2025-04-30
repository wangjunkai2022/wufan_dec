package cn.sharesdk.tencent.qzone.utils;

import android.content.Intent;
import android.os.Bundle;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import org.json.JSONObject;
/* compiled from: QZoneSSOProcessor.java */
/* loaded from: classes2.dex */
public class c extends cn.sharesdk.framework.authorize.c {

    /* renamed from: d  reason: collision with root package name */
    private String f9060d;

    /* renamed from: e  reason: collision with root package name */
    private String f9061e;

    public c(SSOAuthorizeActivity sSOAuthorizeActivity) {
        super(sSOAuthorizeActivity);
    }

    public void a(String str, String str2) {
        this.f9060d = str;
        this.f9061e = str2;
    }

    @Override // cn.sharesdk.framework.authorize.c
    public void a() {
        try {
            if (cn.sharesdk.framework.utils.a.b("com.tencent.mobileqq", 0) == null) {
                this.f8817a.finish();
                SSOListener sSOListener = this.f8819c;
                if (sSOListener != null) {
                    sSOListener.onFailed(new TencentSSOClientNotInstalledException());
                    return;
                }
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.tencent.mobileqq", "com.tencent.open.agent.AgentActivity");
            if (this.f8817a.getContext().getPackageManager().resolveActivity(intent, 0) == null) {
                this.f8817a.finish();
                SSOListener sSOListener2 = this.f8819c;
                if (sSOListener2 != null) {
                    sSOListener2.onFailed(new TencentSSOClientNotInstalledException());
                    return;
                }
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("scope", this.f9061e);
            bundle.putString("client_id", this.f9060d);
            bundle.putString("pf", "openmobile_android");
            bundle.putString("need_pay", "1");
            intent.putExtra("key_params", bundle);
            intent.putExtra("key_request_code", this.f8818b);
            intent.putExtra("key_action", "action_login");
            try {
                this.f8817a.startActivityForResult(intent, this.f8818b);
            } catch (Throwable th) {
                this.f8817a.finish();
                SSOListener sSOListener3 = this.f8819c;
                if (sSOListener3 != null) {
                    sSOListener3.onFailed(th);
                }
            }
        } catch (Throwable unused) {
            this.f8817a.finish();
            if (this.f8819c != null) {
                this.f8819c.onFailed(new TencentSSOClientNotInstalledException());
            }
        }
    }

    @Override // cn.sharesdk.framework.authorize.c
    public void a(int i2, int i4, Intent intent) {
        this.f8817a.finish();
        if (i4 == 0) {
            SSOListener sSOListener = this.f8819c;
            if (sSOListener != null) {
                sSOListener.onCancel();
            }
        } else if (intent == null) {
            SSOListener sSOListener2 = this.f8819c;
            if (sSOListener2 != null) {
                sSOListener2.onFailed(new Throwable("response is empty"));
            }
        } else {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                SSOListener sSOListener3 = this.f8819c;
                if (sSOListener3 != null) {
                    sSOListener3.onFailed(new Throwable("response is empty"));
                }
            } else if (!extras.containsKey("key_response")) {
                SSOListener sSOListener4 = this.f8819c;
                if (sSOListener4 != null) {
                    sSOListener4.onFailed(new Throwable("response is empty"));
                }
            } else {
                String string = extras.getString("key_response");
                if (string != null && string.length() > 0) {
                    try {
                        JSONObject jSONObject = new JSONObject(string);
                        Bundle bundle = new Bundle();
                        bundle.putInt("ret", jSONObject.optInt("ret"));
                        bundle.putString("pay_token", jSONObject.optString("pay_token"));
                        bundle.putString("pf", jSONObject.optString("pf"));
                        bundle.putString("open_id", jSONObject.optString("openid"));
                        bundle.putString("expires_in", jSONObject.optString("expires_in"));
                        bundle.putString("pfkey", jSONObject.optString("pfkey"));
                        bundle.putString("msg", jSONObject.optString("msg"));
                        bundle.putString("access_token", jSONObject.optString("access_token"));
                        SSOListener sSOListener5 = this.f8819c;
                        if (sSOListener5 != null) {
                            sSOListener5.onComplete(bundle);
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        SSOListener sSOListener6 = this.f8819c;
                        if (sSOListener6 != null) {
                            sSOListener6.onFailed(th);
                            return;
                        }
                        return;
                    }
                }
                SSOListener sSOListener7 = this.f8819c;
                if (sSOListener7 != null) {
                    sSOListener7.onFailed(new Throwable("response is empty"));
                }
            }
        }
    }
}
