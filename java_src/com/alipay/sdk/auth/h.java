package com.alipay.sdk.auth;

import android.content.DialogInterface;
/* loaded from: classes2.dex */
final class h implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f9664a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar) {
        this.f9664a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        AuthActivity.this.f9648e = true;
        this.f9664a.f9662a.proceed();
        dialogInterface.dismiss();
    }
}
