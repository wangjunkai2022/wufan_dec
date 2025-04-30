package com.switfpass.pay.utils;

import android.app.Activity;
import com.switfpass.pay.lib.Resourcemap;
/* loaded from: classes4.dex */
final class u1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ t1 f59070a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f59071b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u1(t1 t1Var, Object obj) {
        this.f59070a = t1Var;
        this.f59071b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d0 d0Var;
        Activity activity;
        d0 d0Var2;
        Activity activity2;
        d0 d0Var3;
        Activity activity3;
        d0Var = this.f59070a.f59065a;
        activity = d0Var.f58949a;
        d0Var2 = this.f59070a.f59065a;
        activity2 = d0Var2.f58949a;
        String string = activity2.getResources().getString(Resourcemap.getById_title_prompt());
        l lVar = new l(activity, string, this.f59071b.toString(), "确定", 0, null);
        d0Var3 = this.f59070a.f59065a;
        activity3 = d0Var3.f58949a;
        h.e(activity3, lVar);
        lVar.show();
    }
}
