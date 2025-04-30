package com.switfpass.pay.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.text.TextUtils;
import android.widget.Toast;
import com.switfpass.pay.activity.QQWapPayWebView;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class o1 extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59044a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f59045b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o1(d0 d0Var, RequestMsg requestMsg) {
        this.f59044a = d0Var;
        this.f59045b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        g0 g0Var;
        AlertDialog alertDialog;
        boolean z3;
        Activity activity;
        AlertDialog alertDialog2;
        g0Var = this.f59044a.f58959k;
        g0Var.dismiss();
        alertDialog = this.f59044a.f58965q;
        if (alertDialog != null) {
            alertDialog2 = this.f59044a.f58965q;
            alertDialog2.dismiss();
        }
        z3 = this.f59044a.f58966r;
        if (z3) {
            this.f59044a.f58966r = true;
            super.onError(obj);
            if (obj != null) {
                activity = this.f59044a.f58949a;
                activity.runOnUiThread(new p1(this, obj));
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
        g0 g0Var;
        g0 g0Var2;
        super.onPreExecute();
        activity = this.f59044a.f58949a;
        g0Var = this.f59044a.f58959k;
        h.e(activity, g0Var);
        g0Var2 = this.f59044a.f58959k;
        g0Var2.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        g0 g0Var;
        AlertDialog alertDialog;
        boolean z3;
        Activity activity;
        Activity activity2;
        Activity activity3;
        AlertDialog alertDialog2;
        OrderBena orderBena = (OrderBena) obj;
        g0Var = this.f59044a.f58959k;
        g0Var.dismiss();
        alertDialog = this.f59044a.f58965q;
        if (alertDialog != null) {
            alertDialog2 = this.f59044a.f58965q;
            alertDialog2.dismiss();
        }
        if (orderBena != null) {
            z3 = this.f59044a.f58966r;
            if (z3) {
                if (!TextUtils.isEmpty(orderBena.l())) {
                    this.f59045b.F(orderBena.l());
                }
                activity = this.f59044a.f58949a;
                if (d0.i(activity)) {
                    activity3 = this.f59044a.f58949a;
                    QQWapPayWebView.startActivity(activity3, orderBena.z(), this.f59045b.s(), this.f59045b.k());
                    return;
                }
                activity2 = this.f59044a.f58949a;
                Toast.makeText(activity2, "手机没有安装微信，请先安装微信", 0).show();
                return;
            }
        }
        this.f59044a.f58966r = true;
    }
}
