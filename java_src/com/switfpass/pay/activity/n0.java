package com.switfpass.pay.activity;

import android.content.DialogInterface;
/* loaded from: classes4.dex */
final class n0 implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ m0 f58687a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(m0 m0Var) {
        this.f58687a = m0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        PaySDKCaptureActivity paySDKCaptureActivity;
        PaySDKCaptureActivity paySDKCaptureActivity2;
        PaySDKCaptureActivity paySDKCaptureActivity3;
        PaySDKCaptureActivity paySDKCaptureActivity4;
        paySDKCaptureActivity = this.f58687a.f58686a;
        paySDKCaptureActivity2 = this.f58687a.f58686a;
        paySDKCaptureActivity.payReverse(PaySDKCaptureActivity.d(paySDKCaptureActivity2));
        paySDKCaptureActivity3 = this.f58687a.f58686a;
        if (paySDKCaptureActivity3.af != null) {
            paySDKCaptureActivity4 = this.f58687a.f58686a;
            paySDKCaptureActivity4.af.dismiss();
        }
    }
}
