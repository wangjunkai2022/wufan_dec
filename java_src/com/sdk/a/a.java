package com.sdk.a;

import android.net.ConnectivityManager;
import android.net.Network;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes4.dex */
public class a extends ConnectivityManager.NetworkCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ URL f56515a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ b f56516b;

    public a(b bVar, URL url) {
        this.f56516b = bVar;
        this.f56515a = url;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        b.f56519c = network;
        try {
            this.f56516b.f56522f = (HttpURLConnection) network.openConnection(this.f56515a);
        } catch (IOException unused) {
        }
    }
}
