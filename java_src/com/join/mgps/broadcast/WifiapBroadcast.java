package com.join.mgps.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class WifiapBroadcast extends BroadcastReceiver {

    /* renamed from: c  reason: collision with root package name */
    private static final String f44784c = WifiapBroadcast.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<a> f44785a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private NetworkInfo f44786b;

    /* loaded from: classes3.dex */
    public interface a {
        void handleConnectChange();

        void scanResultsAvailable();

        void wifiStatusNotification();
    }

    public void a(a aVar) {
        if (aVar != null) {
            this.f44785a.add(aVar);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int i2 = 0;
        if (intent.getAction().equals("android.net.wifi.SCAN_RESULTS")) {
            while (i2 < this.f44785a.size()) {
                this.f44785a.get(i2).scanResultsAvailable();
                i2++;
            }
        } else if (intent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED")) {
            StringBuilder sb = new StringBuilder();
            sb.append("android.net.wifi.WIFI_STATE_CHANGED | ");
            sb.append(intent.getIntExtra("wifi_state", -1));
            sb.append(" | ");
            sb.append(intent.getIntExtra("previous_wifi_state", -1));
            while (i2 < this.f44785a.size()) {
                this.f44785a.get(i2).wifiStatusNotification();
                i2++;
            }
        } else if (intent.getAction().equals("android.net.wifi.STATE_CHANGE")) {
            this.f44786b = (NetworkInfo) intent.getParcelableExtra("networkInfo");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("android.net.wifi.STATE_CHANGE | ");
            sb2.append(this.f44786b.getDetailedState());
            if (this.f44786b.getDetailedState() == NetworkInfo.DetailedState.CONNECTED) {
                while (i2 < this.f44785a.size()) {
                    this.f44785a.get(i2).handleConnectChange();
                    i2++;
                }
            }
        }
    }
}
