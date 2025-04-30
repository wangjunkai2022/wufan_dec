package org.apache.http.client.protocol;

import java.net.URI;
import java.util.List;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.config.Lookup;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.protocol.BasicHttpContextHC4;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpCoreContext;
@NotThreadSafe
/* loaded from: classes5.dex */
public class HttpClientContext extends HttpCoreContext {
    public static final String AUTHSCHEME_REGISTRY = "http.authscheme-registry";
    public static final String AUTH_CACHE = "http.auth.auth-cache";
    public static final String COOKIESPEC_REGISTRY = "http.cookiespec-registry";
    public static final String COOKIE_ORIGIN = "http.cookie-origin";
    public static final String COOKIE_SPEC = "http.cookie-spec";
    public static final String COOKIE_STORE = "http.cookie-store";
    public static final String CREDS_PROVIDER = "http.auth.credentials-provider";
    public static final String HTTP_ROUTE = "http.route";
    public static final String PROXY_AUTH_STATE = "http.auth.proxy-scope";
    public static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    public static final String REQUEST_CONFIG = "http.request-config";
    public static final String TARGET_AUTH_STATE = "http.auth.target-scope";
    public static final String USER_TOKEN = "http.user-token";

    public HttpClientContext(HttpContext httpContext) {
        super(httpContext);
    }

    public static HttpClientContext adapt(HttpContext httpContext) {
        if (httpContext instanceof HttpClientContext) {
            return (HttpClientContext) httpContext;
        }
        return new HttpClientContext(httpContext);
    }

    public static HttpClientContext create() {
        return new HttpClientContext(new BasicHttpContextHC4());
    }

    private <T> Lookup<T> getLookup(String str, Class<T> cls) {
        return (Lookup) getAttribute(str, Lookup.class);
    }

    public AuthCache getAuthCache() {
        return (AuthCache) getAttribute(AUTH_CACHE, AuthCache.class);
    }

    public Lookup<AuthSchemeProvider> getAuthSchemeRegistry() {
        return getLookup(AUTHSCHEME_REGISTRY, AuthSchemeProvider.class);
    }

    public CookieOrigin getCookieOrigin() {
        return (CookieOrigin) getAttribute(COOKIE_ORIGIN, CookieOrigin.class);
    }

    public CookieSpec getCookieSpec() {
        return (CookieSpec) getAttribute(COOKIE_SPEC, CookieSpec.class);
    }

    public Lookup<CookieSpecProvider> getCookieSpecRegistry() {
        return getLookup(COOKIESPEC_REGISTRY, CookieSpecProvider.class);
    }

    public CookieStore getCookieStore() {
        return (CookieStore) getAttribute(COOKIE_STORE, CookieStore.class);
    }

    public CredentialsProvider getCredentialsProvider() {
        return (CredentialsProvider) getAttribute(CREDS_PROVIDER, CredentialsProvider.class);
    }

    public RouteInfo getHttpRoute() {
        return (RouteInfo) getAttribute(HTTP_ROUTE, HttpRoute.class);
    }

    public AuthStateHC4 getProxyAuthState() {
        return (AuthStateHC4) getAttribute(PROXY_AUTH_STATE, AuthStateHC4.class);
    }

    public List<URI> getRedirectLocations() {
        return (List) getAttribute("http.protocol.redirect-locations", List.class);
    }

    public RequestConfig getRequestConfig() {
        RequestConfig requestConfig = (RequestConfig) getAttribute(REQUEST_CONFIG, RequestConfig.class);
        return requestConfig != null ? requestConfig : RequestConfig.DEFAULT;
    }

    public AuthStateHC4 getTargetAuthState() {
        return (AuthStateHC4) getAttribute(TARGET_AUTH_STATE, AuthStateHC4.class);
    }

    public <T> T getUserToken(Class<T> cls) {
        return (T) getAttribute(USER_TOKEN, cls);
    }

    public void setAuthCache(AuthCache authCache) {
        setAttribute(AUTH_CACHE, authCache);
    }

    public void setAuthSchemeRegistry(Lookup<AuthSchemeProvider> lookup) {
        setAttribute(AUTHSCHEME_REGISTRY, lookup);
    }

    public void setCookieSpecRegistry(Lookup<CookieSpecProvider> lookup) {
        setAttribute(COOKIESPEC_REGISTRY, lookup);
    }

    public void setCookieStore(CookieStore cookieStore) {
        setAttribute(COOKIE_STORE, cookieStore);
    }

    public void setCredentialsProvider(CredentialsProvider credentialsProvider) {
        setAttribute(CREDS_PROVIDER, credentialsProvider);
    }

    public void setRequestConfig(RequestConfig requestConfig) {
        setAttribute(REQUEST_CONFIG, requestConfig);
    }

    public void setUserToken(Object obj) {
        setAttribute(USER_TOKEN, obj);
    }

    public HttpClientContext() {
    }

    public Object getUserToken() {
        return getAttribute(USER_TOKEN);
    }
}
