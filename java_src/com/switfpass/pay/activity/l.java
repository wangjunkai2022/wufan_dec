package com.switfpass.pay.activity;

import android.view.View;
import com.switfpass.pay.lib.Resourcemap;
/* loaded from: classes4.dex */
final class l implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f58682a;

    l(QrcodeActivity qrcodeActivity) {
        this.f58682a = qrcodeActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.switfpass.pay.utils.h.l(this.f58682a.getResources().getString(Resourcemap.getById_title_prompt()), this.f58682a.getResources().getString(Resourcemap.getById_pay_unFinished()), this.f58682a.getResources().getString(Resourcemap.getById_pay_str_btnCancel()), this.f58682a.getResources().getString(Resourcemap.getById_pay_str_btnOk()), this.f58682a, new m(this), new n()).show();
    }
}
