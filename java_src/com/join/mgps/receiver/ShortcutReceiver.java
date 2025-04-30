package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.join.mgps.Util.i2;
/* loaded from: classes4.dex */
public class ShortcutReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        StringBuilder sb = new StringBuilder();
        sb.append(">>>:");
        sb.append(intent.getAction());
        i2.a(context).b("桌面快速启动方式添加成功！");
    }
}
