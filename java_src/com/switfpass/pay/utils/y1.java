package com.switfpass.pay.utils;

import android.app.Activity;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class y1 extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59086a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f59087b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y1(d0 d0Var, RequestMsg requestMsg) {
        this.f59086a = d0Var;
        this.f59087b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        Activity activity;
        super.onError(obj);
        this.f59086a.l();
        if (obj != null) {
            activity = this.f59086a.f58949a;
            activity.runOnUiThread(new z1(this, obj));
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        Activity activity;
        super.onPreExecute();
        d0 d0Var = this.f59086a;
        activity = d0Var.f58949a;
        d0Var.v(activity, true, "请稍候，正在请求微信支付...");
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        boolean z3;
        OrderBena orderBena = (OrderBena) obj;
        this.f59086a.l();
        if (orderBena != null) {
            z3 = this.f59086a.f58966r;
            if (z3) {
                d0.c(this.f59086a, orderBena, this.f59087b);
            }
        }
    }
}
