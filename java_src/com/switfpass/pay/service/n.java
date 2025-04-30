package com.switfpass.pay.service;

import androidx.core.provider.FontsContractCompat;
import com.join.mgps.dto.Constant;
import com.qq.e.comm.pi.ACTD;
import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class n extends com.switfpass.pay.thread.b {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f58907b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f58908c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        this.f58907b = requestMsg;
        this.f58908c = hVar;
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
        jSONObject.put("mchId", this.f58907b.h());
        jSONObject.put("money", this.f58907b.i());
        jSONObject.put("body", this.f58907b.f());
        jSONObject.put("notifyUrl", this.f58907b.j());
        jSONObject.put("outTradeNo", this.f58907b.k());
        jSONObject.put("appId", this.f58907b.b());
        jSONObject.put(Constant.MD5, this.f58907b.p());
        String str3 = "token_id=" + this.f58907b.s() + "&trade_type=pay.weixin.app&appid=" + this.f58907b.b() + "&device_info=AND_SDK";
        try {
            unused = d.f58883a;
            StringBuilder sb = new StringBuilder("param-->");
            sb.append(str3);
            sb.append(",url->");
            sb.append(str2);
            com.switfpass.pay.thread.f d4 = com.switfpass.pay.thread.d.c().d(str2, jSONObject, null, null, str3);
            unused2 = d.f58883a;
            new StringBuilder("result.data-->").append(d4.f58926a);
            if (d4.c()) {
                int i2 = d4.f58928c;
                if (i2 == -4) {
                    hVar = this.f58908c;
                    str = "请求连接超时，请稍候再试";
                } else if (i2 == -3) {
                    hVar = this.f58908c;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i2 != -1) {
                    return null;
                } else {
                    hVar = this.f58908c;
                    str = "网络连接不可用，请检查你网络连接";
                }
            } else if (!d4.f58926a.getString("status").equals("0")) {
                this.f58908c.onError(d4.f58926a.getString("message"));
                return null;
            } else if (Integer.valueOf(Integer.parseInt(d4.f58926a.getString(FontsContractCompat.Columns.RESULT_CODE))).intValue() == 0) {
                OrderBena orderBena = new OrderBena();
                JSONObject jSONObject2 = new JSONObject(d4.f58926a.getString("pay_info"));
                orderBena.Q(jSONObject2.optString("partnerid", ""));
                orderBena.S(jSONObject2.optString("prepayid", ""));
                orderBena.X(jSONObject2.optString(Constant.MD5, ""));
                orderBena.D(jSONObject2.optString(ACTD.APPID_KEY, ""));
                orderBena.Z(jSONObject2.optString("timestamp", ""));
                orderBena.N(jSONObject2.optString("noncestr", ""));
                MainApplication.A = jSONObject2.optString("mch_id", "");
                MainApplication.B = this.f58907b.s();
                return orderBena;
            } else {
                hVar = this.f58908c;
                str = d4.f58926a.getString("err_msg");
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
