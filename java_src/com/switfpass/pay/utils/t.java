package com.switfpass.pay.utils;

import android.view.View;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class t implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59062a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(d0 d0Var) {
        this.f59062a = d0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RequestMsg requestMsg;
        d0 d0Var = this.f59062a;
        requestMsg = d0Var.f58960l;
        d0Var.p(requestMsg);
    }
}
