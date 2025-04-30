package com.join.android.app.mgsim.wxapi;

import android.os.Bundle;
import android.widget.Toast;
import cn.sharesdk.wechat.utils.WXAppExtendObject;
import cn.sharesdk.wechat.utils.WXMediaMessage;
import cn.sharesdk.wechat.utils.WechatHandlerActivity;
import com.switfpass.pay.utils.e;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
/* loaded from: classes3.dex */
public class WXEntryActivity extends WechatHandlerActivity implements IWXAPIEventHandler {

    /* renamed from: a  reason: collision with root package name */
    private IWXAPI f27363a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.wechat.utils.WechatHandlerActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        IWXAPI createWXAPI = WXAPIFactory.createWXAPI(this, e.f58970a, false);
        this.f27363a = createWXAPI;
        try {
            createWXAPI.handleIntent(getIntent(), this);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // cn.sharesdk.wechat.utils.WechatHandlerActivity
    public void onGetMessageFromWXReq(WXMediaMessage wXMediaMessage) {
        if (wXMediaMessage != null) {
            startActivity(getPackageManager().getLaunchIntentForPackage(getPackageName()));
        }
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq baseReq) {
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp baseResp) {
        if (baseResp.getType() == 19) {
            String str = ((WXLaunchMiniProgram.Resp) baseResp).extMsg;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("  xxxxxxxxxxxxxx");
        }
    }

    @Override // cn.sharesdk.wechat.utils.WechatHandlerActivity
    public void onShowMessageFromWXReq(WXMediaMessage wXMediaMessage) {
        WXMediaMessage.IMediaObject iMediaObject;
        if (wXMediaMessage == null || (iMediaObject = wXMediaMessage.mediaObject) == null || !(iMediaObject instanceof WXAppExtendObject)) {
            return;
        }
        Toast.makeText(this, ((WXAppExtendObject) iMediaObject).extInfo, 0).show();
    }
}
