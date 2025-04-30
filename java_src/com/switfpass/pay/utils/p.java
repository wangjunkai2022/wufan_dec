package com.switfpass.pay.utils;

import android.app.Activity;
import android.widget.Toast;
/* loaded from: classes4.dex */
final class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ o f59046a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f59047b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar, Object obj) {
        this.f59046a = oVar;
        this.f59047b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d0 d0Var;
        Activity activity;
        d0Var = this.f59046a.f59043a;
        activity = d0Var.f58949a;
        Toast.makeText(activity, this.f59047b.toString(), 1).show();
    }
}
