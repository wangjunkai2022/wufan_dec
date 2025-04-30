package com.alipay.sdk.app;

import android.content.DialogInterface;
/* loaded from: classes2.dex */
final class d implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f9597a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.f9597a = cVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.f9597a.f9596b.f9590b = true;
        this.f9597a.f9595a.proceed();
        dialogInterface.dismiss();
    }
}
