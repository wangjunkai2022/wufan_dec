package com.switfpass.pay.utils;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.Toast;
import com.switfpass.pay.activity.QQWapPayWebView;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class q1 extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59053a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f59054b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q1(d0 d0Var, RequestMsg requestMsg) {
        this.f59053a = d0Var;
        this.f59054b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        Activity activity;
        super.onError(obj);
        this.f59053a.l();
        if (obj != null) {
            try {
                activity = this.f59053a.f58949a;
                activity.runOnUiThread(new r1(this, obj));
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
        d0 d0Var = this.f59053a;
        activity = d0Var.f58949a;
        d0Var.v(activity, true, "请稍候，正在请求QQ钱包H5支付..");
        super.onPreExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        Activity activity;
        Activity activity2;
        Activity activity3;
        OrderBena orderBena = (OrderBena) obj;
        this.f59053a.l();
        if (orderBena != null) {
            try {
                com.switfpass.pay.handle.a.b(9, 0, "success");
                activity = this.f59053a.f58949a;
                if (!d0.o(activity)) {
                    activity2 = this.f59053a.f58949a;
                    Toast.makeText(activity2, "手机QQ没有安装，请先安装手机QQ", 0).show();
                    return;
                }
                if (!TextUtils.isEmpty(orderBena.l())) {
                    this.f59054b.F(orderBena.l());
                }
                activity3 = this.f59053a.f58949a;
                QQWapPayWebView.startActivity(activity3, orderBena.z(), this.f59054b.s(), this.f59054b.k());
            } catch (Exception e4) {
                new StringBuilder("qqWapPays ").append(e4);
            }
        }
    }
}
