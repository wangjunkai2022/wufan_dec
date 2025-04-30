package com.switfpass.pay.utils;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.Toast;
import com.switfpass.pay.activity.QQWapPayWebView;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class l1 extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59030a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f59031b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l1(d0 d0Var, RequestMsg requestMsg) {
        this.f59030a = d0Var;
        this.f59031b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        Activity activity;
        super.onError(obj);
        this.f59030a.l();
        if (obj != null) {
            try {
                activity = this.f59030a.f58949a;
                activity.runOnUiThread(new m1(this, obj));
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
        d0 d0Var = this.f59030a;
        activity = d0Var.f58949a;
        d0Var.v(activity, true, "请稍候，正在请求微信支付..");
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        Activity activity;
        Activity activity2;
        Activity activity3;
        OrderBena orderBena = (OrderBena) obj;
        this.f59030a.l();
        if (orderBena != null) {
            com.switfpass.pay.handle.a.b(9, 0, "success");
            if (!TextUtils.isEmpty(orderBena.l())) {
                this.f59031b.F(orderBena.l());
            }
            try {
                activity = this.f59030a.f58949a;
                if (d0.i(activity)) {
                    activity3 = this.f59030a.f58949a;
                    QQWapPayWebView.startActivity(activity3, orderBena.z(), this.f59031b.s(), this.f59031b.k());
                    return;
                }
                activity2 = this.f59030a.f58949a;
                Toast.makeText(activity2, "手机没有安装微信，请先安装微信", 0).show();
            } catch (Exception e4) {
                new StringBuilder("wxWapPays ").append(e4);
            }
        }
    }
}
