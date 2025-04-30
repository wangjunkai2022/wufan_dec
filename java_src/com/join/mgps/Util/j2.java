package com.join.mgps.Util;

import android.os.Build;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
/* compiled from: TrustAllSSLSocketFactory.java */
/* loaded from: classes3.dex */
public class j2 extends SSLSocketFactory {

    /* renamed from: b  reason: collision with root package name */
    private static j2 f27643b;

    /* renamed from: a  reason: collision with root package name */
    private javax.net.ssl.SSLSocketFactory f27644a;

    /* compiled from: TrustAllSSLSocketFactory.java */
    /* loaded from: classes3.dex */
    class a implements X509HostnameVerifier {
        a() {
        }

        @Override // org.apache.http.conn.ssl.X509HostnameVerifier
        public void verify(String str, X509Certificate x509Certificate) throws SSLException {
        }

        @Override // org.apache.http.conn.ssl.X509HostnameVerifier
        public void verify(String str, SSLSocket sSLSocket) throws IOException {
        }

        @Override // org.apache.http.conn.ssl.X509HostnameVerifier
        public void verify(String str, String[] strArr, String[] strArr2) throws SSLException {
        }

        @Override // org.apache.http.conn.ssl.X509HostnameVerifier, javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* compiled from: TrustAllSSLSocketFactory.java */
    /* loaded from: classes3.dex */
    public class b implements X509TrustManager {
        public b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    private j2() throws KeyManagementException, UnrecoverableKeyException, NoSuchAlgorithmException, KeyStoreException {
        super(null);
        SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
        sSLContext.init(null, new TrustManager[]{new b()}, null);
        this.f27644a = sSLContext.getSocketFactory();
        setHostnameVerifier(new a());
    }

    public static SocketFactory a() {
        if (f27643b == null) {
            try {
                f27643b = new j2();
            } catch (KeyManagementException e4) {
                e4.printStackTrace();
            } catch (KeyStoreException e5) {
                e5.printStackTrace();
            } catch (NoSuchAlgorithmException e6) {
                e6.printStackTrace();
            } catch (UnrecoverableKeyException e7) {
                e7.printStackTrace();
            }
        }
        return f27643b;
    }

    private void b(Socket socket, String str) {
        try {
            Field declaredField = InetAddress.class.getDeclaredField("hostName");
            declaredField.setAccessible(true);
            declaredField.set(socket.getInetAddress(), str);
        } catch (Exception unused) {
        }
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() throws IOException {
        return this.f27644a.createSocket();
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i2, boolean z3) throws IOException {
        if (Build.VERSION.SDK_INT < 11) {
            b(socket, str);
        }
        return this.f27644a.createSocket(socket, str, i2, z3);
    }
}
