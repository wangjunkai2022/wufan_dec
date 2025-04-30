package com.switfpass.pay.utils;

import android.app.Activity;
import com.switfpass.pay.lib.Resourcemap;
/* loaded from: classes4.dex */
final class n0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ l0 f59040a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f59041b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(l0 l0Var, Object obj) {
        this.f59040a = l0Var;
        this.f59041b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d0 d0Var;
        Activity activity;
        d0 d0Var2;
        Activity activity2;
        d0 d0Var3;
        Activity activity3;
        d0Var = this.f59040a.f59029a;
        activity = d0Var.f58949a;
        d0Var2 = this.f59040a.f59029a;
        activity2 = d0Var2.f58949a;
        String string = activity2.getResources().getString(Resourcemap.getById_title_prompt());
        l lVar = new l(activity, string, this.f59041b.toString(), "确定", 0, null);
        d0Var3 = this.f59040a.f59029a;
        activity3 = d0Var3.f58949a;
        h.e(activity3, lVar);
        lVar.show();
    }
}
