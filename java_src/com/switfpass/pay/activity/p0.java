package com.switfpass.pay.activity;

import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
/* loaded from: classes4.dex */
final class p0 extends com.switfpass.pay.thread.h {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f58691a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f58692b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ boolean f58693c;

    p0(PaySDKCaptureActivity paySDKCaptureActivity, RequestMsg requestMsg, boolean z3) {
        this.f58691a = paySDKCaptureActivity;
        this.f58692b = requestMsg;
        this.f58693c = z3;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        if (this.f58691a.V != null) {
            this.f58691a.V.dismiss();
        }
        if (PaySDKCaptureActivity.f(this.f58691a)) {
            PaySDKCaptureActivity.a(this.f58691a, true);
            this.f58691a.runOnUiThread(new q0(this, obj));
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        PaySDKCaptureActivity paySDKCaptureActivity = this.f58691a;
        com.switfpass.pay.utils.h.e(paySDKCaptureActivity, paySDKCaptureActivity.U);
        this.f58691a.V.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        super.onSucceed(orderBena);
        if (this.f58691a.V != null) {
            this.f58691a.V.dismiss();
        }
        if (orderBena != null) {
            if (orderBena.i() != null) {
                PaySDKCaptureActivity.a(this.f58691a, com.switfpass.pay.utils.o0.d(Double.parseDouble(orderBena.i())));
            }
            this.f58692b.F(orderBena.l());
            if (PaySDKCaptureActivity.f(this.f58691a)) {
                PaySDKCaptureActivity.a(this.f58691a, true);
                if (orderBena.t().equalsIgnoreCase("SUCCESS") && this.f58691a.ae) {
                    this.f58691a.ae = false;
                    this.f58691a.V.dismiss();
                    orderBena.H(true);
                    PayResultActivity.startActivity(orderBena, PaySDKCaptureActivity.g(this.f58691a));
                    this.f58691a.finish();
                } else if (this.f58693c) {
                    if (this.f58691a.V != null) {
                        this.f58691a.V.dismiss();
                    }
                    if (!orderBena.t().equalsIgnoreCase("SUCCESS")) {
                        this.f58691a.V.dismiss();
                        this.f58691a.showToastInfo("该笔订单状态：未支付，请冲正该笔订单或者继续查询确认该笔订单是否已经支付成功!");
                        PaySDKCaptureActivity.h(this.f58691a);
                        return;
                    }
                    this.f58691a.V.dismiss();
                    orderBena.H(true);
                    PayResultActivity.startActivity(orderBena, PaySDKCaptureActivity.g(this.f58691a));
                    this.f58691a.finish();
                } else if (this.f58691a.count >= 4) {
                    PaySDKCaptureActivity.d();
                    new StringBuilder("result.state-->").append(orderBena.t());
                    if (orderBena.t().equalsIgnoreCase("SUCCESS")) {
                        this.f58691a.V.dismiss();
                        return;
                    }
                    PaySDKCaptureActivity.b(this.f58691a, orderBena.l());
                    this.f58691a.V.dismiss();
                    PaySDKCaptureActivity.h(this.f58691a);
                } else {
                    this.f58691a.V.dismiss();
                    PaySDKCaptureActivity.a(this.f58691a, 5L);
                    this.f58691a.count++;
                    PaySDKCaptureActivity paySDKCaptureActivity = this.f58691a;
                    PaySDKCaptureActivity paySDKCaptureActivity2 = this.f58691a;
                    PaySDKCaptureActivity.a(paySDKCaptureActivity, new com.switfpass.pay.utils.l(paySDKCaptureActivity2, paySDKCaptureActivity2.getString((int) com.join.android.app.mgsim.wufun.R.drawable.abc_btn_colored_material), "", this.f58691a.getString((int) com.join.android.app.mgsim.wufun.R.drawable.abc_ic_clear_material), 11, null));
                    PaySDKCaptureActivity paySDKCaptureActivity3 = this.f58691a;
                    com.switfpass.pay.utils.h.e(paySDKCaptureActivity3, PaySDKCaptureActivity.b(paySDKCaptureActivity3));
                    PaySDKCaptureActivity.b(this.f58691a).setOnKeyListener(new r0());
                    PaySDKCaptureActivity.b(this.f58691a).show();
                    PaySDKCaptureActivity.b(this.f58691a, PaySDKCaptureActivity.c());
                    PaySDKCaptureActivity.c(this.f58691a).post(PaySDKCaptureActivity.i(this.f58691a));
                }
            }
        }
    }
}
