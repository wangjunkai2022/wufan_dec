package com.alipay.sdk.auth;

import android.content.DialogInterface;
/* loaded from: classes2.dex */
final class i implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f9665a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(g gVar) {
        this.f9665a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        String str;
        this.f9665a.f9662a.cancel();
        AuthActivity.this.f9648e = false;
        StringBuilder sb = new StringBuilder();
        str = AuthActivity.this.f9645b;
        sb.append(str);
        sb.append("?resultCode=150");
        j.d(AuthActivity.this, sb.toString());
        AuthActivity.this.finish();
    }
}
