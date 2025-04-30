package com.switfpass.pay.utils;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* loaded from: classes4.dex */
final class a1 extends SSLSocketFactory {

    /* renamed from: a  reason: collision with root package name */
    private SSLContext f58939a;

    public a1(KeyStore keyStore) {
        super(keyStore);
        this.f58939a = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
        this.f58939a.init(null, new TrustManager[]{new b1()}, null);
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public final Socket createSocket() {
        return this.f58939a.getSocketFactory().createSocket();
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public final Socket createSocket(Socket socket, String str, int i2, boolean z3) {
        return this.f58939a.getSocketFactory().createSocket(socket, str, i2, z3);
    }
}
