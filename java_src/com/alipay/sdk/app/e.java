package com.alipay.sdk.app;

import android.app.Activity;
import android.content.DialogInterface;
/* loaded from: classes2.dex */
final class e implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f9598a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(c cVar) {
        this.f9598a = cVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        Activity activity;
        this.f9598a.f9595a.cancel();
        this.f9598a.f9596b.f9590b = false;
        h.f9601a = h.a();
        activity = this.f9598a.f9596b.f9589a;
        activity.finish();
    }
}
