package com.join.mgps.Util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: ApWifiUtil.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: h  reason: collision with root package name */
    private static final String f27538h = "f";

    /* renamed from: i  reason: collision with root package name */
    private static f f27539i = null;

    /* renamed from: j  reason: collision with root package name */
    public static int f27540j = 10;

    /* renamed from: k  reason: collision with root package name */
    public static int f27541k = 11;

    /* renamed from: l  reason: collision with root package name */
    public static int f27542l = 12;

    /* renamed from: m  reason: collision with root package name */
    public static int f27543m = 13;

    /* renamed from: n  reason: collision with root package name */
    public static int f27544n = 14;

    /* renamed from: a  reason: collision with root package name */
    Context f27545a;

    /* renamed from: b  reason: collision with root package name */
    WifiManager f27546b;

    /* renamed from: c  reason: collision with root package name */
    ConnectivityManager f27547c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f27548d = new Handler();

    /* renamed from: e  reason: collision with root package name */
    private WifiManager.LocalOnlyHotspotReservation f27549e;

    /* renamed from: f  reason: collision with root package name */
    private String f27550f;

    /* renamed from: g  reason: collision with root package name */
    private String f27551g;

    /* compiled from: ApWifiUtil.java */
    /* loaded from: classes3.dex */
    class a extends WifiManager.LocalOnlyHotspotCallback {
        a() {
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        public void onFailed(int i2) {
            super.onFailed(i2);
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        public void onStarted(WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation) {
            super.onStarted(localOnlyHotspotReservation);
            f.this.f27549e = localOnlyHotspotReservation;
            WifiConfiguration wifiConfiguration = localOnlyHotspotReservation.getWifiConfiguration();
            f.this.f27550f = wifiConfiguration.SSID;
            f.this.f27551g = wifiConfiguration.preSharedKey;
            f.this.f27548d.obtainMessage(2018, wifiConfiguration).sendToTarget();
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        public void onStopped() {
            super.onStopped();
        }
    }

    public f(Context context) {
        this.f27545a = context;
        this.f27546b = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        this.f27547c = (ConnectivityManager) this.f27545a.getSystemService("connectivity");
    }

    public static f i(Context context) {
        if (f27539i == null) {
            synchronized (f.class) {
                if (f27539i == null) {
                    f27539i = new f(context);
                }
            }
        }
        return f27539i;
    }

    public static boolean m(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            Method declaredMethod = wifiManager.getClass().getDeclaredMethod("isWifiApEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(wifiManager, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0090, code lost:
        r9 = new java.lang.StringBuilder();
        r9.append(r5.SSID);
        r9.append(" ");
        r9.append(r2.preSharedKey);
        r9.append(":::::添加的Id:::");
        r9.append(r10);
        r8.f27546b.disconnect();
        r8.f27546b.enableNetwork(r5.networkId, true);
        r8.f27546b.reconnect();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r9, java.lang.String r10) {
        /*
            r8 = this;
            java.lang.String r0 = "\""
            r1 = 0
            android.net.wifi.WifiConfiguration r2 = new android.net.wifi.WifiConfiguration     // Catch: java.lang.Exception -> Lbe
            r2.<init>()     // Catch: java.lang.Exception -> Lbe
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lbe
            r3.<init>()     // Catch: java.lang.Exception -> Lbe
            r3.append(r0)     // Catch: java.lang.Exception -> Lbe
            r3.append(r9)     // Catch: java.lang.Exception -> Lbe
            r3.append(r0)     // Catch: java.lang.Exception -> Lbe
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> Lbe
            r2.SSID = r3     // Catch: java.lang.Exception -> Lbe
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lbe
            r3.<init>()     // Catch: java.lang.Exception -> Lbe
            r3.append(r0)     // Catch: java.lang.Exception -> Lbe
            r3.append(r10)     // Catch: java.lang.Exception -> Lbe
            r3.append(r0)     // Catch: java.lang.Exception -> Lbe
            java.lang.String r10 = r3.toString()     // Catch: java.lang.Exception -> Lbe
            r2.preSharedKey = r10     // Catch: java.lang.Exception -> Lbe
            r10 = 2
            r2.status = r10     // Catch: java.lang.Exception -> Lbe
            java.util.BitSet r3 = r2.allowedProtocols     // Catch: java.lang.Exception -> Lbe
            r4 = 1
            r3.set(r4)     // Catch: java.lang.Exception -> Lbe
            java.util.BitSet r3 = r2.allowedProtocols     // Catch: java.lang.Exception -> Lbe
            r3.set(r1)     // Catch: java.lang.Exception -> Lbe
            java.util.BitSet r3 = r2.allowedGroupCiphers     // Catch: java.lang.Exception -> Lbe
            r3.set(r10)     // Catch: java.lang.Exception -> Lbe
            java.util.BitSet r3 = r2.allowedGroupCiphers     // Catch: java.lang.Exception -> Lbe
            r5 = 3
            r3.set(r5)     // Catch: java.lang.Exception -> Lbe
            java.util.BitSet r3 = r2.allowedKeyManagement     // Catch: java.lang.Exception -> Lbe
            r3.set(r4)     // Catch: java.lang.Exception -> Lbe
            java.util.BitSet r3 = r2.allowedPairwiseCiphers     // Catch: java.lang.Exception -> Lbe
            r3.set(r4)     // Catch: java.lang.Exception -> Lbe
            java.util.BitSet r3 = r2.allowedPairwiseCiphers     // Catch: java.lang.Exception -> Lbe
            r3.set(r10)     // Catch: java.lang.Exception -> Lbe
            android.net.wifi.WifiManager r10 = r8.f27546b     // Catch: java.lang.Exception -> Lbe
            int r10 = r10.addNetwork(r2)     // Catch: java.lang.Exception -> Lbe
            android.net.wifi.WifiManager r3 = r8.f27546b     // Catch: java.lang.Exception -> Lbe
            java.util.List r3 = r3.getConfiguredNetworks()     // Catch: java.lang.Exception -> Lbe
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Exception -> Lbe
        L68:
            boolean r5 = r3.hasNext()     // Catch: java.lang.Exception -> Lbe
            if (r5 == 0) goto Lbd
            java.lang.Object r5 = r3.next()     // Catch: java.lang.Exception -> Lbe
            android.net.wifi.WifiConfiguration r5 = (android.net.wifi.WifiConfiguration) r5     // Catch: java.lang.Exception -> Lbe
            java.lang.String r6 = r5.SSID     // Catch: java.lang.Exception -> Lbe
            if (r6 == 0) goto L68
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lbe
            r7.<init>()     // Catch: java.lang.Exception -> Lbe
            r7.append(r0)     // Catch: java.lang.Exception -> Lbe
            r7.append(r9)     // Catch: java.lang.Exception -> Lbe
            r7.append(r0)     // Catch: java.lang.Exception -> Lbe
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Exception -> Lbe
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Exception -> Lbe
            if (r6 == 0) goto L68
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lbe
            r9.<init>()     // Catch: java.lang.Exception -> Lbe
            java.lang.String r0 = r5.SSID     // Catch: java.lang.Exception -> Lbe
            r9.append(r0)     // Catch: java.lang.Exception -> Lbe
            java.lang.String r0 = " "
            r9.append(r0)     // Catch: java.lang.Exception -> Lbe
            java.lang.String r0 = r2.preSharedKey     // Catch: java.lang.Exception -> Lbe
            r9.append(r0)     // Catch: java.lang.Exception -> Lbe
            java.lang.String r0 = ":::::添加的Id:::"
            r9.append(r0)     // Catch: java.lang.Exception -> Lbe
            r9.append(r10)     // Catch: java.lang.Exception -> Lbe
            android.net.wifi.WifiManager r9 = r8.f27546b     // Catch: java.lang.Exception -> Lbe
            r9.disconnect()     // Catch: java.lang.Exception -> Lbe
            android.net.wifi.WifiManager r9 = r8.f27546b     // Catch: java.lang.Exception -> Lbe
            int r10 = r5.networkId     // Catch: java.lang.Exception -> Lbe
            r9.enableNetwork(r10, r4)     // Catch: java.lang.Exception -> Lbe
            android.net.wifi.WifiManager r9 = r8.f27546b     // Catch: java.lang.Exception -> Lbe
            r9.reconnect()     // Catch: java.lang.Exception -> Lbe
        Lbd:
            return r4
        Lbe:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.f.a(java.lang.String, java.lang.String):boolean");
    }

    public void f() {
        if (Build.VERSION.SDK_INT >= 26) {
            WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation = this.f27549e;
            if (localOnlyHotspotReservation != null) {
                localOnlyHotspotReservation.close();
            }
        } else if (l() != f27541k) {
            try {
                Method method = this.f27546b.getClass().getMethod("getWifiApConfiguration", new Class[0]);
                method.setAccessible(true);
                this.f27546b.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE).invoke(this.f27546b, (WifiConfiguration) method.invoke(this.f27546b, new Object[0]), Boolean.FALSE);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (IllegalArgumentException e5) {
                e5.printStackTrace();
            } catch (NoSuchMethodException e6) {
                e6.printStackTrace();
            } catch (InvocationTargetException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void g(String str, String str2) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                this.f27546b.startLocalOnlyHotspot(new a(), this.f27548d);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        try {
            WifiConfiguration wifiConfiguration = new WifiConfiguration();
            wifiConfiguration.SSID = str;
            wifiConfiguration.preSharedKey = str2;
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedProtocols.set(1);
            wifiConfiguration.allowedProtocols.set(0);
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(2);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedGroupCiphers.set(2);
            this.f27546b.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE).invoke(this.f27546b, wifiConfiguration, Boolean.TRUE);
            this.f27550f = str;
            this.f27551g = str2;
        } catch (IllegalAccessException e5) {
            e5.printStackTrace();
        } catch (IllegalArgumentException e6) {
            e6.printStackTrace();
        } catch (NoSuchMethodException e7) {
            e7.printStackTrace();
        } catch (SecurityException e8) {
            e8.printStackTrace();
        } catch (InvocationTargetException e9) {
            e9.printStackTrace();
        }
    }

    public void h() {
        NetworkInfo activeNetworkInfo = this.f27547c.getActiveNetworkInfo();
        WifiInfo connectionInfo = this.f27546b.getConnectionInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return;
        }
        this.f27546b.disableNetwork(connectionInfo.getNetworkId());
        this.f27546b.saveConfiguration();
    }

    public String j() {
        return this.f27551g;
    }

    public String k() {
        return this.f27550f;
    }

    public int l() {
        try {
            return ((Integer) this.f27546b.getClass().getMethod("getWifiApState", new Class[0]).invoke(this.f27546b, new Object[0])).intValue();
        } catch (Exception e4) {
            e4.getMessage();
            return -1;
        }
    }

    public boolean n() {
        return m(this.f27545a);
    }
}
