package com.switfpass.pay.activity;
/* loaded from: classes4.dex */
final class j0 implements com.switfpass.pay.utils.f0 {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f58680a;

    j0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f58680a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.utils.f0
    public final void a() {
        PaySDKCaptureActivity paySDKCaptureActivity = this.f58680a;
        PaySDKCaptureActivity.a(paySDKCaptureActivity, "交易进行中，确认是否中断交易？", paySDKCaptureActivity.U);
    }
}
