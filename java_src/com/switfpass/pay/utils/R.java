package com.switfpass.pay.utils;

import android.app.Activity;
import android.os.Message;
import com.alipay.sdk.app.PayTask;
import com.switfpass.pay.bean.OrderBena;
/* loaded from: classes4.dex */
final class R extends Thread {
    private /* synthetic */ d0 dH;
    private final /* synthetic */ OrderBena dR;

    /* JADX INFO: Access modifiers changed from: package-private */
    public R(d0 d0Var, OrderBena orderBena) {
        this.dH = d0Var;
        this.dR = orderBena;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Activity activity;
        activity = this.dH.f58949a;
        String pay = new PayTask(activity).pay(this.dR.A());
        new StringBuilder("result = ").append(pay);
        Message message = new Message();
        message.what = 1;
        message.obj = pay;
        this.dH.f58969u.sendMessage(message);
    }
}
