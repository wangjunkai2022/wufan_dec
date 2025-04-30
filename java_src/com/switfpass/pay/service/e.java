package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import org.json.JSONObject;
/* loaded from: classes4.dex */
final class e extends com.switfpass.pay.thread.b {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f58885b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f58886c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, com.switfpass.pay.thread.h hVar) {
        this.f58885b = str;
        this.f58886c = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.switfpass.pay.thread.b
    /* renamed from: d */
    public OrderBena a() {
        String string;
        JSONObject jSONObject = new JSONObject();
        OrderBena orderBena = new OrderBena();
        jSONObject.put("openid", this.f58885b);
        com.switfpass.pay.thread.d c4 = com.switfpass.pay.thread.d.c();
        com.switfpass.pay.thread.f d4 = c4.d(String.valueOf(MainApplication.f58606h) + "spay/sendRedPack", jSONObject, null, null, null);
        try {
            if (!d4.c() && (string = d4.f58926a.getString("status")) != null) {
                if (Boolean.parseBoolean(string)) {
                    return orderBena;
                }
                return null;
            }
        } catch (Exception unused) {
            this.f58886c.onError("红包发送失败，请稍后再试..");
        }
        return null;
    }
}
