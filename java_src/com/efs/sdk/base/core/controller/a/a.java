package com.efs.sdk.base.core.controller.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.sdk.app.statistic.c;
import com.efs.sdk.base.core.config.b;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.efs.sdk.base.core.util.a.d;
/* loaded from: classes2.dex */
public final class a extends BroadcastReceiver implements Runnable {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        d.a(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        b bVar;
        bVar = b.a.f11330a;
        String networkType = NetworkUtil.getNetworkType(ControllerCenter.getGlobalEnvStruct().mAppContext);
        com.efs.sdk.base.core.util.d.a("efs.info.manager", "network change: ".concat(String.valueOf(networkType)), null);
        bVar.f11328a.a(c.f9616k, networkType);
    }
}
