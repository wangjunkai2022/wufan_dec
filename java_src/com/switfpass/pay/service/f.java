package com.switfpass.pay.service;

import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class f extends com.switfpass.pay.thread.b {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ RequestMsg f58887b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f58888c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ com.switfpass.pay.thread.h f58889d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(RequestMsg requestMsg, String str, com.switfpass.pay.thread.h hVar) {
        this.f58887b = requestMsg;
        this.f58888c = str;
        this.f58889d = hVar;
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
        String str3 = "token_id=" + this.f58887b.s() + "&trade_type=" + this.f58888c;
        unused = d.f58883a;
        new StringBuilder("request param-->").append(str3);
        try {
            com.switfpass.pay.thread.f d4 = com.switfpass.pay.thread.d.c().d(str2, null, null, null, str3);
            if (d4.c()) {
                int i2 = d4.f58928c;
                if (i2 == -4) {
                    hVar = this.f58889d;
                    str = "请求连接超时，请稍候再试";
                } else if (i2 == -3) {
                    hVar = this.f58889d;
                    str = "请求服务连接失败，请稍候再试";
                } else if (i2 == -1) {
                    hVar = this.f58889d;
                    str = "网络连接不可用，请检查你网络连接";
                }
                hVar.onError(str);
            } else if (Integer.valueOf(Integer.parseInt(d4.f58926a.getString("status"))).intValue() == 0) {
                OrderBena orderBena = new OrderBena();
                orderBena.f0(d4.f58926a.optString("pay_info", ""));
                return orderBena;
            } else {
                this.f58889d.onError(d4.f58926a.getString("message"));
            }
            return null;
        } catch (Exception e4) {
            unused2 = d.f58883a;
            new StringBuilder("createNativeOrder method error ").append(e4.getMessage());
            return null;
        }
    }
}
