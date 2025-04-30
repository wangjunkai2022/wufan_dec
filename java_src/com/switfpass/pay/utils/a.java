package com.switfpass.pay.utils;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class a implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f58937a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ g0 f58938b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(d0 d0Var, g0 g0Var) {
        this.f58937a = d0Var;
        this.f58938b = g0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        this.f58937a.f58966r = false;
        g0 g0Var = this.f58938b;
        if (g0Var != null) {
            g0Var.dismiss();
        }
    }
}
