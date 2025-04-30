package com.switfpass.pay.activity;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes4.dex */
final class b0 extends Handler {
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == -1) {
            new StringBuilder().append(message.obj);
        } else if (i2 != 0) {
        } else {
            new StringBuilder().append(message.obj);
        }
    }
}
