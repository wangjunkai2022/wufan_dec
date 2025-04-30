package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;
/* compiled from: AuthReq.java */
/* loaded from: classes2.dex */
public class b extends m {

    /* renamed from: a  reason: collision with root package name */
    public String f9088a;

    /* renamed from: b  reason: collision with root package name */
    public String f9089b;

    /* renamed from: c  reason: collision with root package name */
    public String f9090c;

    /* renamed from: d  reason: collision with root package name */
    public a f9091d;

    @Override // cn.sharesdk.wechat.utils.m
    public int a() {
        return 1;
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f9088a = bundle.getString("_wxapi_sendauth_req_scope");
        this.f9089b = bundle.getString("_wxapi_sendauth_req_state");
        this.f9090c = bundle.getString("_wxapi_sendauth_req_ext_data");
        a aVar = new a();
        this.f9091d = aVar;
        aVar.b(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putString("_wxapi_sendauth_req_scope", this.f9088a);
        bundle.putString("_wxapi_sendauth_req_state", this.f9089b);
        bundle.putString("_wxapi_sendauth_req_ext_data", this.f9090c);
        a aVar = this.f9091d;
        if (aVar != null) {
            aVar.a(bundle);
        }
    }

    @Override // cn.sharesdk.wechat.utils.m
    public boolean b() {
        String str = this.f9088a;
        if (str != null && str.length() != 0 && this.f9088a.length() <= 1024) {
            String str2 = this.f9089b;
            if (str2 == null || str2.length() <= 1024) {
                return true;
            }
            SSDKLog.b().a("MicroMsg.SDK.SendAuth.Req", "checkArgs fail, state is invalid");
            return false;
        }
        SSDKLog.b().a("MicroMsg.SDK.SendAuth.Req", "checkArgs fail, scope is invalid");
        return false;
    }
}
