package com.heepay.plugin.c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.net.Proxy;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static f f16778a;

    /* renamed from: b  reason: collision with root package name */
    private Proxy f16779b = null;

    private f() {
        b();
    }

    public static synchronized f a() {
        f fVar;
        synchronized (f.class) {
            if (f16778a == null) {
                f16778a = new f();
            }
            fVar = f16778a;
        }
        return fVar;
    }

    private void b() {
        HttpsURLConnection.setDefaultHostnameVerifier(new HostnameVerifier() { // from class: com.heepay.plugin.c.f.1
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                return true;
            }
        });
    }

    public boolean a(Context context) {
        NetworkInfo[] allNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        }
        return false;
    }
}
