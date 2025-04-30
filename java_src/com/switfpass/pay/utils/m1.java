package com.switfpass.pay.utils;

import android.app.Activity;
import android.widget.Toast;
/* loaded from: classes4.dex */
final class m1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ l1 f59036a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f59037b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m1(l1 l1Var, Object obj) {
        this.f59036a = l1Var;
        this.f59037b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d0 d0Var;
        Activity activity;
        d0Var = this.f59036a.f59030a;
        activity = d0Var.f58949a;
        Toast.makeText(activity, this.f59037b.toString(), 1).show();
    }
}
