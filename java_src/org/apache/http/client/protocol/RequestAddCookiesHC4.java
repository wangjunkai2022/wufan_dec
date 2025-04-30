package org.apache.http.client.protocol;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Date;
import net.lingala.zip4j.util.e;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CookieStore;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.config.Lookup;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.cookie.SetCookie2;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;
@Immutable
/* loaded from: classes5.dex */
public class RequestAddCookiesHC4 implements HttpRequestInterceptor {
    private static final String TAG = "HttpClient";

    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        URI uri;
        Header versionHeader;
        Args.notNull(httpRequest, "HTTP request");
        Args.notNull(httpContext, "HTTP context");
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT")) {
            return;
        }
        HttpClientContext adapt = HttpClientContext.adapt(httpContext);
        CookieStore cookieStore = adapt.getCookieStore();
        if (cookieStore == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        Lookup<CookieSpecProvider> cookieSpecRegistry = adapt.getCookieSpecRegistry();
        if (cookieSpecRegistry == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        HttpHost targetHost = adapt.getTargetHost();
        if (targetHost == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        RouteInfo httpRoute = adapt.getHttpRoute();
        if (httpRoute == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        String cookieSpec = adapt.getRequestConfig().getCookieSpec();
        if (cookieSpec == null) {
            cookieSpec = CookieSpecs.BEST_MATCH;
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("CookieSpec selected: ");
            sb.append(cookieSpec);
        }
        if (httpRequest instanceof HttpUriRequest) {
            uri = ((HttpUriRequest) httpRequest).getURI();
        } else {
            try {
                uri = new URI(httpRequest.getRequestLine().getUri());
            } catch (URISyntaxException unused) {
                uri = null;
            }
        }
        String path = uri != null ? uri.getPath() : null;
        String hostName = targetHost.getHostName();
        int port = targetHost.getPort();
        if (port < 0) {
            port = httpRoute.getTargetHost().getPort();
        }
        boolean z3 = false;
        if (port < 0) {
            port = 0;
        }
        if (TextUtils.isEmpty(path)) {
            path = e.F0;
        }
        CookieOrigin cookieOrigin = new CookieOrigin(hostName, port, path, httpRoute.isSecure());
        CookieSpecProvider lookup = cookieSpecRegistry.lookup(cookieSpec);
        if (lookup != null) {
            CookieSpec create = lookup.create(adapt);
            ArrayList<Cookie> arrayList = new ArrayList(cookieStore.getCookies());
            ArrayList<Cookie> arrayList2 = new ArrayList();
            Date date = new Date();
            for (Cookie cookie : arrayList) {
                if (!cookie.isExpired(date)) {
                    if (create.match(cookie, cookieOrigin)) {
                        if (Log.isLoggable(TAG, 3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Cookie ");
                            sb2.append(cookie);
                            sb2.append(" match ");
                            sb2.append(cookieOrigin);
                        }
                        arrayList2.add(cookie);
                    }
                } else if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Cookie ");
                    sb3.append(cookie);
                    sb3.append(" expired");
                }
            }
            if (!arrayList2.isEmpty()) {
                for (Header header : create.formatCookies(arrayList2)) {
                    httpRequest.addHeader(header);
                }
            }
            int version = create.getVersion();
            if (version > 0) {
                for (Cookie cookie2 : arrayList2) {
                    if (version != cookie2.getVersion() || !(cookie2 instanceof SetCookie2)) {
                        z3 = true;
                    }
                }
                if (z3 && (versionHeader = create.getVersionHeader()) != null) {
                    httpRequest.addHeader(versionHeader);
                }
            }
            httpContext.setAttribute(HttpClientContext.COOKIE_SPEC, create);
            httpContext.setAttribute(HttpClientContext.COOKIE_ORIGIN, cookieOrigin);
            return;
        }
        throw new HttpException("Unsupported cookie policy: " + cookieSpec);
    }
}
