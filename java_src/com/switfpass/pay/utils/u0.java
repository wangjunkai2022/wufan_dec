package com.switfpass.pay.utils;

import android.app.Activity;
import android.widget.Toast;
/* loaded from: classes4.dex */
final class u0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ t0 f59068a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f59069b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(t0 t0Var, Object obj) {
        this.f59068a = t0Var;
        this.f59069b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d0 d0Var;
        Activity activity;
        d0Var = this.f59068a.f59063a;
        activity = d0Var.f58949a;
        Toast.makeText(activity, this.f59069b.toString(), 1).show();
    }
}
