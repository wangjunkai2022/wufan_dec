package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.MchBean;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
final class k extends com.switfpass.pay.thread.b {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f58899b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f58900c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(String str, com.switfpass.pay.thread.h hVar) {
        this.f58899b = str;
        this.f58900c = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* renamed from: d */
    public List a() {
        com.switfpass.pay.thread.h hVar;
        String str;
        String unused;
        String str2 = String.valueOf(MainApplication.f58600b) + "/spay/queryByMchId";
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mchId", this.f58899b);
        try {
            com.switfpass.pay.thread.f d4 = com.switfpass.pay.thread.d.c().d(str2, jSONObject, null, null, null);
            if (d4.c()) {
                int i2 = d4.f58928c;
                if (i2 == -4) {
                    hVar = this.f58900c;
                    str = "请求连接超时，请稍候再试";
                } else if (i2 == -3) {
                    hVar = this.f58900c;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i2 == -1) {
                    hVar = this.f58900c;
                    str = "网络连接不可用，请检查你网络连接";
                }
                hVar.onError(str);
            } else if (Integer.valueOf(Integer.parseInt(d4.f58926a.getString("result"))).intValue() == 200) {
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArray = new JSONArray(d4.f58926a.getString("message"));
                for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                    MchBean mchBean = new MchBean();
                    mchBean.w(jSONArray.getJSONObject(i4).optString("tradeType", ""));
                    arrayList.add(mchBean);
                }
                return arrayList;
            } else {
                this.f58900c.onError(d4.f58926a.getString("message"));
            }
            return null;
        } catch (Exception e4) {
            unused = d.f58883a;
            new StringBuilder("createNativeOrder method error ").append(e4.getMessage());
            return null;
        }
    }
}
