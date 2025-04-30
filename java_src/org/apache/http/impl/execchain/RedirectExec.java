package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.util.List;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.client.RedirectException;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.URIUtilsHC4;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtilsHC4;
@ThreadSafe
/* loaded from: classes5.dex */
public class RedirectExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final RedirectStrategy redirectStrategy;
    private final ClientExecChain requestExecutor;
    private final HttpRoutePlanner routePlanner;

    public RedirectExec(ClientExecChain clientExecChain, HttpRoutePlanner httpRoutePlanner, RedirectStrategy redirectStrategy) {
        Args.notNull(clientExecChain, "HTTP client request executor");
        Args.notNull(httpRoutePlanner, "HTTP route planner");
        Args.notNull(redirectStrategy, "HTTP redirect strategy");
        this.requestExecutor = clientExecChain;
        this.routePlanner = httpRoutePlanner;
        this.redirectStrategy = redirectStrategy;
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws IOException, HttpException {
        CloseableHttpResponse execute;
        AuthScheme authScheme;
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        List<URI> redirectLocations = httpClientContext.getRedirectLocations();
        if (redirectLocations != null) {
            redirectLocations.clear();
        }
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        int maxRedirects = requestConfig.getMaxRedirects() > 0 ? requestConfig.getMaxRedirects() : 50;
        int i2 = 0;
        HttpEntityEnclosingRequest httpEntityEnclosingRequest = httpRequestWrapper;
        while (true) {
            execute = this.requestExecutor.execute(httpRoute, httpEntityEnclosingRequest, httpClientContext, httpExecutionAware);
            try {
                if (!requestConfig.isRedirectsEnabled() || !this.redirectStrategy.isRedirected(httpEntityEnclosingRequest, execute, httpClientContext)) {
                    break;
                } else if (i2 < maxRedirects) {
                    i2++;
                    HttpUriRequest redirect = this.redirectStrategy.getRedirect(httpEntityEnclosingRequest, execute, httpClientContext);
                    if (!redirect.headerIterator().hasNext()) {
                        redirect.setHeaders(httpRequestWrapper.getOriginal().getAllHeaders());
                    }
                    httpEntityEnclosingRequest = HttpRequestWrapper.wrap(redirect);
                    if (httpEntityEnclosingRequest instanceof HttpEntityEnclosingRequest) {
                        RequestEntityProxy.enhance(httpEntityEnclosingRequest);
                    }
                    URI uri = httpEntityEnclosingRequest.getURI();
                    HttpHost extractHost = URIUtilsHC4.extractHost(uri);
                    if (extractHost != null) {
                        if (!httpRoute.getTargetHost().equals(extractHost)) {
                            AuthStateHC4 targetAuthState = httpClientContext.getTargetAuthState();
                            if (targetAuthState != null) {
                                Log.isLoggable(TAG, 3);
                                targetAuthState.reset();
                            }
                            AuthStateHC4 proxyAuthState = httpClientContext.getProxyAuthState();
                            if (proxyAuthState != null && (authScheme = proxyAuthState.getAuthScheme()) != null && authScheme.isConnectionBased()) {
                                Log.isLoggable(TAG, 3);
                                proxyAuthState.reset();
                            }
                        }
                        httpRoute = this.routePlanner.determineRoute(extractHost, httpEntityEnclosingRequest, httpClientContext);
                        if (Log.isLoggable(TAG, 3)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Redirecting to '");
                            sb.append(uri);
                            sb.append("' via ");
                            sb.append(httpRoute);
                        }
                        EntityUtilsHC4.consume(execute.getEntity());
                        execute.close();
                    } else {
                        throw new ProtocolException("Redirect URI does not specify a valid host name: " + uri);
                    }
                } else {
                    throw new RedirectException("Maximum redirects (" + maxRedirects + ") exceeded");
                }
            } catch (HttpException e4) {
                try {
                    try {
                        EntityUtilsHC4.consume(execute.getEntity());
                    } catch (IOException unused) {
                        Log.isLoggable(TAG, 3);
                        execute.close();
                        throw e4;
                    }
                    execute.close();
                    throw e4;
                } catch (Throwable th) {
                    execute.close();
                    throw th;
                }
            } catch (IOException e5) {
                execute.close();
                throw e5;
            } catch (RuntimeException e6) {
                execute.close();
                throw e6;
            }
        }
        return execute;
    }
}
