package com.switfpass.pay.thread;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* loaded from: classes4.dex */
public class c extends SSLSocketFactory {

    /* renamed from: a  reason: collision with root package name */
    private SSLContext f58910a;

    public c(KeyStore keyStore) {
        super(keyStore);
        this.f58910a = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
        this.f58910a.init(null, new TrustManager[]{new i()}, null);
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() {
        return this.f58910a.getSocketFactory().createSocket();
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i2, boolean z3) {
        return this.f58910a.getSocketFactory().createSocket(socket, str, i2, z3);
    }
}
