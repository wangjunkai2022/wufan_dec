package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;
/* compiled from: SubscribeMessageReq.java */
/* loaded from: classes2.dex */
public class g extends m {

    /* renamed from: a  reason: collision with root package name */
    public int f9102a;

    /* renamed from: b  reason: collision with root package name */
    public String f9103b;

    /* renamed from: c  reason: collision with root package name */
    public String f9104c;

    @Override // cn.sharesdk.wechat.utils.m
    public int a() {
        return 18;
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f9102a = bundle.getInt("_wxapi_subscribemessage_req_scene");
        this.f9103b = bundle.getString("_wxapi_subscribemessage_req_templateid");
        this.f9104c = bundle.getString("_wxapi_subscribemessage_req_reserved");
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putInt("_wxapi_subscribemessage_req_scene", this.f9102a);
        bundle.putString("_wxapi_subscribemessage_req_templateid", this.f9103b);
        bundle.putString("_wxapi_subscribemessage_req_reserved", this.f9104c);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public boolean b() {
        String str = this.f9103b;
        if (str != null && str.length() != 0) {
            if (this.f9103b.length() > 1024) {
                SSDKLog.b().d(OnekeyShare.SHARESDK_TAG, "MicroMsg.SDK.SubscribeMessage.ReqcheckArgs fail, templateID is too long");
                return false;
            }
            String str2 = this.f9104c;
            if (str2 == null || str2.length() <= 1024) {
                return true;
            }
            SSDKLog.b().d(OnekeyShare.SHARESDK_TAG, "MicroMsg.SDK.SubscribeMessage.ReqcheckArgs fail, reserved is too long");
            return false;
        }
        SSDKLog.b().d(OnekeyShare.SHARESDK_TAG, "MicroMsg.SDK.SubscribeMessage.ReqcheckArgs fail, templateID is null");
        return false;
    }
}
