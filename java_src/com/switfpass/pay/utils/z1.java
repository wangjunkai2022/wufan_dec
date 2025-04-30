package com.switfpass.pay.utils;

import android.app.Activity;
import android.widget.Toast;
/* loaded from: classes4.dex */
final class z1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ y1 f59090a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f59091b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z1(y1 y1Var, Object obj) {
        this.f59090a = y1Var;
        this.f59091b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d0 d0Var;
        Activity activity;
        d0Var = this.f59090a.f59086a;
        activity = d0Var.f58949a;
        Toast.makeText(activity, this.f59091b.toString(), 1).show();
    }
}
