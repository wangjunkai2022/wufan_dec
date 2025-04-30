package com.alipay.android.phone.mrpc.core;

import com.alipay.android.phone.mrpc.core.p;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r extends DefaultHttpClient {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p f9492a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(p pVar, ClientConnectionManager clientConnectionManager, HttpParams httpParams) {
        super(clientConnectionManager, httpParams);
        this.f9492a = pVar;
    }

    protected final ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy() {
        return new t(this);
    }

    protected final HttpContext createHttpContext() {
        BasicHttpContext basicHttpContext = new BasicHttpContext();
        basicHttpContext.setAttribute(HttpClientContext.AUTHSCHEME_REGISTRY, getAuthSchemes());
        basicHttpContext.setAttribute(HttpClientContext.COOKIESPEC_REGISTRY, getCookieSpecs());
        basicHttpContext.setAttribute(HttpClientContext.CREDS_PROVIDER, getCredentialsProvider());
        return basicHttpContext;
    }

    protected final BasicHttpProcessor createHttpProcessor() {
        HttpRequestInterceptor httpRequestInterceptor;
        BasicHttpProcessor createHttpProcessor = super.createHttpProcessor();
        httpRequestInterceptor = p.f9485f;
        createHttpProcessor.addRequestInterceptor(httpRequestInterceptor);
        createHttpProcessor.addRequestInterceptor(new p.a(this.f9492a, (byte) 0));
        return createHttpProcessor;
    }

    protected final RedirectHandler createRedirectHandler() {
        return new s(this);
    }
}
