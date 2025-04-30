package com.switfpass.pay.activity;
/* loaded from: classes4.dex */
final class c implements com.switfpass.pay.utils.f0 {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f58663a;

    c(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f58663a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.utils.f0
    public final void a() {
        PaySDKCaptureActivity paySDKCaptureActivity = this.f58663a;
        PaySDKCaptureActivity.a(paySDKCaptureActivity, "交易进行中，确认是否中断交易？", paySDKCaptureActivity.U);
    }
}
