package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class g extends com.switfpass.pay.thread.b {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f58890b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f58891c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        this.f58890b = requestMsg;
        this.f58891c = hVar;
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
        String str3 = "token_id=" + this.f58890b.s() + "&trade_type=unified.trade.query&out_trade_no=" + this.f58890b.k();
        unused = d.f58883a;
        new StringBuilder("unfiedQueryOrder params-->").append(str3);
        try {
            com.switfpass.pay.thread.f d4 = com.switfpass.pay.thread.d.c().d(str2, jSONObject, null, null, str3);
            if (d4.c()) {
                int i2 = d4.f58928c;
                if (i2 == -4) {
                    hVar = this.f58891c;
                    str = "请求连接超时，请稍候再试";
                } else if (i2 == -3) {
                    hVar = this.f58891c;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i2 != -1) {
                    return null;
                } else {
                    hVar = this.f58891c;
                    str = "网络连接不可用，请检查你网络连接";
                }
            } else {
                unused2 = d.f58883a;
                new StringBuilder("unfiedQueryOrder result data-->").append(d4.f58926a);
                if (Integer.valueOf(Integer.parseInt(d4.f58926a.getString("status"))).intValue() == 0) {
                    OrderBena orderBena = new OrderBena();
                    orderBena.M(d4.f58926a.optString("money", ""));
                    orderBena.P(d4.f58926a.optString("out_trade_no", ""));
                    orderBena.Y(d4.f58926a.optString("trade_state", ""));
                    orderBena.W(d4.f58926a.optString("trade_type", ""));
                    orderBena.b0(d4.f58926a.optString("trade_name", ""));
                    orderBena.c0(d4.f58926a.optString("trade_time", ""));
                    orderBena.d0(d4.f58926a.optString("transaction_id", ""));
                    orderBena.F(d4.f58926a.optString("body", ""));
                    orderBena.K(d4.f58926a.optString("order_no", ""));
                    orderBena.J(d4.f58926a.optString("mch_name", ""));
                    orderBena.O(d4.f58926a.optString("sub_openid", ""));
                    orderBena.L(d4.f58926a.optString("message", ""));
                    orderBena.V(d4.f58926a.optString("status", ""));
                    return orderBena;
                }
                hVar = this.f58891c;
                str = d4.f58926a.getString("message");
            }
            hVar.onError(str);
            return null;
        } catch (Exception e4) {
            unused3 = d.f58883a;
            new StringBuilder("createNativeOrder method error ").append(e4.getMessage());
            this.f58891c.onError("查询确认结果失败");
            return null;
        }
    }
}
