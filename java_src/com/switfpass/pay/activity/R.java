package com.switfpass.pay.activity;

import android.content.Context;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.lib.Resourcemap;
import java.util.Date;
/* loaded from: classes4.dex */
final class R extends com.switfpass.pay.thread.h {
    private /* synthetic */ QrcodeActivity aJ;

    R(QrcodeActivity qrcodeActivity) {
        this.aJ = qrcodeActivity;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        super.onSucceed(orderBena);
        if (orderBena != null) {
            if (!orderBena.t().equals("201") || !this.aJ.aI) {
                if (orderBena.t().equals("8")) {
                    QrcodeActivity.i(this.aJ).setText(Resourcemap.getString_pay_zfb_scan_state_info());
                    QrcodeActivity.j(this.aJ).setImageResource(Resourcemap.getDrawable_n_right_select());
                    QrcodeActivity.k(this.aJ).setBackgroundResource(Resourcemap.getDrawable_n_code_green_bg());
                    return;
                }
                return;
            }
            this.aJ.aI = false;
            orderBena.W(QrcodeActivity.e(this.aJ).r());
            orderBena.b0(QrcodeActivity.e(this.aJ).w());
            orderBena.G(QrcodeActivity.e(this.aJ).d());
            orderBena.c0(String.valueOf(new Date().getTime()));
            orderBena.R(QrcodeActivity.e(this.aJ).n());
            orderBena.E(QrcodeActivity.e(this.aJ).b());
            PayResultActivity.startActivity(orderBena, (Context) this.aJ);
            this.aJ.finish();
        }
    }
}
