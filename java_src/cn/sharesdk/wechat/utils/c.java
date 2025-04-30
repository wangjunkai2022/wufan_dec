package cn.sharesdk.wechat.utils;

import android.os.Bundle;
/* compiled from: AuthResp.java */
/* loaded from: classes2.dex */
public class c extends WechatResp {

    /* renamed from: a  reason: collision with root package name */
    public String f9092a;

    /* renamed from: b  reason: collision with root package name */
    public String f9093b;

    /* renamed from: c  reason: collision with root package name */
    public String f9094c;

    /* renamed from: d  reason: collision with root package name */
    public String f9095d;

    /* renamed from: e  reason: collision with root package name */
    public String f9096e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f9097f = false;

    public c(Bundle bundle) {
        a(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public int a() {
        return 1;
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f9092a = bundle.getString("_wxapi_sendauth_resp_token");
        this.f9093b = bundle.getString("_wxapi_sendauth_resp_state");
        this.f9094c = bundle.getString("_wxapi_sendauth_resp_url");
        this.f9095d = bundle.getString("_wxapi_sendauth_resp_lang");
        this.f9096e = bundle.getString("_wxapi_sendauth_resp_country");
        this.f9097f = bundle.getBoolean("_wxapi_sendauth_resp_auth_result");
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putString("_wxapi_sendauth_resp_token", this.f9092a);
        bundle.putString("_wxapi_sendauth_resp_state", this.f9093b);
        bundle.putString("_wxapi_sendauth_resp_url", this.f9094c);
        bundle.putString("_wxapi_sendauth_resp_lang", this.f9095d);
        bundle.putString("_wxapi_sendauth_resp_country", this.f9096e);
        bundle.putBoolean("_wxapi_sendauth_resp_auth_result", this.f9097f);
    }
}
