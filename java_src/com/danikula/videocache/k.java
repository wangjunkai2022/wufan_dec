package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
/* compiled from: HttpUrlSource.java */
/* loaded from: classes2.dex */
public class k implements q {

    /* renamed from: f  reason: collision with root package name */
    private static final int f11133f = 5;

    /* renamed from: a  reason: collision with root package name */
    private final com.danikula.videocache.sourcestorage.c f11134a;

    /* renamed from: b  reason: collision with root package name */
    private final w.b f11135b;

    /* renamed from: c  reason: collision with root package name */
    private r f11136c;

    /* renamed from: d  reason: collision with root package name */
    private HttpURLConnection f11137d;

    /* renamed from: e  reason: collision with root package name */
    private InputStream f11138e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpUrlSource.java */
    /* loaded from: classes2.dex */
    public class a implements HostnameVerifier {
        a() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpUrlSource.java */
    /* loaded from: classes2.dex */
    public class b implements X509TrustManager {
        b() {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpUrlSource.java */
    /* loaded from: classes2.dex */
    public class c implements HostnameVerifier {
        c() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    public k(String str) {
        this(str, com.danikula.videocache.sourcestorage.d.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b() throws com.danikula.videocache.ProxyCacheException {
        /*
            r7 = this;
            r0 = 0
            r2 = 10000(0x2710, float:1.4013E-41)
            r3 = 0
            java.net.HttpURLConnection r0 = r7.g(r0, r2)     // Catch: java.lang.Throwable -> L2f java.io.IOException -> L32
            long r1 = r7.c(r0)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            java.lang.String r4 = r0.getContentType()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            java.io.InputStream r3 = r0.getInputStream()     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            com.danikula.videocache.r r5 = new com.danikula.videocache.r     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            com.danikula.videocache.r r6 = r7.f11136c     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            java.lang.String r6 = r6.f11164a     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            r5.<init>(r6, r1, r4)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            r7.f11136c = r5     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            com.danikula.videocache.sourcestorage.c r1 = r7.f11134a     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            java.lang.String r2 = r5.f11164a     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            r1.a(r2, r5)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2d
            com.danikula.videocache.p.c(r3)
            goto L51
        L2b:
            r1 = move-exception
            goto L55
        L2d:
            r1 = move-exception
            goto L34
        L2f:
            r1 = move-exception
            r0 = r3
            goto L55
        L32:
            r1 = move-exception
            r0 = r3
        L34:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2b
            r2.<init>()     // Catch: java.lang.Throwable -> L2b
            java.lang.String r4 = "Error fetching info from "
            r2.append(r4)     // Catch: java.lang.Throwable -> L2b
            com.danikula.videocache.r r4 = r7.f11136c     // Catch: java.lang.Throwable -> L2b
            java.lang.String r4 = r4.f11164a     // Catch: java.lang.Throwable -> L2b
            r2.append(r4)     // Catch: java.lang.Throwable -> L2b
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L2b
            com.danikula.videocache.h.f(r2, r1)     // Catch: java.lang.Throwable -> L2b
            com.danikula.videocache.p.c(r3)
            if (r0 == 0) goto L54
        L51:
            r0.disconnect()
        L54:
            return
        L55:
            com.danikula.videocache.p.c(r3)
            if (r0 == 0) goto L5d
            r0.disconnect()
        L5d:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.danikula.videocache.k.b():void");
    }

    private long c(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    private void f(HttpURLConnection httpURLConnection, String str) {
        Map<String, String> a4 = this.f11135b.a(str);
        if (a4 == null) {
            return;
        }
        h.e("****** injectCustomHeaders ****** :" + a4.size());
        for (Map.Entry<String, String> entry : a4.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    private HttpURLConnection g(long j4, int i2) throws IOException, ProxyCacheException {
        boolean z3;
        HttpURLConnection httpURLConnection;
        String str = this.f11136c.f11164a;
        int i4 = 0;
        do {
            z3 = true;
            if (str.startsWith("https")) {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new a());
                TrustManager[] trustManagerArr = {new b()};
                try {
                    SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.SSL);
                    sSLContext.init(null, trustManagerArr, new SecureRandom());
                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLContext.getSocketFactory());
                    ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new c());
                } catch (KeyManagementException e4) {
                    e4.printStackTrace();
                } catch (NoSuchAlgorithmException e5) {
                    e5.printStackTrace();
                }
            } else {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            }
            f(httpURLConnection, str);
            if (j4 > 0) {
                httpURLConnection.setRequestProperty("Range", "bytes=" + j4 + "-");
            }
            if (i2 > 0) {
                httpURLConnection.setConnectTimeout(i2);
                httpURLConnection.setReadTimeout(i2);
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 301 && responseCode != 302 && responseCode != 303) {
                z3 = false;
            }
            if (z3) {
                str = httpURLConnection.getHeaderField("Location");
                i4++;
                httpURLConnection.disconnect();
            }
            if (i4 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i4);
            }
        } while (z3);
        return httpURLConnection;
    }

    private long h(HttpURLConnection httpURLConnection, long j4, int i2) throws IOException {
        long c4 = c(httpURLConnection);
        return i2 == 200 ? c4 : i2 == 206 ? c4 + j4 : this.f11136c.f11165b;
    }

    @Override // com.danikula.videocache.q
    public void a(long j4) throws ProxyCacheException {
        try {
            HttpURLConnection g4 = g(j4, -1);
            this.f11137d = g4;
            String contentType = g4.getContentType();
            this.f11138e = new BufferedInputStream(this.f11137d.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.f11137d;
            r rVar = new r(this.f11136c.f11164a, h(httpURLConnection, j4, httpURLConnection.getResponseCode()), contentType);
            this.f11136c = rVar;
            this.f11134a.a(rVar.f11164a, rVar);
        } catch (IOException e4) {
            throw new ProxyCacheException("Error opening connection for " + this.f11136c.f11164a + " with offset " + j4, e4);
        }
    }

    @Override // com.danikula.videocache.q
    public void close() throws ProxyCacheException {
        HttpURLConnection httpURLConnection = this.f11137d;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException e4) {
                h.f("Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :(", e4);
            } catch (IllegalArgumentException e5) {
                e = e5;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            } catch (NullPointerException e6) {
                e = e6;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            }
        }
    }

    public synchronized String d() throws ProxyCacheException {
        if (TextUtils.isEmpty(this.f11136c.f11166c)) {
            b();
        }
        return this.f11136c.f11166c;
    }

    public String e() {
        return this.f11136c.f11164a;
    }

    @Override // com.danikula.videocache.q
    public synchronized long length() throws ProxyCacheException {
        if (this.f11136c.f11165b == -2147483648L) {
            b();
        }
        return this.f11136c.f11165b;
    }

    @Override // com.danikula.videocache.q
    public int read(byte[] bArr) throws ProxyCacheException {
        InputStream inputStream = this.f11138e;
        if (inputStream != null) {
            try {
                return inputStream.read(bArr, 0, bArr.length);
            } catch (InterruptedIOException e4) {
                throw new InterruptedProxyCacheException("Reading source " + this.f11136c.f11164a + " is interrupted", e4);
            } catch (IOException e5) {
                throw new ProxyCacheException("Error reading data from " + this.f11136c.f11164a, e5);
            }
        }
        throw new ProxyCacheException("Error reading data from " + this.f11136c.f11164a + ": connection is absent!");
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f11136c + "}";
    }

    public k(String str, com.danikula.videocache.sourcestorage.c cVar) {
        this(str, cVar, new w.a());
    }

    public k(String str, com.danikula.videocache.sourcestorage.c cVar, w.b bVar) {
        this.f11134a = (com.danikula.videocache.sourcestorage.c) n.d(cVar);
        this.f11135b = (w.b) n.d(bVar);
        r rVar = cVar.get(str);
        this.f11136c = rVar == null ? new r(str, -2147483648L, p.g(str)) : rVar;
    }

    public k(k kVar) {
        this.f11136c = kVar.f11136c;
        this.f11134a = kVar.f11134a;
        this.f11135b = kVar.f11135b;
    }
}
