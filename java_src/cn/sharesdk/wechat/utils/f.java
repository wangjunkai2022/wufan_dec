package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.wechat.utils.WXMediaMessage;
/* compiled from: ShowMessageFromWechatResp.java */
/* loaded from: classes2.dex */
public class f extends m {

    /* renamed from: a  reason: collision with root package name */
    public WXMediaMessage f9099a;

    /* renamed from: b  reason: collision with root package name */
    public String f9100b;

    /* renamed from: c  reason: collision with root package name */
    public String f9101c;

    public f(Bundle bundle) {
        a(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public int a() {
        return 4;
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f9100b = bundle.getString("_wxapi_showmessage_req_lang");
        this.f9101c = bundle.getString("_wxapi_showmessage_req_country");
        this.f9099a = WXMediaMessage.a.a(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public void b(Bundle bundle) {
        Bundle a4 = WXMediaMessage.a.a(this.f9099a);
        super.b(a4);
        bundle.putString("_wxapi_showmessage_req_lang", this.f9100b);
        bundle.putString("_wxapi_showmessage_req_country", this.f9101c);
        bundle.putAll(a4);
    }

    @Override // cn.sharesdk.wechat.utils.m
    public boolean b() {
        WXMediaMessage wXMediaMessage = this.f9099a;
        if (wXMediaMessage == null) {
            SSDKLog.b().a("checkArgs fail, message is null", new Object[0]);
            return false;
        }
        return wXMediaMessage.a();
    }
}
