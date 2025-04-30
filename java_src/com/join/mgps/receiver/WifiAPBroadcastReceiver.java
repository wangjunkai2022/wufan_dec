package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes4.dex */
public abstract class WifiAPBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f51465a = WifiAPBroadcastReceiver.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public static final String f51466b = "android.net.wifi.WIFI_AP_STATE_CHANGED";

    public abstract void a();

    public abstract void b();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(f51466b)) {
            int intExtra = intent.getIntExtra("wifi_state", 0) % 10;
            StringBuilder sb = new StringBuilder();
            sb.append("Wifi Ap state--->>>");
            sb.append(intExtra);
            if (3 == intExtra) {
                b();
            } else if (2 != intExtra && 1 == intExtra) {
                a();
            }
        }
    }
}
