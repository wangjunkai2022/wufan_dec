package cn.sharesdk.tencent.qq;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.c;
import cn.sharesdk.tencent.qq.utils.DownLoadWebPage;
import org.json.JSONObject;
/* compiled from: QQSSOProcessor.java */
/* loaded from: classes2.dex */
public class b extends c {

    /* renamed from: d  reason: collision with root package name */
    private String f9018d;

    /* renamed from: e  reason: collision with root package name */
    private String f9019e;

    /* renamed from: f  reason: collision with root package name */
    private String f9020f;

    public b(SSOAuthorizeActivity sSOAuthorizeActivity) {
        super(sSOAuthorizeActivity);
    }

    private void b() {
        DownLoadWebPage downLoadWebPage = new DownLoadWebPage();
        downLoadWebPage.setListener(this.f8819c);
        downLoadWebPage.show(this.f8817a.getContext(), null);
    }

    public void a(String str, String str2, String str3) {
        this.f9018d = str;
        this.f9019e = str2;
        this.f9020f = str3;
    }

    @Override // cn.sharesdk.framework.authorize.c
    public void a() {
        if (!TextUtils.isEmpty(this.f9020f) && !this.f9020f.equals("com.tencent.qqlite")) {
            Intent intent = new Intent();
            intent.setClassName(this.f9020f, "com.tencent.open.agent.AgentActivity");
            if (this.f8817a.getContext().getPackageManager().resolveActivity(intent, 0) == null) {
                this.f8817a.finish();
                if (this.f8819c != null) {
                    b();
                    return;
                }
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("scope", this.f9019e);
            bundle.putString("client_id", this.f9018d);
            bundle.putString("pf", "openmobile_android");
            bundle.putString("need_pay", "1");
            intent.putExtra("key_params", bundle);
            intent.putExtra("key_request_code", this.f8818b);
            intent.putExtra("key_action", "action_login");
            try {
                this.f8817a.startActivityForResult(intent, this.f8818b);
                return;
            } catch (Throwable th) {
                this.f8817a.finish();
                SSOListener sSOListener = this.f8819c;
                if (sSOListener != null) {
                    sSOListener.onFailed(th);
                    return;
                }
                return;
            }
        }
        b();
        this.f8817a.finish();
    }

    @Override // cn.sharesdk.framework.authorize.c
    public void a(int i2, int i4, Intent intent) {
        SSOListener sSOListener;
        this.f8817a.finish();
        if (i4 == 0) {
            SSOListener sSOListener2 = this.f8819c;
            if (sSOListener2 != null) {
                sSOListener2.onCancel();
            }
        } else if (intent == null) {
            SSOListener sSOListener3 = this.f8819c;
            if (sSOListener3 != null) {
                sSOListener3.onFailed(new Throwable("response is empty"));
            }
        } else {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                SSOListener sSOListener4 = this.f8819c;
                if (sSOListener4 != null) {
                    sSOListener4.onFailed(new Throwable("response is empty"));
                }
            } else if (!extras.containsKey("key_response")) {
                SSOListener sSOListener5 = this.f8819c;
                if (sSOListener5 != null) {
                    sSOListener5.onFailed(new Throwable("response is empty"));
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
                        String optString = jSONObject.optString("msg");
                        if (!TextUtils.isEmpty(optString) && (sSOListener = this.f8819c) != null) {
                            sSOListener.onFailed(new Throwable(optString));
                            return;
                        }
                        SSOListener sSOListener6 = this.f8819c;
                        if (sSOListener6 != null) {
                            sSOListener6.onComplete(bundle);
                            this.f8819c = null;
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        SSOListener sSOListener7 = this.f8819c;
                        if (sSOListener7 != null) {
                            sSOListener7.onFailed(th);
                            return;
                        }
                        return;
                    }
                }
                SSOListener sSOListener8 = this.f8819c;
                if (sSOListener8 != null) {
                    sSOListener8.onFailed(new Throwable("response is empty"));
                }
            }
        }
    }
}
