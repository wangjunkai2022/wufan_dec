package com.switfpass.pay.activity;

import android.os.Handler;
import com.switfpass.pay.lib.Resourcemap;
/* loaded from: classes4.dex */
final class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ u f58705a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(u uVar) {
        this.f58705a = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        QrcodeActivity qrcodeActivity;
        QrcodeActivity qrcodeActivity2;
        QrcodeActivity qrcodeActivity3;
        QrcodeActivity qrcodeActivity4;
        QrcodeActivity qrcodeActivity5;
        QrcodeActivity qrcodeActivity6;
        QrcodeActivity qrcodeActivity7;
        QrcodeActivity qrcodeActivity8;
        QrcodeActivity qrcodeActivity9;
        com.switfpass.pay.handle.a.b(0, 0, 1);
        qrcodeActivity = this.f58705a.f58703a;
        qrcodeActivity2 = this.f58705a.f58703a;
        qrcodeActivity3 = this.f58705a.f58703a;
        String string = qrcodeActivity3.getResources().getString(Resourcemap.getById_title_prompt());
        QrcodeActivity.a(qrcodeActivity, new com.switfpass.pay.utils.l(qrcodeActivity2, string, "支付请求已超时，请重新生成二维码!", "确定", 6, null));
        qrcodeActivity4 = this.f58705a.f58703a;
        qrcodeActivity5 = this.f58705a.f58703a;
        com.switfpass.pay.utils.h.e(qrcodeActivity4, QrcodeActivity.b(qrcodeActivity5));
        qrcodeActivity6 = this.f58705a.f58703a;
        QrcodeActivity.b(qrcodeActivity6).setOnKeyListener(new w());
        qrcodeActivity7 = this.f58705a.f58703a;
        QrcodeActivity.b(qrcodeActivity7).show();
        qrcodeActivity8 = this.f58705a.f58703a;
        Handler c4 = QrcodeActivity.c(qrcodeActivity8);
        qrcodeActivity9 = this.f58705a.f58703a;
        c4.post(QrcodeActivity.d(qrcodeActivity9));
    }
}
