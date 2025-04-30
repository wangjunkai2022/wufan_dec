package com.switfpass.pay.utils;

import android.app.Activity;
import com.switfpass.pay.bean.OrderBena;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class o extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59043a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(d0 d0Var) {
        this.f59043a = d0Var;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        Activity activity;
        this.f59043a.l();
        super.onError(obj);
        if (obj != null) {
            com.switfpass.pay.handle.a.b(1, 1, "支付失败，原因包括用户网络出错");
            activity = this.f59043a.f58949a;
            activity.runOnUiThread(new p(this, obj));
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
        d0 d0Var = this.f59043a;
        activity = d0Var.f58949a;
        d0Var.v(activity, true, "请稍候，正在请求支付宝..");
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        if (orderBena != null) {
            new R(this.f59043a, orderBena).start();
        }
    }
}
