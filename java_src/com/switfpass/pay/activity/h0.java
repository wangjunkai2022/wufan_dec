package com.switfpass.pay.activity;

import android.view.View;
import com.switfpass.pay.bean.OrderBena;
/* loaded from: classes4.dex */
final class h0 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PayResultActivity f58677a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(PayResultActivity payResultActivity) {
        this.f58677a = payResultActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        OrderBena orderBena;
        OrderBena orderBena2;
        orderBena = this.f58677a.f58635f;
        if (orderBena != null) {
            orderBena2 = this.f58677a.f58635f;
            if (orderBena2.B()) {
                com.switfpass.pay.handle.a.b(6, 7, "支付状态：该笔订单已支付");
                this.f58677a.finish();
            }
        }
        com.switfpass.pay.handle.a.b(0, 0, 0);
        this.f58677a.finish();
    }
}
