package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import org.json.JSONObject;
/* loaded from: classes4.dex */
final class h extends com.switfpass.pay.thread.b {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f58892b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f58893c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f58894d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, String str2, com.switfpass.pay.thread.h hVar) {
        this.f58892b = str;
        this.f58893c = str2;
        this.f58894d = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* renamed from: d */
    public OrderBena a() {
        com.switfpass.pay.thread.h hVar;
        String str;
        String unused;
        String unused2;
        String str2 = MainApplication.f58604f;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mchId", this.f58892b);
        try {
            com.switfpass.pay.thread.d c4 = com.switfpass.pay.thread.d.c();
            com.switfpass.pay.thread.f d4 = c4.d(str2, jSONObject, null, null, "uuid=" + this.f58893c);
            if (d4.c()) {
                int i2 = d4.f58928c;
                if (i2 == -4) {
                    hVar = this.f58894d;
                    str = "请求连接超时，请稍候再试";
                } else if (i2 == -3) {
                    hVar = this.f58894d;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i2 != -1) {
                    return null;
                } else {
                    hVar = this.f58894d;
                    str = "网络连接不可用，请检查你网络连接";
                }
                hVar.onError(str);
                return null;
            }
            OrderBena orderBena = new OrderBena();
            unused = d.f58883a;
            new StringBuilder("result data-->").append(d4.f58926a);
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
            orderBena.O(d4.f58926a.optString("sub_openid", ""));
            return orderBena;
        } catch (Exception e4) {
            unused2 = d.f58883a;
            new StringBuilder("createNativeOrder method error ").append(e4.getMessage());
            return null;
        }
    }
}
