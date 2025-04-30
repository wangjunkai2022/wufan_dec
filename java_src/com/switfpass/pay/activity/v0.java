package com.switfpass.pay.activity;

import android.content.DialogInterface;
/* loaded from: classes4.dex */
final class v0 implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ u0 f58706a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(u0 u0Var) {
        this.f58706a = u0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        PaySDKCaptureActivity paySDKCaptureActivity;
        com.switfpass.pay.handle.a.b(6, 8, "已退出反扫支付");
        paySDKCaptureActivity = this.f58706a.f58704a;
        paySDKCaptureActivity.finish();
    }
}
