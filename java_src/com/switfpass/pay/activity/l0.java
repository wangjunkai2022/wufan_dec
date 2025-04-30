package com.switfpass.pay.activity;
/* loaded from: classes4.dex */
final class l0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ k0 f58683a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f58684b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(k0 k0Var, Object obj) {
        this.f58683a = k0Var;
        this.f58684b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PaySDKCaptureActivity paySDKCaptureActivity;
        PaySDKCaptureActivity paySDKCaptureActivity2;
        if (this.f58684b != null) {
            paySDKCaptureActivity2 = this.f58683a.f58681a;
            paySDKCaptureActivity2.showToastInfo(this.f58684b.toString());
        }
        com.switfpass.pay.handle.a.b(6, 8, "支付状态：该笔订单未支付");
        paySDKCaptureActivity = this.f58683a.f58681a;
        paySDKCaptureActivity.finish();
    }
}
