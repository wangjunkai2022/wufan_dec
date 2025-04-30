package com.switfpass.pay.utils;

import android.app.Activity;
import android.text.TextUtils;
import com.switfpass.pay.activity.QQWapPayWebView;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class w0 extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59076a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f59077b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(d0 d0Var, RequestMsg requestMsg) {
        this.f59076a = d0Var;
        this.f59077b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        Activity activity;
        super.onError(obj);
        this.f59076a.l();
        if (obj != null) {
            try {
                activity = this.f59076a.f58949a;
                activity.runOnUiThread(new x0(this, obj));
                com.switfpass.pay.handle.a.b(9, -1, obj.toString());
            } catch (Exception e4) {
                new StringBuilder().append(e4);
            }
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
        d0 d0Var = this.f59076a;
        activity = d0Var.f58949a;
        d0Var.v(activity, true, "请稍候，正在请求支付宝支付..");
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        Activity activity;
        OrderBena orderBena = (OrderBena) obj;
        this.f59076a.l();
        if (orderBena != null) {
            com.switfpass.pay.handle.a.b(9, 0, "success");
            if (!TextUtils.isEmpty(orderBena.l())) {
                this.f59077b.F(orderBena.l());
            }
            activity = this.f59076a.f58949a;
            QQWapPayWebView.startActivity(activity, orderBena.z(), this.f59077b.s(), this.f59077b.k());
        }
    }
}
