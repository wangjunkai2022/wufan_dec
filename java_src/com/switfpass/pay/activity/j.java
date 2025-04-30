package com.switfpass.pay.activity;

import android.content.DialogInterface;
/* loaded from: classes4.dex */
final class j implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f58679a;

    j(QrcodeActivity qrcodeActivity) {
        this.f58679a = qrcodeActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        com.switfpass.pay.handle.a.b(0, 1, QrcodeActivity.e(this.f58679a));
        this.f58679a.finish();
    }
}
