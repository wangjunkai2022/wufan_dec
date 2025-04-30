package com.switfpass.pay.activity;

import android.content.DialogInterface;
/* loaded from: classes4.dex */
final class x0 implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f58708a;

    x0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f58708a = paySDKCaptureActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        com.switfpass.pay.handle.a.b(6, 8, "已退出反扫支付");
        this.f58708a.finish();
    }
}
