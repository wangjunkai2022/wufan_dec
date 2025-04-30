package com.switfpass.pay.activity;

import com.switfpass.pay.bean.OrderBena;
/* loaded from: classes4.dex */
final class k0 extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f58681a;

    k0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f58681a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        if (PaySDKCaptureActivity.e(this.f58681a) != null) {
            PaySDKCaptureActivity.e(this.f58681a).dismiss();
        }
        this.f58681a.U.dismiss();
        if (PaySDKCaptureActivity.f(this.f58681a)) {
            PaySDKCaptureActivity.a(this.f58681a, true);
            this.f58681a.runOnUiThread(new l0(this, obj));
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        PaySDKCaptureActivity paySDKCaptureActivity = this.f58681a;
        com.switfpass.pay.utils.h.e(paySDKCaptureActivity, paySDKCaptureActivity.U);
        this.f58681a.U.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        super.onSucceed(orderBena);
        this.f58681a.U.dismiss();
        if (PaySDKCaptureActivity.e(this.f58681a) != null) {
            PaySDKCaptureActivity.e(this.f58681a).dismiss();
        }
        if (orderBena != null) {
            com.switfpass.pay.handle.a.b(6, 8, "支付状态：该笔订单已冲正");
            this.f58681a.showToastInfo("该笔订单已经冲正成功，请重新发起支付请求");
            this.f58681a.finish();
        }
    }
}
