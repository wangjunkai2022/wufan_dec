package com.switfpass.pay.activity;

import android.view.View;
/* loaded from: classes4.dex */
final class o implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f58688a;

    o(QrcodeActivity qrcodeActivity) {
        this.f58688a = qrcodeActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        QrcodeActivity qrcodeActivity = this.f58688a;
        QrcodeActivity.a(qrcodeActivity, QrcodeActivity.f(qrcodeActivity).a(QrcodeActivity.e(this.f58688a).r(), QrcodeActivity.g(this.f58688a).getWidth()));
        QrcodeActivity.h(this.f58688a).showAsDropDown(QrcodeActivity.g(this.f58688a));
    }
}
