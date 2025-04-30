package org.apache.http.conn.ssl;

import android.annotation.TargetApi;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.security.auth.x500.X500Principal;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;
@ThreadSafe
/* loaded from: classes5.dex */
public class SSLConnectionSocketFactory implements LayeredConnectionSocketFactory {
    public static final String SSL = "SSL";
    public static final String SSLV2 = "SSLv2";
    private static final String TAG = "HttpClient";
    public static final String TLS = "TLS";
    private final X509HostnameVerifier hostnameVerifier;
    private final javax.net.ssl.SSLSocketFactory socketfactory;
    private final String[] supportedCipherSuites;
    private final String[] supportedProtocols;
    public static final X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER = new AllowAllHostnameVerifierHC4();
    public static final X509HostnameVerifier BROWSER_COMPATIBLE_HOSTNAME_VERIFIER = new BrowserCompatHostnameVerifierHC4();
    public static final X509HostnameVerifier STRICT_HOSTNAME_VERIFIER = new StrictHostnameVerifierHC4();

    public SSLConnectionSocketFactory(SSLContext sSLContext) {
        this(sSLContext, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public static SSLConnectionSocketFactory getSocketFactory() throws SSLInitializationException {
        return new SSLConnectionSocketFactory((javax.net.ssl.SSLSocketFactory) javax.net.ssl.SSLSocketFactory.getDefault(), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public static SSLConnectionSocketFactory getSystemSocketFactory() throws SSLInitializationException {
        return new SSLConnectionSocketFactory((javax.net.ssl.SSLSocketFactory) javax.net.ssl.SSLSocketFactory.getDefault(), split(System.getProperty("https.protocols")), split(System.getProperty("https.cipherSuites")), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    private static String[] split(String str) {
        if (TextUtils.isBlank(str)) {
            return null;
        }
        return str.split(" *, *");
    }

    private void verifyHostname(SSLSocket sSLSocket, String str) throws IOException {
        try {
            if (Log.isLoggable(TAG, 3)) {
                try {
                    SSLSession session = sSLSocket.getSession();
                    StringBuilder sb = new StringBuilder();
                    sb.append(" negotiated protocol: ");
                    sb.append(session.getProtocol());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(" negotiated cipher suite: ");
                    sb2.append(session.getCipherSuite());
                    X509Certificate x509Certificate = (X509Certificate) session.getPeerCertificates()[0];
                    X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(" peer principal: ");
                    sb3.append(subjectX500Principal.toString());
                    Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
                    if (subjectAlternativeNames != null) {
                        ArrayList arrayList = new ArrayList();
                        for (List<?> list : subjectAlternativeNames) {
                            if (!list.isEmpty()) {
                                arrayList.add((String) list.get(1));
                            }
                        }
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(" peer alternative names: ");
                        sb4.append(arrayList);
                    }
                    X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(" issuer principal: ");
                    sb5.append(issuerX500Principal.toString());
                    Collection<List<?>> issuerAlternativeNames = x509Certificate.getIssuerAlternativeNames();
                    if (issuerAlternativeNames != null) {
                        ArrayList arrayList2 = new ArrayList();
                        for (List<?> list2 : issuerAlternativeNames) {
                            if (!list2.isEmpty()) {
                                arrayList2.add((String) list2.get(1));
                            }
                        }
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(" issuer alternative names: ");
                        sb6.append(arrayList2);
                    }
                } catch (Exception unused) {
                }
            }
            this.hostnameVerifier.verify(str, sSLSocket);
        } catch (IOException e4) {
            try {
                sSLSocket.close();
            } catch (Exception unused2) {
            }
            throw e4;
        }
    }

    @Override // org.apache.http.conn.socket.ConnectionSocketFactory
    public Socket connectSocket(int i2, Socket socket, HttpHost httpHost, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, HttpContext httpContext) throws IOException {
        Args.notNull(httpHost, "HTTP host");
        Args.notNull(inetSocketAddress, "Remote address");
        if (socket == null) {
            socket = createSocket(httpContext);
        }
        if (inetSocketAddress2 != null) {
            socket.bind(inetSocketAddress2);
        }
        if (i2 > 0) {
            try {
                if (socket.getSoTimeout() == 0) {
                    socket.setSoTimeout(i2);
                }
            } catch (IOException e4) {
                try {
                    socket.close();
                } catch (IOException unused) {
                }
                throw e4;
            }
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Connecting socket to ");
            sb.append(inetSocketAddress);
            sb.append(" with timeout ");
            sb.append(i2);
        }
        socket.connect(inetSocketAddress, i2);
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            Log.isLoggable(TAG, 3);
            sSLSocket.startHandshake();
            verifyHostname(sSLSocket, httpHost.getHostName());
            return socket;
        }
        return createLayeredSocket(socket, httpHost.getHostName(), inetSocketAddress.getPort(), httpContext);
    }

    @Override // org.apache.http.conn.socket.LayeredConnectionSocketFactory
    @TargetApi(17)
    public Socket createLayeredSocket(Socket socket, String str, int i2, HttpContext httpContext) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.socketfactory.createSocket(socket, str, i2, true);
        String[] strArr = this.supportedProtocols;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        } else {
            String[] enabledProtocols = sSLSocket.getEnabledProtocols();
            ArrayList arrayList = new ArrayList(enabledProtocols.length);
            for (String str2 : enabledProtocols) {
                if (!str2.startsWith(SSL)) {
                    arrayList.add(str2);
                }
            }
            if (!arrayList.isEmpty()) {
                sSLSocket.setEnabledProtocols((String[]) arrayList.toArray(new String[arrayList.size()]));
            }
        }
        String[] strArr2 = this.supportedCipherSuites;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Enabled protocols: ");
            sb.append(Arrays.asList(sSLSocket.getEnabledProtocols()));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Enabled cipher suites:");
            sb2.append(Arrays.asList(sSLSocket.getEnabledCipherSuites()));
        }
        prepareSocket(sSLSocket);
        if (Build.VERSION.SDK_INT >= 17) {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Enabling SNI for ");
                sb3.append(str);
            }
            try {
                sSLSocket.getClass().getMethod("setHostname", String.class).invoke(sSLSocket, str);
            } catch (Exception unused) {
                Log.isLoggable(TAG, 3);
            }
        }
        Log.isLoggable(TAG, 3);
        sSLSocket.startHandshake();
        verifyHostname(sSLSocket, str);
        return sSLSocket;
    }

    @Override // org.apache.http.conn.socket.ConnectionSocketFactory
    public Socket createSocket(HttpContext httpContext) throws IOException {
        return SocketFactory.getDefault().createSocket();
    }

    X509HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    protected void prepareSocket(SSLSocket sSLSocket) throws IOException {
    }

    public SSLConnectionSocketFactory(SSLContext sSLContext, X509HostnameVerifier x509HostnameVerifier) {
        this(((SSLContext) Args.notNull(sSLContext, "SSL context")).getSocketFactory(), (String[]) null, (String[]) null, x509HostnameVerifier);
    }

    public SSLConnectionSocketFactory(SSLContext sSLContext, String[] strArr, String[] strArr2, X509HostnameVerifier x509HostnameVerifier) {
        this(((SSLContext) Args.notNull(sSLContext, "SSL context")).getSocketFactory(), strArr, strArr2, x509HostnameVerifier);
    }

    public SSLConnectionSocketFactory(javax.net.ssl.SSLSocketFactory sSLSocketFactory, X509HostnameVerifier x509HostnameVerifier) {
        this(sSLSocketFactory, (String[]) null, (String[]) null, x509HostnameVerifier);
    }

    public SSLConnectionSocketFactory(javax.net.ssl.SSLSocketFactory sSLSocketFactory, String[] strArr, String[] strArr2, X509HostnameVerifier x509HostnameVerifier) {
        this.socketfactory = (javax.net.ssl.SSLSocketFactory) Args.notNull(sSLSocketFactory, "SSL socket factory");
        this.supportedProtocols = strArr;
        this.supportedCipherSuites = strArr2;
        this.hostnameVerifier = x509HostnameVerifier == null ? BROWSER_COMPATIBLE_HOSTNAME_VERIFIER : x509HostnameVerifier;
    }
}
