package com.alipay.sdk.net;

import android.os.Build;
import com.facebook.common.util.f;
import com.facebook.imagepipeline.producers.s;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
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
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    public static final String f9775b = "msp";

    /* renamed from: c  reason: collision with root package name */
    static b f9776c;

    /* renamed from: a  reason: collision with root package name */
    final DefaultHttpClient f9777a;

    private b(HttpParams httpParams) {
        this.f9777a = new DefaultHttpClient(httpParams);
    }

    public static b a() {
        if (f9776c == null) {
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpConnectionParams.setStaleCheckingEnabled(basicHttpParams, true);
            basicHttpParams.setBooleanParameter("http.protocol.expect-continue", false);
            ConnManagerParams.setMaxTotalConnections(basicHttpParams, 50);
            ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(30));
            ConnManagerParams.setTimeout(basicHttpParams, 1000L);
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 20000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, s.f13217g);
            HttpConnectionParams.setSocketBufferSize(basicHttpParams, 16384);
            HttpProtocolParams.setUseExpectContinue(basicHttpParams, false);
            HttpClientParams.setRedirecting(basicHttpParams, true);
            HttpClientParams.setAuthenticating(basicHttpParams, false);
            HttpProtocolParams.setUserAgent(basicHttpParams, f9775b);
            try {
                SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
                socketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                Scheme scheme = new Scheme("https", socketFactory, 443);
                Scheme scheme2 = new Scheme(f.f11765a, PlainSocketFactory.getSocketFactory(), 80);
                SchemeRegistry schemeRegistry = new SchemeRegistry();
                schemeRegistry.register(scheme);
                schemeRegistry.register(scheme2);
                f9776c = new b(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
            } catch (Exception unused) {
                f9776c = new b(basicHttpParams);
            }
        }
        return f9776c;
    }

    private <T> T b(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws Exception {
        try {
            return (T) this.f9777a.execute(httpHost, httpRequest, responseHandler);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private <T> T c(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws Exception {
        try {
            return (T) this.f9777a.execute(httpHost, httpRequest, responseHandler, httpContext);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private <T> T d(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) throws Exception {
        try {
            return (T) this.f9777a.execute(httpUriRequest, responseHandler);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private <T> T e(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws Exception {
        try {
            return (T) this.f9777a.execute(httpUriRequest, responseHandler, httpContext);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private HttpResponse f(HttpHost httpHost, HttpRequest httpRequest) throws Exception {
        try {
            return this.f9777a.execute(httpHost, httpRequest);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private HttpResponse g(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws Exception {
        try {
            return this.f9777a.execute(httpHost, httpRequest, httpContext);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private HttpResponse i(HttpUriRequest httpUriRequest, HttpContext httpContext) throws Exception {
        try {
            return this.f9777a.execute(httpUriRequest, httpContext);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private static b j() {
        return f9776c;
    }

    private static void k() {
        f9776c = null;
    }

    private void l() {
        ClientConnectionManager connectionManager = this.f9777a.getConnectionManager();
        if (connectionManager != null) {
            connectionManager.closeExpiredConnections();
            if (Build.VERSION.SDK_INT >= 9) {
                connectionManager.closeIdleConnections(30L, TimeUnit.MINUTES);
            }
        }
    }

    private void m() {
        ClientConnectionManager connectionManager = this.f9777a.getConnectionManager();
        if (connectionManager != null) {
            connectionManager.shutdown();
            f9776c = null;
        }
    }

    private HttpParams n() {
        return this.f9777a.getParams();
    }

    private ClientConnectionManager o() {
        return this.f9777a.getConnectionManager();
    }

    public final HttpResponse h(HttpUriRequest httpUriRequest) throws Exception {
        try {
            return this.f9777a.execute(httpUriRequest);
        } catch (Exception e4) {
            throw e4;
        }
    }

    private b(ClientConnectionManager clientConnectionManager, HttpParams httpParams) {
        this.f9777a = new DefaultHttpClient(clientConnectionManager, httpParams);
    }
}
