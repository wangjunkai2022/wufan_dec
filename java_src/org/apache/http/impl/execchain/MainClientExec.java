package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRouteDirector;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.impl.auth.HttpAuthenticator;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestTargetHostHC4;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class MainClientExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final HttpAuthenticator authenticator;
    private final HttpClientConnectionManager connManager;
    private final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final AuthenticationStrategy proxyAuthStrategy;
    private final HttpProcessor proxyHttpProcessor;
    private final HttpRequestExecutor requestExecutor;
    private final ConnectionReuseStrategy reuseStrategy;
    private final HttpRouteDirector routeDirector;
    private final AuthenticationStrategy targetAuthStrategy;
    private final UserTokenHandler userTokenHandler;

    public MainClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        Args.notNull(authenticationStrategy, "Target authentication strategy");
        Args.notNull(authenticationStrategy2, "Proxy authentication strategy");
        Args.notNull(userTokenHandler, "User token handler");
        this.authenticator = new HttpAuthenticator();
        this.proxyHttpProcessor = new ImmutableHttpProcessor(new RequestTargetHostHC4(), new RequestClientConnControl());
        this.routeDirector = new BasicRouteDirector();
        this.requestExecutor = httpRequestExecutor;
        this.connManager = httpClientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
        this.targetAuthStrategy = authenticationStrategy;
        this.proxyAuthStrategy = authenticationStrategy2;
        this.userTokenHandler = userTokenHandler;
    }

    private boolean createTunnelToProxy(HttpRoute httpRoute, int i2, HttpClientContext httpClientContext) throws HttpException {
        throw new HttpException("Proxy chains are not supported.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0093, code lost:
        if (r16.reuseStrategy.keepAlive(r7, r21) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0095, code lost:
        android.util.Log.isLoggable(org.apache.http.impl.execchain.MainClientExec.TAG, 3);
        org.apache.http.util.EntityUtilsHC4.consume(r7.getEntity());
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a3, code lost:
        r18.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean createTunnelToTarget(org.apache.http.auth.AuthStateHC4 r17, org.apache.http.HttpClientConnection r18, org.apache.http.conn.routing.HttpRoute r19, org.apache.http.HttpRequest r20, org.apache.http.client.protocol.HttpClientContext r21) throws org.apache.http.HttpException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.execchain.MainClientExec.createTunnelToTarget(org.apache.http.auth.AuthStateHC4, org.apache.http.HttpClientConnection, org.apache.http.conn.routing.HttpRoute, org.apache.http.HttpRequest, org.apache.http.client.protocol.HttpClientContext):boolean");
    }

    private boolean needAuthentication(AuthStateHC4 authStateHC4, AuthStateHC4 authStateHC42, HttpRoute httpRoute, HttpResponse httpResponse, HttpClientContext httpClientContext) {
        if (httpClientContext.getRequestConfig().isAuthenticationEnabled()) {
            HttpHost targetHost = httpClientContext.getTargetHost();
            if (targetHost == null) {
                targetHost = httpRoute.getTargetHost();
            }
            if (targetHost.getPort() < 0) {
                targetHost = new HttpHost(targetHost.getHostName(), httpRoute.getTargetHost().getPort(), targetHost.getSchemeName());
            }
            boolean isAuthenticationRequested = this.authenticator.isAuthenticationRequested(targetHost, httpResponse, this.targetAuthStrategy, authStateHC4, httpClientContext);
            HttpHost proxyHost = httpRoute.getProxyHost();
            if (proxyHost == null) {
                proxyHost = httpRoute.getTargetHost();
            }
            boolean isAuthenticationRequested2 = this.authenticator.isAuthenticationRequested(proxyHost, httpResponse, this.proxyAuthStrategy, authStateHC42, httpClientContext);
            if (isAuthenticationRequested) {
                return this.authenticator.handleAuthChallenge(targetHost, httpResponse, this.targetAuthStrategy, authStateHC4, httpClientContext);
            } else if (isAuthenticationRequested2) {
                return this.authenticator.handleAuthChallenge(proxyHost, httpResponse, this.proxyAuthStrategy, authStateHC42, httpClientContext);
            } else {
                return false;
            }
        }
        return false;
    }

    void establishRoute(AuthStateHC4 authStateHC4, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        int nextStep;
        int connectTimeout = httpClientContext.getRequestConfig().getConnectTimeout();
        RouteTracker routeTracker = new RouteTracker(httpRoute);
        do {
            HttpRoute route = routeTracker.toRoute();
            nextStep = this.routeDirector.nextStep(httpRoute, route);
            switch (nextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    this.connManager.routeComplete(httpClientConnection, httpRoute, httpClientContext);
                    continue;
                case 1:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectTarget(httpRoute.isSecure());
                    continue;
                case 2:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectProxy(httpRoute.getProxyHost(), false);
                    continue;
                case 3:
                    boolean createTunnelToTarget = createTunnelToTarget(authStateHC4, httpClientConnection, httpRoute, httpRequest, httpClientContext);
                    Log.isLoggable(TAG, 3);
                    routeTracker.tunnelTarget(createTunnelToTarget);
                    continue;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    boolean createTunnelToProxy = createTunnelToProxy(httpRoute, hopCount, httpClientContext);
                    Log.isLoggable(TAG, 3);
                    routeTracker.tunnelProxy(httpRoute.getHopTarget(hopCount), createTunnelToProxy);
                    continue;
                case 5:
                    this.connManager.upgrade(httpClientConnection, httpRoute, httpClientContext);
                    routeTracker.layerProtocol(httpRoute.isSecure());
                    continue;
                default:
                    throw new IllegalStateException("Unknown step indicator " + nextStep + " from RouteDirector.");
            }
        } while (nextStep > 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d8, code lost:
        if (r30.isAborted() != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e0, code lost:
        throw new org.apache.http.impl.execchain.RequestAbortedException(r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0294 A[Catch: ConnectionShutdownException -> 0x00bc, RuntimeException -> 0x02c0, IOException -> 0x02c2, HttpException -> 0x02c4, TryCatch #7 {ConnectionShutdownException -> 0x00bc, blocks: (B:33:0x00ac, B:44:0x00c3, B:47:0x00ca, B:48:0x00d1, B:50:0x00d4, B:53:0x00db, B:54:0x00e0, B:55:0x00e1, B:57:0x00e7, B:59:0x00f0, B:61:0x0116, B:70:0x013d, B:72:0x0143, B:75:0x014d, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:82:0x0164, B:83:0x0175, B:85:0x017b, B:87:0x0181, B:88:0x0192, B:89:0x0197, B:91:0x019d, B:93:0x01a3, B:95:0x01a9, B:96:0x01ba, B:98:0x01c4, B:100:0x01d2, B:104:0x01e2, B:106:0x0200, B:108:0x0212, B:110:0x0216, B:112:0x0224, B:114:0x023a, B:116:0x0244, B:132:0x028a, B:134:0x0294, B:135:0x0297, B:137:0x029d, B:138:0x02a0, B:118:0x0249, B:120:0x0254, B:122:0x025a, B:124:0x0264, B:125:0x026c, B:127:0x0272, B:129:0x0278, B:131:0x0282, B:140:0x02b4, B:149:0x02ca, B:150:0x02cd, B:152:0x02d3, B:155:0x02da, B:157:0x02e0, B:111:0x021d, B:65:0x011c, B:67:0x0122, B:68:0x0125), top: B:186:0x00ac }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x029d A[Catch: ConnectionShutdownException -> 0x00bc, RuntimeException -> 0x02c0, IOException -> 0x02c2, HttpException -> 0x02c4, TryCatch #7 {ConnectionShutdownException -> 0x00bc, blocks: (B:33:0x00ac, B:44:0x00c3, B:47:0x00ca, B:48:0x00d1, B:50:0x00d4, B:53:0x00db, B:54:0x00e0, B:55:0x00e1, B:57:0x00e7, B:59:0x00f0, B:61:0x0116, B:70:0x013d, B:72:0x0143, B:75:0x014d, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:82:0x0164, B:83:0x0175, B:85:0x017b, B:87:0x0181, B:88:0x0192, B:89:0x0197, B:91:0x019d, B:93:0x01a3, B:95:0x01a9, B:96:0x01ba, B:98:0x01c4, B:100:0x01d2, B:104:0x01e2, B:106:0x0200, B:108:0x0212, B:110:0x0216, B:112:0x0224, B:114:0x023a, B:116:0x0244, B:132:0x028a, B:134:0x0294, B:135:0x0297, B:137:0x029d, B:138:0x02a0, B:118:0x0249, B:120:0x0254, B:122:0x025a, B:124:0x0264, B:125:0x026c, B:127:0x0272, B:129:0x0278, B:131:0x0282, B:140:0x02b4, B:149:0x02ca, B:150:0x02cd, B:152:0x02d3, B:155:0x02da, B:157:0x02e0, B:111:0x021d, B:65:0x011c, B:67:0x0122, B:68:0x0125), top: B:186:0x00ac }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x02a0 A[SYNTHETIC] */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.http.client.methods.CloseableHttpResponse execute(org.apache.http.conn.routing.HttpRoute r27, org.apache.http.client.methods.HttpRequestWrapper r28, org.apache.http.client.protocol.HttpClientContext r29, org.apache.http.client.methods.HttpExecutionAware r30) throws java.io.IOException, org.apache.http.HttpException {
        /*
            Method dump skipped, instructions count: 815
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.execchain.MainClientExec.execute(org.apache.http.conn.routing.HttpRoute, org.apache.http.client.methods.HttpRequestWrapper, org.apache.http.client.protocol.HttpClientContext, org.apache.http.client.methods.HttpExecutionAware):org.apache.http.client.methods.CloseableHttpResponse");
    }
}
