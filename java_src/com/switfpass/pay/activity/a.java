package com.switfpass.pay.activity;

import android.content.DialogInterface;
/* loaded from: classes4.dex */
final class a implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f58659a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.utils.g0 f58660b;

    a(PaySDKCaptureActivity paySDKCaptureActivity, com.switfpass.pay.utils.g0 g0Var) {
        this.f58659a = paySDKCaptureActivity;
        this.f58660b = g0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        PaySDKCaptureActivity.a(this.f58659a, false);
        com.switfpass.pay.utils.g0 g0Var = this.f58660b;
        if (g0Var != null) {
            g0Var.dismiss();
            this.f58659a.finish();
        }
    }
}
