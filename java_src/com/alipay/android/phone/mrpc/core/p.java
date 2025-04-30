package com.alipay.android.phone.mrpc.core;

import android.net.SSLCertificateSocketFactory;
import android.util.Base64;
import android.util.Log;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URI;
import java.security.Security;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes2.dex */
public final class p implements HttpClient {

    /* renamed from: d  reason: collision with root package name */
    public static long f9483d = 160;

    /* renamed from: e  reason: collision with root package name */
    private static String[] f9484e = {"text/", "application/xml", HttpHeaders.Values.APPLICATION_JSON};

    /* renamed from: f  reason: collision with root package name */
    private static final HttpRequestInterceptor f9485f = new q();

    /* renamed from: a  reason: collision with root package name */
    private final HttpClient f9486a;

    /* renamed from: b  reason: collision with root package name */
    private RuntimeException f9487b = new IllegalStateException("AndroidHttpClient created and never closed");

    /* renamed from: c  reason: collision with root package name */
    private volatile b f9488c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a implements HttpRequestInterceptor {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ a(p pVar, byte b4) {
            this();
        }

        public final void process(HttpRequest httpRequest, HttpContext httpContext) {
            b bVar = p.this.f9488c;
            if (bVar != null && Log.isLoggable(bVar.f9490a, bVar.f9491b) && (httpRequest instanceof HttpUriRequest)) {
                Log.println(bVar.f9491b, bVar.f9490a, p.d((HttpUriRequest) httpRequest));
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        final String f9490a;

        /* renamed from: b  reason: collision with root package name */
        final int f9491b;
    }

    private p(ClientConnectionManager clientConnectionManager, HttpParams httpParams) {
        this.f9486a = new r(this, clientConnectionManager, httpParams);
    }

    public static p b(String str) {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setUseExpectContinue(basicHttpParams, false);
        HttpConnectionParams.setStaleCheckingEnabled(basicHttpParams, false);
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 20000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, com.facebook.imagepipeline.producers.s.f13217g);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        HttpClientParams.setRedirecting(basicHttpParams, true);
        HttpClientParams.setAuthenticating(basicHttpParams, false);
        HttpProtocolParams.setUserAgent(basicHttpParams, str);
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(com.facebook.common.util.f.f11765a, PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", SSLCertificateSocketFactory.getHttpSocketFactory(com.facebook.imagepipeline.producers.s.f13217g, null), 443));
        ThreadSafeClientConnManager threadSafeClientConnManager = new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
        ConnManagerParams.setTimeout(basicHttpParams, 60000L);
        ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(10));
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, 50);
        Security.setProperty("networkaddress.cache.ttl", "-1");
        HttpsURLConnection.setDefaultHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
        return new p(threadSafeClientConnManager, basicHttpParams);
    }

    public static InputStream c(HttpEntity httpEntity) {
        Header contentEncoding;
        String value;
        InputStream content = httpEntity.getContent();
        return (content == null || (contentEncoding = httpEntity.getContentEncoding()) == null || (value = contentEncoding.getValue()) == null || !value.contains("gzip")) ? content : new GZIPInputStream(content);
    }

    static /* synthetic */ String d(HttpUriRequest httpUriRequest) {
        Header[] allHeaders;
        HttpEntity entity;
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("curl ");
        for (Header header : httpUriRequest.getAllHeaders()) {
            if (!header.getName().equals("Authorization") && !header.getName().equals(HttpHeaders.Names.COOKIE)) {
                sb.append("--header \"");
                sb.append(header.toString().trim());
                sb.append("\" ");
            }
        }
        URI uri = httpUriRequest.getURI();
        if (httpUriRequest instanceof RequestWrapper) {
            HttpUriRequest original = ((RequestWrapper) httpUriRequest).getOriginal();
            if (original instanceof HttpUriRequest) {
                uri = original.getURI();
            }
        }
        sb.append(m.a.f72569g);
        sb.append(uri);
        sb.append(m.a.f72569g);
        if ((httpUriRequest instanceof HttpEntityEnclosingRequest) && (entity = ((HttpEntityEnclosingRequest) httpUriRequest).getEntity()) != null && entity.isRepeatable()) {
            if (entity.getContentLength() < 1024) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                entity.writeTo(byteArrayOutputStream);
                if (k(httpUriRequest)) {
                    sb.insert(0, "echo '" + Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2) + "' | base64 -d > /tmp/$$.bin; ");
                    str = " --data-binary @/tmp/$$.bin";
                } else {
                    String byteArrayOutputStream2 = byteArrayOutputStream.toString();
                    sb.append(" --data-ascii \"");
                    sb.append(byteArrayOutputStream2);
                    sb.append(m.a.f72569g);
                }
            } else {
                str = " [TOO MUCH DATA TO INCLUDE]";
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public static AbstractHttpEntity f(byte[] bArr) {
        if (bArr.length < f9483d) {
            return new ByteArrayEntity(bArr);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        ByteArrayEntity byteArrayEntity = new ByteArrayEntity(byteArrayOutputStream.toByteArray());
        byteArrayEntity.setContentEncoding("gzip");
        byteArrayEntity.getContentLength();
        return byteArrayEntity;
    }

    public static void g(HttpRequest httpRequest) {
        httpRequest.addHeader("Accept-Encoding", "gzip");
    }

    public static long i(String str) {
        return y.a(str);
    }

    public static void j(HttpRequest httpRequest) {
        httpRequest.addHeader("Connection", "Keep-Alive");
    }

    private static boolean k(HttpUriRequest httpUriRequest) {
        Header[] headers = httpUriRequest.getHeaders("content-encoding");
        if (headers != null) {
            for (Header header : headers) {
                if ("gzip".equalsIgnoreCase(header.getValue())) {
                    return true;
                }
            }
        }
        Header[] headers2 = httpUriRequest.getHeaders(com.alipay.sdk.packet.d.f9785f);
        if (headers2 != null) {
            for (Header header2 : headers2) {
                for (String str : f9484e) {
                    if (header2.getValue().startsWith(str)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public final <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) {
        return (T) this.f9486a.execute(httpHost, httpRequest, responseHandler);
    }

    public final <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        return (T) this.f9486a.execute(httpHost, httpRequest, responseHandler, httpContext);
    }

    public final <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) {
        return (T) this.f9486a.execute(httpUriRequest, responseHandler);
    }

    public final <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        return (T) this.f9486a.execute(httpUriRequest, responseHandler, httpContext);
    }

    public final HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest) {
        return this.f9486a.execute(httpHost, httpRequest);
    }

    public final HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        return this.f9486a.execute(httpHost, httpRequest, httpContext);
    }

    public final HttpResponse execute(HttpUriRequest httpUriRequest) {
        return this.f9486a.execute(httpUriRequest);
    }

    public final HttpResponse execute(HttpUriRequest httpUriRequest, HttpContext httpContext) {
        return this.f9486a.execute(httpUriRequest, httpContext);
    }

    public final ClientConnectionManager getConnectionManager() {
        return this.f9486a.getConnectionManager();
    }

    public final HttpParams getParams() {
        return this.f9486a.getParams();
    }

    public final void h(HttpRequestRetryHandler httpRequestRetryHandler) {
        this.f9486a.setHttpRequestRetryHandler(httpRequestRetryHandler);
    }
}
