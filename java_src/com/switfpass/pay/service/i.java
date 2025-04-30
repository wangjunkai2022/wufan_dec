package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import org.json.JSONObject;
/* loaded from: classes4.dex */
final class i extends com.switfpass.pay.thread.b {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f58895b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f58896c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        this.f58895b = requestMsg;
        this.f58896c = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* renamed from: d */
    public OrderBena a() {
        com.switfpass.pay.thread.h hVar;
        String str;
        String unused;
        String unused2;
        String unused3;
        String str2 = MainApplication.f58603e;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token_id", this.f58895b.s());
        jSONObject.put("auth_code", this.f58895b.d());
        jSONObject.put("trade_type", "unified.trade.micropay");
        String str3 = "token_id=" + this.f58895b.s() + "&trade_type=unified.trade.micropay&auth_code=" + this.f58895b.d() + "&device_info=AND_SDK";
        try {
            unused = d.f58883a;
            new StringBuilder("unifiedMicroPay params-->").append(str3);
            com.switfpass.pay.thread.f d4 = com.switfpass.pay.thread.d.c().d(str2, jSONObject, null, null, str3);
            if (d4.c()) {
                int i2 = d4.f58928c;
                if (i2 == -4) {
                    hVar = this.f58896c;
                    str = "请求连接超时，请稍候再试";
                } else if (i2 == -3) {
                    hVar = this.f58896c;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i2 != -1) {
                    return null;
                } else {
                    hVar = this.f58896c;
                    str = "网络连接不可用，请检查你网络连接";
                }
            } else {
                Integer valueOf = Integer.valueOf(Integer.parseInt(d4.f58926a.getString("status")));
                OrderBena orderBena = new OrderBena();
                if (valueOf.intValue() == 0) {
                    unused2 = d.f58883a;
                    new StringBuilder("unifiedMicroPay result data-->").append(d4.f58926a);
                    orderBena.M(d4.f58926a.optString("money", ""));
                    orderBena.P(d4.f58926a.optString("out_trade_no", ""));
                    orderBena.Y(d4.f58926a.optString("status", ""));
                    orderBena.W(d4.f58926a.optString("trade_type", ""));
                    orderBena.b0(d4.f58926a.optString("trade_name", ""));
                    orderBena.c0(d4.f58926a.optString("trade_time", ""));
                    orderBena.d0(d4.f58926a.optString("transaction_id", ""));
                    orderBena.F(d4.f58926a.optString("body", ""));
                    orderBena.K(d4.f58926a.optString("order_no", ""));
                    orderBena.J(d4.f58926a.optString("mch_name", ""));
                    return orderBena;
                } else if (d4.f58926a.optString("need_query", "").equalsIgnoreCase("Y")) {
                    orderBena.P(d4.f58926a.optString("out_trade_no", ""));
                    return orderBena;
                } else {
                    hVar = this.f58896c;
                    str = d4.f58926a.getString("message");
                }
            }
            hVar.onError(str);
            return null;
        } catch (Exception e4) {
            unused3 = d.f58883a;
            new StringBuilder("createNativeOrder method error ").append(e4.getMessage());
            return null;
        }
    }
}
