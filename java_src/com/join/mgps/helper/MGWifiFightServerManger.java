package com.join.mgps.helper;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import com.join.android.app.common.utils.f;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.broadcast.WifiapBroadcast;
import com.join.mgps.socket.entity.b;
import l1.c;
/* loaded from: classes4.dex */
public class MGWifiFightServerManger implements WifiapBroadcast.a {
    private c fightConnectListener;
    private Context mContext;
    private WifiUtils mWifiUtils;
    private WifiapBroadcast mWifiapBroadcast;
    private WifiServerThread wifiServerThread;

    /* loaded from: classes4.dex */
    class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f50870a;

        a(c cVar) {
            this.f50870a = cVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 9001) {
                this.f50870a.k(message.obj.toString());
            } else if (i2 != 9002) {
                switch (i2) {
                    case com.join.mgps.data.c.B /* 9007 */:
                        this.f50870a.onSuccess("");
                        return;
                    case com.join.mgps.data.c.C /* 9008 */:
                        this.f50870a.a(com.join.mgps.data.c.C);
                        return;
                    case com.join.mgps.data.c.D /* 9009 */:
                        this.f50870a.g();
                        return;
                    default:
                        return;
                }
            } else {
                this.f50870a.b();
            }
        }
    }

    public MGWifiFightServerManger(Context context, c cVar, String str, String str2) {
        this.mContext = context;
        this.fightConnectListener = cVar;
        this.mWifiUtils = WifiUtils.getInstance(context);
        this.wifiServerThread = new WifiServerThread(context, new a(cVar), str, str2);
        initBroadcast();
    }

    public void disConnect() {
        WifiServerThread wifiServerThread = this.wifiServerThread;
        if (wifiServerThread != null) {
            wifiServerThread.disConnect();
        }
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void handleConnectChange() {
    }

    public void initBroadcast() {
        this.mWifiapBroadcast = new WifiapBroadcast();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.setPriority(Integer.MAX_VALUE);
        try {
            this.mContext.registerReceiver(this.mWifiapBroadcast, intentFilter);
        } catch (Exception unused) {
        }
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void scanResultsAvailable() {
    }

    public void shutDown() {
        WifiServerThread wifiServerThread = this.wifiServerThread;
        if (wifiServerThread != null) {
            wifiServerThread.disConnect();
        }
    }

    public void shutDownServer() {
        WifiServerThread wifiServerThread = this.wifiServerThread;
        if (wifiServerThread != null) {
            wifiServerThread.disConnect();
        }
        this.wifiServerThread.shutDown();
    }

    public void startGame() {
        this.wifiServerThread.startGame();
    }

    public void startServer(String str) {
        String e4 = f.e(this.mContext);
        if (f.k(this.mContext) && !e4.equals(b.f52090j)) {
            this.wifiServerThread.run();
            return;
        }
        this.mWifiUtils.OpenWifi();
        this.fightConnectListener.a(0);
    }

    public void unregisterBroadCast() {
        this.mContext.unregisterReceiver(this.mWifiapBroadcast);
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void wifiStatusNotification() {
    }
}
