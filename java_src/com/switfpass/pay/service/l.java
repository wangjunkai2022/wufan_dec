package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class l extends com.switfpass.pay.thread.b {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f58901b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f58902c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f58903d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(RequestMsg requestMsg, String str, com.switfpass.pay.thread.h hVar) {
        this.f58901b = requestMsg;
        this.f58902c = str;
        this.f58903d = hVar;
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
        String str2 = MainApplication.f58600b;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token_id", this.f58901b.s());
        jSONObject.put("trade_type", this.f58902c);
        String str3 = "token_id=" + this.f58901b.s() + "&trade_type=" + this.f58902c + "&device_info=AND_SDK";
        unused = d.f58883a;
        StringBuilder sb = new StringBuilder("WapPay-token_id->");
        sb.append(this.f58901b.s());
        sb.append(",param-->");
        sb.append(str3);
        try {
            com.switfpass.pay.thread.f d4 = com.switfpass.pay.thread.d.c().d(str2, jSONObject, null, null, str3);
            if (d4.c()) {
                int i2 = d4.f58928c;
                if (i2 == -4) {
                    hVar = this.f58903d;
                    str = "请求连接超时，请稍候再试";
                } else if (i2 == -3) {
                    hVar = this.f58903d;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i2 != -1) {
                    return null;
                } else {
                    hVar = this.f58903d;
                    str = "网络连接不可用，请检查你网络连接";
                }
            } else {
                unused2 = d.f58883a;
                new StringBuilder("WapPay-result.data->").append(d4.f58926a);
                if (Integer.valueOf(Integer.parseInt(d4.f58926a.getString("status"))).intValue() == 0) {
                    OrderBena orderBena = new OrderBena();
                    orderBena.e0(d4.f58926a.optString("code_img_url", ""));
                    orderBena.P(d4.f58926a.optString("out_trade_no", ""));
                    return orderBena;
                }
                hVar = this.f58903d;
                str = d4.f58926a.getString("message");
            }
            hVar.onError(str);
            return null;
        } catch (Exception e4) {
            unused3 = d.f58883a;
            new StringBuilder("createNativeOrder method error ").append(e4.getMessage());
            this.f58903d.onError("生成二维码失败");
            return null;
        }
    }
}
