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
public final class t1 extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59065a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f59066b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t1(d0 d0Var, RequestMsg requestMsg) {
        this.f59065a = d0Var;
        this.f59066b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        g0 g0Var;
        AlertDialog alertDialog;
        boolean z3;
        Activity activity;
        AlertDialog alertDialog2;
        g0Var = this.f59065a.f58959k;
        g0Var.dismiss();
        alertDialog = this.f59065a.f58965q;
        if (alertDialog != null) {
            alertDialog2 = this.f59065a.f58965q;
            alertDialog2.dismiss();
        }
        z3 = this.f59065a.f58966r;
        if (z3) {
            this.f59065a.f58966r = true;
            super.onError(obj);
            if (obj != null) {
                activity = this.f59065a.f58949a;
                activity.runOnUiThread(new u1(this, obj));
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
        activity = this.f59065a.f58949a;
        g0Var = this.f59065a.f58959k;
        h.e(activity, g0Var);
        g0Var2 = this.f59065a.f58959k;
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
        g0Var = this.f59065a.f58959k;
        g0Var.dismiss();
        alertDialog = this.f59065a.f58965q;
        if (alertDialog != null) {
            alertDialog2 = this.f59065a.f58965q;
            alertDialog2.dismiss();
        }
        if (orderBena != null) {
            z3 = this.f59065a.f58966r;
            if (z3) {
                activity = this.f59065a.f58949a;
                if (!d0.o(activity)) {
                    activity2 = this.f59065a.f58949a;
                    Toast.makeText(activity2, "手机QQ没有安装，请先安装手机QQ", 0).show();
                    return;
                }
                if (!TextUtils.isEmpty(orderBena.l())) {
                    this.f59066b.F(orderBena.l());
                }
                activity3 = this.f59065a.f58949a;
                QQWapPayWebView.startActivity(activity3, orderBena.z(), this.f59066b.s(), this.f59066b.k());
                return;
            }
        }
        this.f59065a.f58966r = true;
    }
}
