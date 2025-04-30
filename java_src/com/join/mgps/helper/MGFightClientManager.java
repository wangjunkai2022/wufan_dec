package com.join.mgps.helper;

import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.join.android.app.common.utils.f;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.Util.d2;
import com.join.mgps.activity.ApFightActivity;
import com.join.mgps.aidl.MGWifiClientThread;
import com.join.mgps.broadcast.WifiapBroadcast;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class MGFightClientManager implements WifiapBroadcast.a {
    private d enterRoomProcess;
    private long enteringStartTime;
    private l1.c fightConnectListener;
    private Context mContext;
    private String mGameName;
    private WifiUtils mWifiUtils;
    WifiapBroadcast mWifiapBroadcast;
    List<ScanResult> scanResults;
    private String specifiedSSID;
    private MGWifiClientThread wifiClientThread;
    private String TAG = getClass().getSimpleName();
    private e mSearchApProcess = new e();
    private ArrayList<String> mWifiApList = new ArrayList<>(0);
    private Map<String, String> mWifiApHistoryList = new HashMap(0);
    private boolean isEnteringRoom = false;
    private boolean isConnected = false;
    private boolean running = false;
    boolean isConnecting = false;
    public Handler handler = new a();
    boolean processingScan = false;
    long lasConnectToHostspot = 0;
    long lasScanTime = 0;

    /* loaded from: classes4.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 0) {
                MGFightClientManager.this.mSearchApProcess.b();
                MGFightClientManager.this.fightConnectListener.c();
                MGFightClientManager.this.unregisterReceiver();
            } else if (i2 == 1) {
                if (!MGFightClientManager.this.running || MGFightClientManager.this.isConnected || MGFightClientManager.this.isEnteringRoom || d2.h(MGFightClientManager.this.mGameName)) {
                    String unused = MGFightClientManager.this.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("interrupt ApScan.running=");
                    sb.append(MGFightClientManager.this.running);
                    sb.append(";isConnected=");
                    sb.append(MGFightClientManager.this.isConnected);
                    sb.append(";isEnteringRoom=");
                    sb.append(MGFightClientManager.this.isEnteringRoom);
                    sb.append(";mGameName=");
                    sb.append(MGFightClientManager.this.mGameName);
                    return;
                }
                MGFightClientManager.this.afterApScan();
            } else if (i2 != 2) {
                if (i2 == 9005) {
                    MGFightClientManager.this.fightConnectListener.i();
                    MGFightClientManager.this.unregisterReceiver();
                } else if (i2 == 9009) {
                    MGFightClientManager.this.fightConnectListener.g();
                    MGFightClientManager.this.running = false;
                    MGFightClientManager.this.unregisterReceiver();
                } else if (i2 != 20000) {
                    switch (i2) {
                        case 9001:
                            if (MGFightClientManager.this.enterRoomProcess != null) {
                                MGFightClientManager.this.enterRoomProcess.a();
                            }
                            MGFightClientManager.this.isConnected = true;
                            String ssid = MGFightClientManager.this.mWifiUtils.getSSID(MGFightClientManager.this.mContext);
                            String unused2 = MGFightClientManager.this.TAG;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("store ssid in history:");
                            sb2.append(ssid);
                            MGFightClientManager.this.mWifiApHistoryList.put(ssid, ssid);
                            MGFightClientManager.this.fightConnectListener.k(message.obj.toString());
                            MGFightClientManager.this.unregisterReceiver();
                            return;
                        case 9002:
                            MGFightClientManager.this.fightConnectListener.b();
                            MGFightClientManager.this.isEnteringRoom = false;
                            MGFightClientManager.this.mSearchApProcess.b();
                            MGFightClientManager.this.running = false;
                            MGFightClientManager.this.unregisterReceiver();
                            return;
                        case 9003:
                            MGFightClientManager.this.isEnteringRoom = false;
                            MGFightClientManager.this.mSearchApProcess.b();
                            MGFightClientManager.this.fightConnectListener.d();
                            MGFightClientManager.this.running = false;
                            MGFightClientManager.this.unregisterReceiver();
                            return;
                        default:
                            return;
                    }
                } else {
                    String unused3 = MGFightClientManager.this.TAG;
                    if (MGFightClientManager.this.isEnteringRoom) {
                        MGFightClientManager.this.fightConnectListener.f();
                    }
                    MGFightClientManager.this.unregisterReceiver();
                }
            } else {
                String ssid2 = MGFightClientManager.this.mWifiUtils.getSSID(MGFightClientManager.this.mContext);
                String unused4 = MGFightClientManager.this.TAG;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("连接网络成功:");
                sb3.append(ssid2);
                sb3.append(";mGameName=");
                sb3.append(MGFightClientManager.this.mGameName);
                if (d2.h(MGFightClientManager.this.mGameName)) {
                    return;
                }
                if (ssid2.contains(MGFightClientManager.this.mGameName)) {
                    if (MGFightClientManager.this.wifiClientThread == null || MGFightClientManager.this.wifiClientThread.getSsid().equals(ssid2)) {
                        if (MGFightClientManager.this.wifiClientThread != null) {
                            String unused5 = MGFightClientManager.this.TAG;
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("wifiClientThread is not null [");
                            sb4.append(MGFightClientManager.this.wifiClientThread.getSsid());
                            sb4.append("],so return.");
                            return;
                        }
                    } else {
                        String unused6 = MGFightClientManager.this.TAG;
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("wifiClientThread is not null.but ssid is different so destory.new=");
                        sb5.append(ssid2);
                        sb5.append(";old=");
                        sb5.append(MGFightClientManager.this.wifiClientThread.getSsid());
                        MGFightClientManager.this.wifiClientThread.destroy();
                        MGFightClientManager.this.wifiClientThread = null;
                    }
                    try {
                        String unused7 = MGFightClientManager.this.TAG;
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("开始连接服务器...wifiClientThread=");
                        sb6.append(MGFightClientManager.this.wifiClientThread);
                        MGFightClientManager mGFightClientManager = MGFightClientManager.this;
                        Context context = mGFightClientManager.mContext;
                        MGFightClientManager mGFightClientManager2 = MGFightClientManager.this;
                        mGFightClientManager.wifiClientThread = new MGWifiClientThread(context, mGFightClientManager2.handler, mGFightClientManager2.mWifiUtils.getSSID(MGFightClientManager.this.mContext));
                        MGFightClientManager.this.wifiClientThread.run();
                        MGFightClientManager.this.isConnecting = true;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        MGFightClientManager.this.isConnecting = false;
                    }
                    MGFightClientManager.this.mSearchApProcess.b();
                    return;
                }
                MGFightClientManager mGFightClientManager3 = MGFightClientManager.this;
                mGFightClientManager3.processingScan = false;
                mGFightClientManager3.afterApScan();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends Thread {
        b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            String unused = MGFightClientManager.this.TAG;
            MGFightClientManager.this.mWifiUtils.connectToHotspot((String) MGFightClientManager.this.mWifiApList.get(0), com.join.mgps.data.c.f47302q);
            MGFightClientManager.this.lasConnectToHostspot = System.currentTimeMillis();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50853a;

        c(String str) {
            this.f50853a = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            String unused = MGFightClientManager.this.TAG;
            MGFightClientManager.this.mWifiUtils.connectToHotspot(this.f50853a, com.join.mgps.data.c.f47302q);
        }
    }

    /* loaded from: classes4.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private boolean f50855a = true;

        public d() {
        }

        public void a() {
            this.f50855a = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (this.f50855a) {
                if (System.currentTimeMillis() - MGFightClientManager.this.enteringStartTime >= 20000) {
                    MGFightClientManager.this.handler.sendMessage(MGFightClientManager.this.handler.obtainMessage(20000));
                    return;
                }
                try {
                    Thread.sleep(100L);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public boolean f50857a = false;

        /* renamed from: b  reason: collision with root package name */
        private long f50858b = 0;

        /* renamed from: c  reason: collision with root package name */
        private Thread f50859c = null;

        e() {
        }

        public void a() {
            this.f50859c = new Thread(this);
            this.f50857a = true;
            this.f50858b = System.currentTimeMillis();
            this.f50859c.start();
        }

        public void b() {
            this.f50857a = false;
            this.f50859c = null;
            this.f50858b = 0L;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (this.f50857a) {
                if (System.currentTimeMillis() - this.f50858b >= com.join.mgps.data.c.f47286a) {
                    MGFightClientManager.this.handler.sendMessage(MGFightClientManager.this.handler.obtainMessage(0));
                }
                try {
                    Thread.sleep(200L);
                } catch (Exception unused) {
                }
            }
        }
    }

    public MGFightClientManager(Context context, l1.c cVar) {
        this.fightConnectListener = cVar;
        this.mContext = context;
        this.mWifiUtils = WifiUtils.getInstance(context);
        initBroadcast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void afterApScan() {
        boolean z3;
        if (this.mWifiUtils.isConnectToHotSpotRunning || this.processingScan || TextUtils.isEmpty(this.mGameName)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("afterApScan() called.processingScan=");
        sb.append(this.processingScan);
        sb.append(";step=");
        sb.append(ApFightActivity.step);
        String ssid = this.mWifiUtils.getSSID(this.mContext);
        List<ScanResult> list = this.scanResults;
        if (list != null && list.size() > 0) {
            for (ScanResult scanResult : this.scanResults) {
                if (scanResult.BSSID.equals(ssid)) {
                    z3 = true;
                    break;
                }
            }
        }
        z3 = false;
        if (Build.VERSION.SDK_INT >= 26) {
            z3 = true;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("current ssid =");
        sb2.append(ssid);
        if (ssid != null && ssid.contains(this.mGameName) && z3) {
            this.fightConnectListener.e(ssid);
            startMonitorEnteringRoom();
            this.handler.sendMessage(this.handler.obtainMessage(2));
            return;
        }
        List<ScanResult> list2 = this.scanResults;
        if (list2 == null || list2.size() == 0) {
            return;
        }
        int size = this.scanResults.size();
        if (size > 0) {
            this.mWifiApList.clear();
            for (int i2 = 0; i2 < size; i2++) {
                ScanResult scanResult2 = this.scanResults.get(i2);
                String str = scanResult2.SSID;
                int signalStrength = this.mWifiUtils.getSignalStrength();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("apSSID=");
                sb3.append(str);
                sb3.append(";BSSID=");
                sb3.append(scanResult2.BSSID);
                sb3.append(";capabilities=");
                sb3.append(scanResult2.capabilities);
                sb3.append(";frequency=");
                sb3.append(scanResult2.frequency);
                sb3.append(";level=");
                sb3.append(scanResult2.level);
                sb3.append(";signal=");
                sb3.append(signalStrength);
                if (str != null && str.contains(this.mGameName) && !this.mWifiApHistoryList.containsKey(str)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("连接网络成功=apSSID=");
                    sb4.append(str);
                    sb4.append(";BSSID=");
                    sb4.append(scanResult2.BSSID);
                    sb4.append(";capabilities=");
                    sb4.append(scanResult2.capabilities);
                    sb4.append(";frequency=");
                    sb4.append(scanResult2.frequency);
                    sb4.append(";level=");
                    sb4.append(signalStrength);
                    this.mWifiApList.add(str);
                }
            }
            if (this.mWifiApList.size() > 1) {
                this.mSearchApProcess.b();
                this.isEnteringRoom = true;
                this.fightConnectListener.h(this.mWifiApList);
            } else if (this.mWifiApList.size() == 1 && !this.isEnteringRoom) {
                this.isEnteringRoom = true;
                if (this.mWifiApList.get(0).contains(this.mGameName)) {
                    this.fightConnectListener.e(this.mWifiApList.get(0));
                    startMonitorEnteringRoom();
                    if (System.currentTimeMillis() - this.lasConnectToHostspot > 5000) {
                        new b().start();
                    }
                }
            } else if (System.currentTimeMillis() - this.lasScanTime > 5000) {
                this.mWifiUtils.startScan(this.mContext);
                this.processingScan = true;
                this.lasScanTime = System.currentTimeMillis();
            }
        }
        this.processingScan = false;
    }

    private void searchAP() {
        try {
            registerBroadcast();
        } catch (Exception unused) {
        }
        this.isEnteringRoom = false;
        this.running = true;
        this.isConnected = false;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 26 && !f.k(this.mContext)) {
            this.mWifiUtils.OpenWifi();
        }
        if (i2 < 26) {
            e eVar = this.mSearchApProcess;
            if (!eVar.f50857a) {
                if (!this.mWifiUtils.mWifiManager.isWifiEnabled()) {
                    this.mWifiUtils.OpenWifi();
                }
            } else {
                eVar.b();
            }
            this.mSearchApProcess.a();
        }
        afterApScan();
    }

    private void startMonitorEnteringRoom() {
        d dVar = this.enterRoomProcess;
        if (dVar != null) {
            dVar.a();
        }
        this.isEnteringRoom = true;
        this.enteringStartTime = System.currentTimeMillis();
        this.mSearchApProcess.b();
        this.enterRoomProcess = new d();
        new Thread(this.enterRoomProcess).start();
    }

    public void connect() {
        this.isConnecting = false;
        this.running = true;
        this.isConnected = false;
        searchAP();
    }

    public void connectToChosen() {
        this.isConnected = false;
        this.isEnteringRoom = false;
        this.running = false;
        if (this.mSearchApProcess == null) {
            this.mSearchApProcess = new e();
        }
        this.mSearchApProcess.a();
        try {
            Context context = this.mContext;
            MGWifiClientThread mGWifiClientThread = new MGWifiClientThread(context, this.handler, this.mWifiUtils.getSSID(context));
            this.wifiClientThread = mGWifiClientThread;
            mGWifiClientThread.run();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void disConnect() {
        MGWifiClientThread mGWifiClientThread = this.wifiClientThread;
        if (mGWifiClientThread != null) {
            mGWifiClientThread.disConnect();
        }
    }

    public WifiapBroadcast getmWifiapBroadcast() {
        return this.mWifiapBroadcast;
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void handleConnectChange() {
        this.handler.sendMessage(this.handler.obtainMessage(2));
    }

    public void initBroadcast() {
        WifiapBroadcast wifiapBroadcast = new WifiapBroadcast();
        this.mWifiapBroadcast = wifiapBroadcast;
        wifiapBroadcast.a(this);
    }

    public void registerBroadcast() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.STATE_CHANGE");
            intentFilter.setPriority(Integer.MAX_VALUE);
            this.mContext.registerReceiver(this.mWifiapBroadcast, intentFilter);
        } catch (Exception unused) {
        }
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void scanResultsAvailable() {
        this.processingScan = false;
        this.scanResults = this.mWifiUtils.mWifiManager.getScanResults();
        this.handler.sendMessage(this.handler.obtainMessage(1));
    }

    public void setGameName(String str) {
        this.mGameName = str;
    }

    public void unregisterReceiver() {
        try {
            this.mContext.unregisterReceiver(this.mWifiapBroadcast);
        } catch (Exception unused) {
        }
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void wifiStatusNotification() {
        this.scanResults = this.mWifiUtils.mWifiManager.getScanResults();
        this.handler.sendMessage(this.handler.obtainMessage(1));
        this.mWifiUtils.startScan(this.mContext);
        this.processingScan = true;
    }

    public void connect(String str) {
        registerBroadcast();
        this.isConnecting = false;
        this.running = true;
        this.isConnected = false;
        searchAP(str);
    }

    public void connectToChosen(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("connect to specifiedSSID ::");
        sb.append(str);
        if (str == null) {
            return;
        }
        if (this.mSearchApProcess == null) {
            this.mSearchApProcess = new e();
        }
        this.mSearchApProcess.a();
        this.specifiedSSID = str;
        this.isEnteringRoom = true;
        this.isConnected = false;
        this.mWifiUtils.addNetwork(this.mContext, this.mWifiUtils.createWifiInfo(str, com.join.mgps.data.c.f47302q, 3, "wt"));
    }

    private void searchAP(String str) {
        this.isEnteringRoom = false;
        this.running = true;
        this.isConnected = false;
        if (!f.k(this.mContext)) {
            this.mWifiUtils.OpenWifi();
        }
        e eVar = this.mSearchApProcess;
        if (!eVar.f50857a) {
            if (!this.mWifiUtils.mWifiManager.isWifiEnabled()) {
                this.mWifiUtils.OpenWifi();
            }
        } else {
            eVar.b();
        }
        afterApScan(str);
        this.mSearchApProcess.a();
    }

    private void afterApScan(String str) {
        boolean z3;
        if (this.processingScan) {
            return;
        }
        List<ScanResult> list = this.scanResults;
        if (list != null && list.size() > 0) {
            for (ScanResult scanResult : this.scanResults) {
                if (scanResult.SSID.equals(str)) {
                    z3 = true;
                    break;
                }
            }
        }
        z3 = false;
        if (!z3) {
            this.mWifiUtils.startScan(this.mContext);
            return;
        }
        this.processingScan = true;
        this.fightConnectListener.e(str);
        startMonitorEnteringRoom();
        new c(str).start();
        this.processingScan = false;
    }
}
