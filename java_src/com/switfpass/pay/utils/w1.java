package com.switfpass.pay.utils;

import android.app.Activity;
import android.app.AlertDialog;
import com.switfpass.pay.activity.QrcodeActivity;
import com.switfpass.pay.bean.OrderBena;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class w1 extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ d0 f59078a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w1(d0 d0Var) {
        this.f59078a = d0Var;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        g0 g0Var;
        AlertDialog alertDialog;
        boolean z3;
        Activity activity;
        AlertDialog alertDialog2;
        g0Var = this.f59078a.f58959k;
        g0Var.dismiss();
        alertDialog = this.f59078a.f58965q;
        if (alertDialog != null) {
            alertDialog2 = this.f59078a.f58965q;
            alertDialog2.dismiss();
        }
        z3 = this.f59078a.f58966r;
        if (z3) {
            this.f59078a.f58966r = true;
            super.onError(obj);
            if (obj != null) {
                com.switfpass.pay.handle.a.b(0, 0, 1);
                activity = this.f59078a.f58949a;
                activity.runOnUiThread(new x1(this, obj));
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
        activity = this.f59078a.f58949a;
        g0Var = this.f59078a.f58959k;
        h.e(activity, g0Var);
        g0Var2 = this.f59078a.f58959k;
        g0Var2.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        g0 g0Var;
        AlertDialog alertDialog;
        boolean z3;
        Activity activity;
        AlertDialog alertDialog2;
        OrderBena orderBena = (OrderBena) obj;
        g0Var = this.f59078a.f58959k;
        g0Var.dismiss();
        alertDialog = this.f59078a.f58965q;
        if (alertDialog != null) {
            alertDialog2 = this.f59078a.f58965q;
            alertDialog2.dismiss();
        }
        if (orderBena != null) {
            z3 = this.f59078a.f58966r;
            if (z3) {
                activity = this.f59078a.f58949a;
                QrcodeActivity.startActivity(orderBena, activity);
                return;
            }
        }
        this.f59078a.f58966r = true;
    }
}
