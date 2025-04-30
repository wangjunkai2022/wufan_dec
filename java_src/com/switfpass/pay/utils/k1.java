package com.switfpass.pay.utils;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
/* loaded from: classes4.dex */
final class k1 extends Handler {
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2;
        String str;
        if (message.what != 1) {
            return;
        }
        String d4 = new com.switfpass.pay.activity.q((String) message.obj).d();
        new StringBuilder("resultStatus-->").append(d4);
        if (TextUtils.equals(d4, "9000")) {
            i2 = 0;
            str = "支付成功";
        } else if (!TextUtils.equals(d4, "8000")) {
            com.switfpass.pay.handle.a.b(1, 1, "支付失败，原因包括用户主动取消支付，或者系统返回的错误");
            return;
        } else {
            i2 = 2;
            str = "支付结果待确认中，最终交易是否成功以服务端异步通知为准";
        }
        com.switfpass.pay.handle.a.b(1, i2, str);
    }
}
