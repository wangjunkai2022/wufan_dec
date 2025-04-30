package com.switfpass.pay.activity;

import android.content.DialogInterface;
/* loaded from: classes4.dex */
final class m implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ l f58685a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar) {
        this.f58685a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        QrcodeActivity qrcodeActivity;
        QrcodeActivity qrcodeActivity2;
        qrcodeActivity = this.f58685a.f58682a;
        com.switfpass.pay.handle.a.b(0, 1, QrcodeActivity.e(qrcodeActivity));
        qrcodeActivity2 = this.f58685a.f58682a;
        qrcodeActivity2.finish();
    }
}
