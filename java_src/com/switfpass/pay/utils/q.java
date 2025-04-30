package com.switfpass.pay.utils;

import android.app.Activity;
import android.view.View;
import com.switfpass.pay.activity.PaySDKCaptureActivity;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class q implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59051a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(d0 d0Var) {
        this.f59051a = d0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RequestMsg requestMsg;
        Activity activity;
        RequestMsg requestMsg2;
        Activity activity2;
        RequestMsg requestMsg3;
        e0 e0Var = new e0();
        requestMsg = this.f59051a.f58960l;
        if (requestMsg.s() != null) {
            requestMsg2 = this.f59051a.f58960l;
            if (!"".equals(requestMsg2.s())) {
                this.f59051a.cancel();
                activity2 = this.f59051a.f58949a;
                requestMsg3 = this.f59051a.f58960l;
                PaySDKCaptureActivity.startActivity(activity2, requestMsg3);
                return;
            }
        }
        activity = this.f59051a.f58949a;
        e0Var.a(activity, "tokenid不能为空");
    }
}
