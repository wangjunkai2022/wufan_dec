package org.apache.http.impl.client;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.Configurable;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.params.HttpClientParamConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.impl.execchain.ClientExecChain;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContextHC4;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
@ThreadSafe
/* loaded from: classes5.dex */
class InternalHttpClient extends CloseableHttpClient {
    private static final String TAG = "HttpClient";
    private final Lookup<AuthSchemeProvider> authSchemeRegistry;
    private final List<Closeable> closeables;
    private final HttpClientConnectionManager connManager;
    private final Lookup<CookieSpecProvider> cookieSpecRegistry;
    private final CookieStore cookieStore;
    private final CredentialsProvider credentialsProvider;
    private final RequestConfig defaultConfig;
    private final ClientExecChain execChain;
    private final HttpRoutePlanner routePlanner;

    public InternalHttpClient(ClientExecChain clientExecChain, HttpClientConnectionManager httpClientConnectionManager, HttpRoutePlanner httpRoutePlanner, Lookup<CookieSpecProvider> lookup, Lookup<AuthSchemeProvider> lookup2, CookieStore cookieStore, CredentialsProvider credentialsProvider, RequestConfig requestConfig, List<Closeable> list) {
        Args.notNull(clientExecChain, "HTTP client exec chain");
        Args.notNull(httpClientConnectionManager, "HTTP connection manager");
        Args.notNull(httpRoutePlanner, "HTTP route planner");
        this.execChain = clientExecChain;
        this.connManager = httpClientConnectionManager;
        this.routePlanner = httpRoutePlanner;
        this.cookieSpecRegistry = lookup;
        this.authSchemeRegistry = lookup2;
        this.cookieStore = cookieStore;
        this.credentialsProvider = credentialsProvider;
        this.defaultConfig = requestConfig;
        this.closeables = list;
    }

    private HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        if (httpHost == null) {
            httpHost = (HttpHost) httpRequest.getParams().getParameter("http.default-host");
        }
        return this.routePlanner.determineRoute(httpHost, httpRequest, httpContext);
    }

    private void setupContext(HttpClientContext httpClientContext) {
        if (httpClientContext.getAttribute(HttpClientContext.TARGET_AUTH_STATE) == null) {
            httpClientContext.setAttribute(HttpClientContext.TARGET_AUTH_STATE, new AuthStateHC4());
        }
        if (httpClientContext.getAttribute(HttpClientContext.PROXY_AUTH_STATE) == null) {
            httpClientContext.setAttribute(HttpClientContext.PROXY_AUTH_STATE, new AuthStateHC4());
        }
        if (httpClientContext.getAttribute(HttpClientContext.AUTHSCHEME_REGISTRY) == null) {
            httpClientContext.setAttribute(HttpClientContext.AUTHSCHEME_REGISTRY, this.authSchemeRegistry);
        }
        if (httpClientContext.getAttribute(HttpClientContext.COOKIESPEC_REGISTRY) == null) {
            httpClientContext.setAttribute(HttpClientContext.COOKIESPEC_REGISTRY, this.cookieSpecRegistry);
        }
        if (httpClientContext.getAttribute(HttpClientContext.COOKIE_STORE) == null) {
            httpClientContext.setAttribute(HttpClientContext.COOKIE_STORE, this.cookieStore);
        }
        if (httpClientContext.getAttribute(HttpClientContext.CREDS_PROVIDER) == null) {
            httpClientContext.setAttribute(HttpClientContext.CREDS_PROVIDER, this.credentialsProvider);
        }
        if (httpClientContext.getAttribute(HttpClientContext.REQUEST_CONFIG) == null) {
            httpClientContext.setAttribute(HttpClientContext.REQUEST_CONFIG, this.defaultConfig);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.connManager.shutdown();
        List<Closeable> list = this.closeables;
        if (list != null) {
            for (Closeable closeable : list) {
                try {
                    closeable.close();
                } catch (IOException e4) {
                    e4.getMessage();
                }
            }
        }
    }

    @Override // org.apache.http.impl.client.CloseableHttpClient
    protected CloseableHttpResponse doExecute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException, ClientProtocolException {
        Args.notNull(httpRequest, "HTTP request");
        HttpExecutionAware httpExecutionAware = httpRequest instanceof HttpExecutionAware ? (HttpExecutionAware) httpRequest : null;
        try {
            HttpRequest wrap = HttpRequestWrapper.wrap(httpRequest);
            if (httpContext == null) {
                httpContext = new BasicHttpContextHC4();
            }
            HttpClientContext adapt = HttpClientContext.adapt(httpContext);
            RequestConfig config = httpRequest instanceof Configurable ? ((Configurable) httpRequest).getConfig() : null;
            if (config == null) {
                config = HttpClientParamConfig.getRequestConfig(httpRequest.getParams());
            }
            if (config != null) {
                adapt.setRequestConfig(config);
            }
            setupContext(adapt);
            return this.execChain.execute(determineRoute(httpHost, wrap, adapt), wrap, adapt, httpExecutionAware);
        } catch (HttpException e4) {
            throw new ClientProtocolException(e4);
        }
    }

    public ClientConnectionManager getConnectionManager() {
        return new ClientConnectionManager() { // from class: org.apache.http.impl.client.InternalHttpClient.1
            public void closeExpiredConnections() {
                InternalHttpClient.this.connManager.closeExpiredConnections();
            }

            public void closeIdleConnections(long j4, TimeUnit timeUnit) {
                InternalHttpClient.this.connManager.closeIdleConnections(j4, timeUnit);
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
                InternalHttpClient.this.connManager.shutdown();
            }
        };
    }

    public HttpParams getParams() {
        throw new UnsupportedOperationException();
    }
}
