package com.switfpass.pay.utils;

import android.view.View;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class b0 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f58943a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(d0 d0Var) {
        this.f58943a = d0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RequestMsg requestMsg;
        d0 d0Var = this.f58943a;
        requestMsg = d0Var.f58960l;
        d0Var.q(requestMsg);
    }
}
