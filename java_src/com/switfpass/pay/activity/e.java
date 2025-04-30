package com.switfpass.pay.activity;
/* loaded from: classes4.dex */
final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d f58669a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f58670b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, Object obj) {
        this.f58669a = dVar;
        this.f58670b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PaySDKCaptureActivity paySDKCaptureActivity;
        PaySDKCaptureActivity paySDKCaptureActivity2;
        PaySDKCaptureActivity paySDKCaptureActivity3;
        paySDKCaptureActivity = this.f58669a.f58665a;
        paySDKCaptureActivity.U.dismiss();
        if (this.f58670b != null) {
            paySDKCaptureActivity3 = this.f58669a.f58665a;
            paySDKCaptureActivity3.showToastInfo(this.f58670b.toString());
        }
        com.switfpass.pay.handle.a.b(6, 8, "支付状态：未支付");
        paySDKCaptureActivity2 = this.f58669a.f58665a;
        paySDKCaptureActivity2.finish();
    }
}
