package com.switfpass.pay.activity;

import android.os.CountDownTimer;
/* loaded from: classes4.dex */
final class u extends CountDownTimer {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f58703a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(QrcodeActivity qrcodeActivity) {
        super(120000L, 2000L);
        this.f58703a = qrcodeActivity;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        this.f58703a.runOnUiThread(new v(this));
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j4) {
        if (QrcodeActivity.e(this.f58703a) != null) {
            QrcodeActivity qrcodeActivity = this.f58703a;
            QrcodeActivity.a(qrcodeActivity, QrcodeActivity.e(qrcodeActivity).v(), QrcodeActivity.e(this.f58703a).e());
        }
    }
}
