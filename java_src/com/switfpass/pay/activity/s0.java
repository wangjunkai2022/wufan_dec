package com.switfpass.pay.activity;
/* loaded from: classes4.dex */
final class s0 implements com.switfpass.pay.utils.i {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f58699a;

    s0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f58699a = paySDKCaptureActivity;
    }

    @Override // com.switfpass.pay.utils.i
    public final void a(String str) {
        if (str == null) {
            this.f58699a.showToastInfo((int) com.join.android.app.mgsim.wufun.R.drawable.abc_ic_ab_back_material);
            return;
        }
        this.f58699a.submitData(str, false);
        PaySDKCaptureActivity.j(this.f58699a).dismiss();
    }

    @Override // com.switfpass.pay.utils.i
    public final void cancel() {
    }
}
