package com.switfpass.pay.activity;

import android.view.View;
import com.switfpass.pay.lib.Resourcemap;
/* loaded from: classes4.dex */
final class u0 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f58704a;

    u0(PaySDKCaptureActivity paySDKCaptureActivity) {
        this.f58704a = paySDKCaptureActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.switfpass.pay.utils.h.l(this.f58704a.getResources().getString(Resourcemap.getById_title_prompt()), this.f58704a.getResources().getString(Resourcemap.getById_pay_unFinished()), this.f58704a.getResources().getString(Resourcemap.getById_pay_str_btnCancel()), this.f58704a.getResources().getString(Resourcemap.getById_pay_str_btnOk()), this.f58704a, new v0(this), new w0()).show();
    }
}
