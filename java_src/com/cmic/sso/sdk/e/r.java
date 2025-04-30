package com.cmic.sso.sdk.e;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
/* compiled from: WifiNetworkUtils.java */
/* loaded from: classes2.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static r f10943a;

    /* renamed from: b  reason: collision with root package name */
    private ConnectivityManager f10944b;

    /* renamed from: c  reason: collision with root package name */
    private Network f10945c;

    /* renamed from: d  reason: collision with root package name */
    private ConnectivityManager.NetworkCallback f10946d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f10947e;

    /* compiled from: WifiNetworkUtils.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(Network network);
    }

    private r(Context context) {
        try {
            this.f10944b = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void b() {
        ConnectivityManager.NetworkCallback networkCallback;
        ConnectivityManager connectivityManager = this.f10944b;
        if (connectivityManager == null) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT < 21 || (networkCallback = this.f10946d) == null) {
                return;
            }
            connectivityManager.unregisterNetworkCallback(networkCallback);
            this.f10946d = null;
            this.f10945c = null;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public boolean a() {
        return Build.VERSION.SDK_INT >= 21 && this.f10945c != null;
    }

    public static r a(Context context) {
        if (f10943a == null) {
            synchronized (r.class) {
                if (f10943a == null) {
                    f10943a = new r(context);
                }
            }
        }
        return f10943a;
    }

    @TargetApi(21)
    public synchronized void a(final a aVar) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = this.f10944b;
        if (connectivityManager == null) {
            c.a("WifiNetworkUtils", "mConnectivityManager 为空");
            aVar.a(null);
            return;
        }
        Network network = this.f10945c;
        if (network != null && !this.f10947e && (networkInfo = connectivityManager.getNetworkInfo(network)) != null && networkInfo.isAvailable()) {
            aVar.a(this.f10945c);
            return;
        }
        ConnectivityManager.NetworkCallback networkCallback = this.f10946d;
        if (networkCallback != null) {
            try {
                this.f10944b.unregisterNetworkCallback(networkCallback);
            } catch (Exception e4) {
                e4.printStackTrace();
                this.f10946d = null;
            }
        }
        NetworkRequest build = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
        ConnectivityManager.NetworkCallback networkCallback2 = new ConnectivityManager.NetworkCallback() { // from class: com.cmic.sso.sdk.e.r.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network2) {
                try {
                    if (r.this.f10944b.getNetworkCapabilities(network2).hasTransport(0)) {
                        r.this.f10945c = network2;
                        aVar.a(network2);
                        r.this.f10947e = false;
                    } else {
                        c.a("WifiNetworkUtils", "切换失败，未开启数据网络");
                        r.this.f10945c = null;
                        aVar.a(null);
                        r.this.f10944b.unregisterNetworkCallback(r.this.f10946d);
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                    r.this.f10945c = null;
                    aVar.a(null);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network2) {
                r.this.f10947e = true;
            }
        };
        this.f10946d = networkCallback2;
        try {
            this.f10944b.requestNetwork(build, networkCallback2);
        } catch (Exception e5) {
            e5.printStackTrace();
            aVar.a(null);
        }
    }
}
