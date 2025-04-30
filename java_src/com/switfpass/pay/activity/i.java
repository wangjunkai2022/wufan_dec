package com.switfpass.pay.activity;
/* loaded from: classes4.dex */
final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f58678a;

    i(QrcodeActivity qrcodeActivity) {
        this.f58678a = qrcodeActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (QrcodeActivity.a(this.f58678a) <= 0 || QrcodeActivity.b(this.f58678a) == null) {
            QrcodeActivity.c(this.f58678a).removeCallbacks(this);
            if (QrcodeActivity.b(this.f58678a) != null && QrcodeActivity.b(this.f58678a).isShowing()) {
                QrcodeActivity.b(this.f58678a).dismiss();
            }
            QrcodeActivity.b(this.f58678a).h("确定(关闭)");
            this.f58678a.finish();
            return;
        }
        com.switfpass.pay.utils.l b4 = QrcodeActivity.b(this.f58678a);
        b4.h("确定(" + QrcodeActivity.a(this.f58678a) + "秒后关闭)");
        QrcodeActivity qrcodeActivity = this.f58678a;
        QrcodeActivity.a(qrcodeActivity, QrcodeActivity.a(qrcodeActivity) - 1);
        QrcodeActivity.c(this.f58678a).postDelayed(this, 1000L);
    }
}
