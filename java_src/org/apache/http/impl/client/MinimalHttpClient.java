package org.apache.http.impl.client;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.Configurable;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.DefaultConnectionReuseStrategyHC4;
import org.apache.http.impl.execchain.MinimalClientExec;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContextHC4;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.util.Args;
@ThreadSafe
/* loaded from: classes5.dex */
class MinimalHttpClient extends CloseableHttpClient {
    private final HttpClientConnectionManager connManager;
    private final HttpParams params = new BasicHttpParams();
    private final MinimalClientExec requestExecutor;

    public MinimalHttpClient(HttpClientConnectionManager httpClientConnectionManager) {
        this.connManager = (HttpClientConnectionManager) Args.notNull(httpClientConnectionManager, "HTTP connection manager");
        this.requestExecutor = new MinimalClientExec(new HttpRequestExecutor(), httpClientConnectionManager, DefaultConnectionReuseStrategyHC4.INSTANCE, DefaultConnectionKeepAliveStrategyHC4.INSTANCE);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.connManager.shutdown();
    }

    @Override // org.apache.http.impl.client.CloseableHttpClient
    protected CloseableHttpResponse doExecute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException, ClientProtocolException {
        Args.notNull(httpHost, "Target host");
        Args.notNull(httpRequest, "HTTP request");
        HttpExecutionAware httpExecutionAware = httpRequest instanceof HttpExecutionAware ? (HttpExecutionAware) httpRequest : null;
        try {
            HttpRequestWrapper wrap = HttpRequestWrapper.wrap(httpRequest);
            if (httpContext == null) {
                httpContext = new BasicHttpContextHC4();
            }
            HttpClientContext adapt = HttpClientContext.adapt(httpContext);
            HttpRoute httpRoute = new HttpRoute(httpHost);
            RequestConfig config = httpRequest instanceof Configurable ? ((Configurable) httpRequest).getConfig() : null;
            if (config != null) {
                adapt.setRequestConfig(config);
            }
            return this.requestExecutor.execute(httpRoute, wrap, adapt, httpExecutionAware);
        } catch (HttpException e4) {
            throw new ClientProtocolException(e4);
        }
    }

    public ClientConnectionManager getConnectionManager() {
        return new ClientConnectionManager() { // from class: org.apache.http.impl.client.MinimalHttpClient.1
            public void closeExpiredConnections() {
                MinimalHttpClient.this.connManager.closeExpiredConnections();
            }

            public void closeIdleConnections(long j4, TimeUnit timeUnit) {
                MinimalHttpClient.this.connManager.closeIdleConnections(j4, timeUnit);
            }

            public SchemeRegistry getSchemeRegistry() {
                throw new UnsupportedOperationException();
            }

            public void releaseConnection(ManagedClientConnection managedClientConnection, long j4, TimeUnit timeUnit) {
                throw new UnsupportedOperationException();
            }

            public ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
                throw new UnsupportedOperationException();
            }

            public void shutdown() {
                MinimalHttpClient.this.connManager.shutdown();
            }
        };
    }

    public HttpParams getParams() {
        return this.params;
    }
}
