package com.join.mgps.Util;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.util.List;
/* compiled from: WifiMgr.java */
/* loaded from: classes3.dex */
public class r2 {

    /* renamed from: f  reason: collision with root package name */
    public static final int f27806f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f27807g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f27808h = 3;

    /* renamed from: i  reason: collision with root package name */
    public static final int f27809i = 4;

    /* renamed from: j  reason: collision with root package name */
    private static r2 f27810j;

    /* renamed from: a  reason: collision with root package name */
    private Context f27811a;

    /* renamed from: b  reason: collision with root package name */
    private WifiManager f27812b;

    /* renamed from: c  reason: collision with root package name */
    List<ScanResult> f27813c;

    /* renamed from: d  reason: collision with root package name */
    List<WifiConfiguration> f27814d;

    /* renamed from: e  reason: collision with root package name */
    WifiInfo f27815e;

    private r2(Context context) {
        this.f27811a = context;
        this.f27812b = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
    }

    public static WifiConfiguration c(String str, String str2, int i2) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.allowedAuthAlgorithms.clear();
        wifiConfiguration.allowedGroupCiphers.clear();
        wifiConfiguration.allowedKeyManagement.clear();
        wifiConfiguration.allowedPairwiseCiphers.clear();
        wifiConfiguration.allowedProtocols.clear();
        wifiConfiguration.SSID = m.a.f72569g + str + m.a.f72569g;
        if (i2 == 1) {
            wifiConfiguration.allowedKeyManagement.set(0);
        } else if (i2 == 2) {
            wifiConfiguration.hiddenSSID = true;
            String[] strArr = wifiConfiguration.wepKeys;
            strArr[0] = m.a.f72569g + str2 + m.a.f72569g;
            wifiConfiguration.allowedAuthAlgorithms.set(1);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedGroupCiphers.set(0);
            wifiConfiguration.allowedGroupCiphers.set(1);
            wifiConfiguration.allowedKeyManagement.set(0);
            wifiConfiguration.wepTxKeyIndex = 0;
        } else if (i2 == 3) {
            wifiConfiguration.preSharedKey = m.a.f72569g + str2 + m.a.f72569g;
            wifiConfiguration.hiddenSSID = true;
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedProtocols.set(0);
            wifiConfiguration.status = 2;
        } else if (i2 == 4) {
            wifiConfiguration.preSharedKey = m.a.f72569g + str2 + m.a.f72569g;
            wifiConfiguration.hiddenSSID = true;
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(2);
            wifiConfiguration.allowedProtocols.set(1);
            wifiConfiguration.allowedProtocols.set(0);
            wifiConfiguration.status = 2;
        }
        return wifiConfiguration;
    }

    public static r2 h(Context context) {
        if (f27810j == null) {
            synchronized (r2.class) {
                if (f27810j == null) {
                    f27810j = new r2(context);
                }
            }
        }
        return f27810j;
    }

    public boolean a(WifiConfiguration wifiConfiguration) {
        e();
        return this.f27812b.enableNetwork(this.f27812b.addNetwork(wifiConfiguration), true);
    }

    public void b() {
        if (this.f27812b.isWifiEnabled()) {
            this.f27812b.setWifiEnabled(false);
        }
    }

    public void d() {
        WifiManager wifiManager = this.f27812b;
        if (wifiManager != null) {
            wifiManager.setWifiEnabled(false);
        }
    }

    public boolean e() {
        WifiManager wifiManager = this.f27812b;
        if (wifiManager == null || !wifiManager.isWifiEnabled()) {
            return false;
        }
        this.f27812b.disableNetwork(this.f27812b.getConnectionInfo().getNetworkId());
        return this.f27812b.disconnect();
    }

    public String f() {
        int i2 = this.f27812b.getDhcpInfo().ipAddress;
        return (i2 & 255) + g0.f27568a + ((i2 >> 8) & 255) + g0.f27568a + ((i2 >> 16) & 255) + g0.f27568a + ((i2 >> 24) & 255);
    }

    public String g() {
        int i2 = this.f27812b.getDhcpInfo().serverAddress;
        return (i2 & 255) + g0.f27568a + ((i2 >> 8) & 255) + g0.f27568a + ((i2 >> 16) & 255) + g0.f27568a + ((i2 >> 24) & 255);
    }

    public String i() {
        int i2 = this.f27812b.getDhcpInfo().gateway;
        return (i2 & 255) + g0.f27568a + ((i2 >> 8) & 255) + g0.f27568a + ((i2 >> 16) & 255) + g0.f27568a + ((i2 >> 24) & 255);
    }

    public List<ScanResult> j() {
        return this.f27813c;
    }

    public List<WifiConfiguration> k() {
        return this.f27814d;
    }

    public WifiInfo l() {
        WifiInfo connectionInfo = this.f27812b.getConnectionInfo();
        this.f27815e = connectionInfo;
        return connectionInfo;
    }

    public boolean m() {
        WifiManager wifiManager = this.f27812b;
        if (wifiManager == null) {
            return false;
        }
        return wifiManager.isWifiEnabled();
    }

    public void n() {
        if (this.f27812b.isWifiEnabled()) {
            return;
        }
        this.f27812b.setWifiEnabled(true);
    }

    public void o() {
        this.f27812b.startScan();
        this.f27813c = this.f27812b.getScanResults();
        this.f27814d = this.f27812b.getConfiguredNetworks();
    }
}
