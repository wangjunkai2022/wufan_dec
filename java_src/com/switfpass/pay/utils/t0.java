package com.switfpass.pay.utils;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.Toast;
import com.switfpass.pay.activity.QQWapPayWebView;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class t0 extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59063a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f59064b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(d0 d0Var, RequestMsg requestMsg) {
        this.f59063a = d0Var;
        this.f59064b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        Activity activity;
        super.onError(obj);
        this.f59063a.l();
        if (obj != null) {
            try {
                activity = this.f59063a.f58949a;
                activity.runOnUiThread(new u0(this, obj));
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
        d0 d0Var = this.f59063a;
        activity = d0Var.f58949a;
        d0Var.v(activity, true, "请稍候，正在请求支付宝支付..");
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        Activity activity;
        Activity activity2;
        Activity activity3;
        OrderBena orderBena = (OrderBena) obj;
        this.f59063a.l();
        if (orderBena != null) {
            com.switfpass.pay.handle.a.b(9, 0, "success");
            if (!TextUtils.isEmpty(orderBena.l())) {
                this.f59064b.F(orderBena.l());
            }
            try {
                activity = this.f59063a.f58949a;
                if (d0.f(activity)) {
                    activity3 = this.f59063a.f58949a;
                    QQWapPayWebView.startActivity(activity3, orderBena.z(), this.f59064b.s(), this.f59064b.k());
                    return;
                }
                activity2 = this.f59063a.f58949a;
                Toast.makeText(activity2, "手机没有安装支付宝，请先安装支付宝", 0).show();
            } catch (Exception e4) {
                new StringBuilder().append(e4);
            }
        }
    }
}
