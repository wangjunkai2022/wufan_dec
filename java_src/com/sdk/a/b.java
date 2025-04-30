package com.sdk.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
@SuppressLint({"NewApi"})
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56517a = "com.sdk.a.b";

    /* renamed from: b  reason: collision with root package name */
    public static Boolean f56518b = Boolean.valueOf(com.sdk.f.g.f56647b);

    /* renamed from: c  reason: collision with root package name */
    public static Network f56519c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f56520d;

    /* renamed from: e  reason: collision with root package name */
    public static ConnectivityManager.NetworkCallback f56521e;

    /* renamed from: f  reason: collision with root package name */
    public HttpURLConnection f56522f;

    /* renamed from: g  reason: collision with root package name */
    public ConnectivityManager f56523g;

    public b() {
    }

    public b(Context context, URL url) {
        this.f56523g = (ConnectivityManager) context.getSystemService("connectivity");
        try {
            Network network = f56519c;
            if (network != null && !f56520d) {
                try {
                    this.f56522f = (HttpURLConnection) network.openConnection(url);
                    return;
                } catch (IOException unused) {
                    return;
                }
            }
            f56520d = false;
            a aVar = new a(this, url);
            f56521e = aVar;
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addCapability(12);
            builder.addTransportType(0);
            NetworkRequest build = builder.build();
            ConnectivityManager connectivityManager = this.f56523g;
            if (connectivityManager != null) {
                connectivityManager.requestNetwork(build, aVar);
            }
        } catch (Exception e4) {
            com.sdk.o.b.a(f56517a, e4.toString(), f56518b);
        }
    }

    public HttpURLConnection a() {
        HttpURLConnection httpURLConnection;
        long currentTimeMillis = System.currentTimeMillis();
        do {
            if (System.currentTimeMillis() - currentTimeMillis > 2000) {
                return null;
            }
            httpURLConnection = this.f56522f;
        } while (httpURLConnection == null);
        return httpURLConnection;
    }
}
