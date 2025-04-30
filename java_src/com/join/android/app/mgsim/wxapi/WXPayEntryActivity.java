package com.join.android.app.mgsim.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.join.android.app.mgsim.wufun.R;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import f1.a;
/* loaded from: classes3.dex */
public class WXPayEntryActivity extends Activity implements IWXAPIEventHandler {

    /* renamed from: b  reason: collision with root package name */
    private static final String f27364b = "WXPayEntryActivity";

    /* renamed from: a  reason: collision with root package name */
    private IWXAPI f27365a;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.pay_result);
        IWXAPI createWXAPI = WXAPIFactory.createWXAPI(this, "wx5e0a2e02d261de17");
        this.f27365a = createWXAPI;
        createWXAPI.handleIntent(getIntent(), this);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.f27365a.handleIntent(intent, this);
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq baseReq) {
    }

    @Override // com.tencent.mm.opensdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp baseResp) {
        StringBuilder sb = new StringBuilder();
        sb.append("悟饭 onPayFinish, errCode = ");
        sb.append(baseResp.errCode);
        if (baseResp.getType() == 5) {
            int i2 = baseResp.errCode;
            Intent intent = new Intent();
            intent.setAction(a.K);
            intent.putExtra("out_trade_no", getPackageName());
            if (i2 == 0) {
                intent.putExtra("return_code", "SUCCESS");
                intent.putExtra("return_msg", "支付成功");
            } else if (i2 == -2) {
                intent.putExtra("return_code", "CANCEL");
                intent.putExtra("return_msg", "取消支付");
            } else {
                intent.putExtra("return_code", "FAIL");
                intent.putExtra("return_msg", "微信客户端返回错误");
            }
            LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
            finish();
        }
    }
}
