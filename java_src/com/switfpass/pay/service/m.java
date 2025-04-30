package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class m extends com.switfpass.pay.thread.b {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f58904b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f58905c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f58906d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(RequestMsg requestMsg, String str, com.switfpass.pay.thread.h hVar) {
        this.f58904b = requestMsg;
        this.f58905c = str;
        this.f58906d = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* renamed from: d */
    public OrderBena a() {
        com.switfpass.pay.thread.h hVar;
        String str;
        String unused;
        String unused2;
        String str2 = MainApplication.f58600b;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token_id", this.f58904b.s());
        jSONObject.put("trade_type", this.f58905c);
        String str3 = "token_id=" + this.f58904b.s() + "&trade_type=" + this.f58905c + "&device_info=AND_SDK";
        unused = d.f58883a;
        StringBuilder sb = new StringBuilder("createNativeOrder-token_id->");
        sb.append(this.f58904b.s());
        sb.append(",param-->");
        sb.append(str3);
        try {
            com.switfpass.pay.thread.f d4 = com.switfpass.pay.thread.d.c().d(str2, jSONObject, null, null, str3);
            if (d4.c()) {
                int i2 = d4.f58928c;
                if (i2 == -4) {
                    hVar = this.f58906d;
                    str = "请求连接超时，请稍候再试";
                } else if (i2 == -3) {
                    hVar = this.f58906d;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i2 != -1) {
                    return null;
                } else {
                    hVar = this.f58906d;
                    str = "网络连接不可用，请检查你网络连接";
                }
            } else if (Integer.valueOf(Integer.parseInt(d4.f58926a.getString("status"))).intValue() == 0) {
                OrderBena orderBena = new OrderBena();
                orderBena.e0(d4.f58926a.optString("code_url", ""));
                orderBena.M(d4.f58926a.optString("money", ""));
                orderBena.P(d4.f58926a.optString("out_trade_no", ""));
                orderBena.F(d4.f58926a.optString("body", ""));
                orderBena.W(this.f58905c);
                orderBena.b0(this.f58904b.t());
                orderBena.a0(this.f58904b.s());
                orderBena.I(this.f58904b.h());
                orderBena.G(this.f58904b.g());
                orderBena.E(this.f58904b.e());
                if (this.f58904b.m() != null && !"".equals(this.f58904b.m())) {
                    orderBena.R(this.f58904b.m());
                }
                if (this.f58904b.r() != null && !"".equals(this.f58904b.r())) {
                    orderBena.U(this.f58904b.r());
                }
                return orderBena;
            } else {
                hVar = this.f58906d;
                str = d4.f58926a.getString("message");
            }
            hVar.onError(str);
            return null;
        } catch (Exception e4) {
            unused2 = d.f58883a;
            new StringBuilder("createNativeOrder method error ").append(e4.getMessage());
            this.f58906d.onError("生成二维码失败");
            return null;
        }
    }
}
