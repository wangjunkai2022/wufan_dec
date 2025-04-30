package com.switfpass.pay.utils;

import android.app.Activity;
import android.widget.Toast;
/* loaded from: classes4.dex */
final class x0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ w0 f59079a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f59080b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x0(w0 w0Var, Object obj) {
        this.f59079a = w0Var;
        this.f59080b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d0 d0Var;
        Activity activity;
        d0Var = this.f59079a.f59076a;
        activity = d0Var.f58949a;
        Toast.makeText(activity, this.f59080b.toString(), 1).show();
    }
}
