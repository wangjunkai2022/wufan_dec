package com.switfpass.pay.utils;

import android.app.Activity;
import com.switfpass.pay.lib.Resourcemap;
/* loaded from: classes4.dex */
final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ b f58946a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f58947b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(b bVar, Object obj) {
        this.f58946a = bVar;
        this.f58947b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d0 d0Var;
        Activity activity;
        d0 d0Var2;
        Activity activity2;
        d0 d0Var3;
        Activity activity3;
        d0Var = this.f58946a.f58941a;
        activity = d0Var.f58949a;
        d0Var2 = this.f58946a.f58941a;
        activity2 = d0Var2.f58949a;
        String string = activity2.getResources().getString(Resourcemap.getById_title_prompt());
        l lVar = new l(activity, string, this.f58947b.toString(), "确定", 0, null);
        d0Var3 = this.f58946a.f58941a;
        activity3 = d0Var3.f58949a;
        h.e(activity3, lVar);
        lVar.show();
    }
}
