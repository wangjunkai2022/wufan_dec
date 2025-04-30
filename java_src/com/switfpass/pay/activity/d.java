package com.switfpass.pay.activity;

import com.switfpass.pay.bean.OrderBena;
/* loaded from: classes4.dex */
final class d extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f58665a;

    d(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f58665a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        if (PaySDKCaptureActivity.e(this.f58665a) != null) {
            PaySDKCaptureActivity.e(this.f58665a).dismiss();
        }
        if (PaySDKCaptureActivity.f(this.f58665a)) {
            this.f58665a.runOnUiThread(new e(this, obj));
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        PaySDKCaptureActivity paySDKCaptureActivity = this.f58665a;
        com.switfpass.pay.utils.h.e(paySDKCaptureActivity, paySDKCaptureActivity.U);
        this.f58665a.U.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        super.onSucceed(orderBena);
        this.f58665a.U.dismiss();
        if (PaySDKCaptureActivity.e(this.f58665a) != null) {
            PaySDKCaptureActivity.e(this.f58665a).dismiss();
        }
        if (orderBena == null || !PaySDKCaptureActivity.f(this.f58665a)) {
            return;
        }
        PaySDKCaptureActivity.a(this.f58665a, true);
        if (orderBena.t() == null || !orderBena.t().equals("0")) {
            PaySDKCaptureActivity.d(this.f58665a).F(orderBena.l());
            PaySDKCaptureActivity paySDKCaptureActivity = this.f58665a;
            PaySDKCaptureActivity.a(paySDKCaptureActivity, PaySDKCaptureActivity.d(paySDKCaptureActivity), "支付确认中，请稍候...", false);
            return;
        }
        this.f58665a.U.dismiss();
        orderBena.H(true);
        PayResultActivity.startActivity(orderBena, PaySDKCaptureActivity.g(this.f58665a));
        this.f58665a.finish();
    }
}
