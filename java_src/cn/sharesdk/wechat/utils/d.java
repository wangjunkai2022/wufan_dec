package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.wechat.utils.WXMediaMessage;
/* compiled from: GetMessageFromWechatResp.java */
/* loaded from: classes2.dex */
public class d extends WechatResp {

    /* renamed from: a  reason: collision with root package name */
    public WXMediaMessage f9098a;

    public d(Bundle bundle) {
        a(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public int a() {
        return 3;
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public void a(Bundle bundle) {
        super.a(bundle);
        this.f9098a = WXMediaMessage.a.a(bundle);
    }

    @Override // cn.sharesdk.wechat.utils.WechatResp
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putAll(WXMediaMessage.a.a(this.f9098a));
    }
}
