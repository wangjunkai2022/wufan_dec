package com.switfpass.pay.utils;

import android.app.Activity;
import android.widget.Toast;
/* loaded from: classes4.dex */
final class r1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ q1 f59057a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f59058b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r1(q1 q1Var, Object obj) {
        this.f59057a = q1Var;
        this.f59058b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d0 d0Var;
        Activity activity;
        d0Var = this.f59057a.f59053a;
        activity = d0Var.f58949a;
        Toast.makeText(activity, this.f59058b.toString(), 1).show();
    }
}
