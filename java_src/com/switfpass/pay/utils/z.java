package com.switfpass.pay.utils;

import android.view.View;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class z implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59088a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(d0 d0Var) {
        this.f59088a = d0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RequestMsg requestMsg;
        String str;
        RequestMsg requestMsg2;
        requestMsg = this.f59088a.f58960l;
        str = d0.f58948v;
        requestMsg.P(str);
        d0 d0Var = this.f59088a;
        requestMsg2 = d0Var.f58960l;
        d0Var.F(requestMsg2);
    }
}
