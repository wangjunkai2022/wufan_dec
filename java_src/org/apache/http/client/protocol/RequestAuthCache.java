package org.apache.http.client.protocol;

import android.util.Log;
import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.auth.Credentials;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class RequestAuthCache implements HttpRequestInterceptor {
    private static final String TAG = "HttpClient";

    private void doPreemptiveAuth(HttpHost httpHost, AuthScheme authScheme, AuthStateHC4 authStateHC4, CredentialsProvider credentialsProvider) {
        String schemeName = authScheme.getSchemeName();
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Re-using cached '");
            sb.append(schemeName);
            sb.append("' auth scheme for ");
            sb.append(httpHost);
        }
        Credentials credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort(), AuthScope.ANY_REALM, schemeName));
        if (credentials != null) {
            if ("BASIC".equalsIgnoreCase(authScheme.getSchemeName())) {
                authStateHC4.setState(AuthProtocolState.CHALLENGED);
            } else {
                authStateHC4.setState(AuthProtocolState.SUCCESS);
            }
            authStateHC4.update(authScheme, credentials);
            return;
        }
        Log.isLoggable(TAG, 3);
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        AuthScheme authScheme;
        AuthScheme authScheme2;
        Args.notNull(httpRequest, "HTTP request");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext adapt = HttpClientContext.adapt(httpContext);
        AuthCache authCache = adapt.getAuthCache();
        if (authCache == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        CredentialsProvider credentialsProvider = adapt.getCredentialsProvider();
        if (credentialsProvider == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        RouteInfo httpRoute = adapt.getHttpRoute();
        if (httpRoute == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        HttpHost targetHost = adapt.getTargetHost();
        if (targetHost == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        if (targetHost.getPort() < 0) {
            targetHost = new HttpHost(targetHost.getHostName(), httpRoute.getTargetHost().getPort(), targetHost.getSchemeName());
        }
        AuthStateHC4 targetAuthState = adapt.getTargetAuthState();
        if (targetAuthState != null && targetAuthState.getState() == AuthProtocolState.UNCHALLENGED && (authScheme2 = authCache.get(targetHost)) != null) {
            doPreemptiveAuth(targetHost, authScheme2, targetAuthState, credentialsProvider);
        }
        HttpHost proxyHost = httpRoute.getProxyHost();
        AuthStateHC4 proxyAuthState = adapt.getProxyAuthState();
        if (proxyHost == null || proxyAuthState == null || proxyAuthState.getState() != AuthProtocolState.UNCHALLENGED || (authScheme = authCache.get(proxyHost)) == null) {
            return;
        }
        doPreemptiveAuth(proxyHost, authScheme, proxyAuthState, credentialsProvider);
    }
}
