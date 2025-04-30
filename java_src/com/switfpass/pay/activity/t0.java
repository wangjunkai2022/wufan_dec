package com.switfpass.pay.activity;
/* loaded from: classes4.dex */
final class t0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f58702a;

    t0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f58702a = paySDKCaptureActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (PaySDKCaptureActivity.a(this.f58702a) <= 0 || PaySDKCaptureActivity.b(this.f58702a) == null) {
            PaySDKCaptureActivity.c(this.f58702a).removeCallbacks(this);
            if (PaySDKCaptureActivity.b(this.f58702a) != null && PaySDKCaptureActivity.b(this.f58702a).isShowing()) {
                PaySDKCaptureActivity.b(this.f58702a).dismiss();
            }
            PaySDKCaptureActivity paySDKCaptureActivity = this.f58702a;
            PaySDKCaptureActivity.a(paySDKCaptureActivity, PaySDKCaptureActivity.d(paySDKCaptureActivity), "支付确认中，请稍候...", false);
            return;
        }
        com.switfpass.pay.utils.l b4 = PaySDKCaptureActivity.b(this.f58702a);
        StringBuilder sb = new StringBuilder("订单状态确认中，共3次;每隔5秒查询，(");
        sb.append(PaySDKCaptureActivity.a(this.f58702a));
        sb.append("秒后)开始(第");
        sb.append(this.f58702a.count - 1);
        sb.append("次查询)，请勿中断该操作，请耐心等待查询结果");
        b4.i(sb.toString());
        PaySDKCaptureActivity paySDKCaptureActivity2 = this.f58702a;
        PaySDKCaptureActivity.a(paySDKCaptureActivity2, PaySDKCaptureActivity.a(paySDKCaptureActivity2) - 1);
        PaySDKCaptureActivity.c(this.f58702a).postDelayed(this, 1000L);
    }
}
