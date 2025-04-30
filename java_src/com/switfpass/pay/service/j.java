package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import org.json.JSONObject;
/* loaded from: classes4.dex */
final class j extends com.switfpass.pay.thread.b {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f58897b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f58898c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        this.f58897b = requestMsg;
        this.f58898c = hVar;
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
        jSONObject.put("token_id", this.f58897b.s());
        jSONObject.put("out_trade_no", this.f58897b.k());
        jSONObject.put("trade_type", "unified.micropay.reverse");
        String str3 = "token_id=" + this.f58897b.s() + "&trade_type=unified.micropay.reverse&out_trade_no=" + this.f58897b.k() + "&device_info=AND_SDK";
        try {
            unused = d.f58883a;
            new StringBuilder("unifiedReverse params-->").append(str3);
            com.switfpass.pay.thread.f d4 = com.switfpass.pay.thread.d.c().d(str2, jSONObject, null, null, str3);
            if (d4.c()) {
                int i2 = d4.f58928c;
                if (i2 == -4) {
                    hVar = this.f58898c;
                    str = "请求连接超时，请稍候再试";
                } else if (i2 == -3) {
                    hVar = this.f58898c;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i2 == -1) {
                    hVar = this.f58898c;
                    str = "网络连接不可用，请检查你网络连接";
                }
                hVar.onError(str);
            } else if (Integer.valueOf(Integer.parseInt(d4.f58926a.getString("status"))).intValue() == 0) {
                OrderBena orderBena = new OrderBena();
                unused2 = d.f58883a;
                new StringBuilder("unifiedReverse result data-->").append(d4.f58926a);
                return orderBena;
            } else {
                this.f58898c.onError(d4.f58926a.getString("message"));
            }
            return null;
        } catch (Exception e4) {
            unused3 = d.f58883a;
            new StringBuilder("unifiedReverse method error ").append(e4.getMessage());
            return null;
        }
    }
}
