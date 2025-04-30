package com.switfpass.pay.utils;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class h1 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ l f58996a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f58997b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h1(l lVar, int i2) {
        this.f58996a = lVar;
        this.f58997b = i2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context;
        i iVar;
        i iVar2;
        this.f58996a.dismiss();
        int i2 = this.f58997b;
        if (i2 == 6) {
            context = this.f58996a.f59014a;
            ((Activity) context).finish();
        } else if (i2 == 10) {
            iVar = this.f58996a.f59022i;
            iVar.cancel();
        } else if (i2 != 12) {
        } else {
            this.f58996a.dismiss();
            this.f58996a.cancel();
            iVar2 = this.f58996a.f59022i;
            iVar2.cancel();
        }
    }
}
