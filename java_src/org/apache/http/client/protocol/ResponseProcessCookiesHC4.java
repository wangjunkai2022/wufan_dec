package org.apache.http.client.protocol;

import android.util.Log;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.IOException;
import m.a;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class ResponseProcessCookiesHC4 implements HttpResponseInterceptor {
    private static final String TAG = "HttpClient";

    private static String formatCooke(Cookie cookie) {
        StringBuilder sb = new StringBuilder();
        sb.append(cookie.getName());
        sb.append("=\"");
        String value = cookie.getValue();
        if (value.length() > 100) {
            value = value.substring(0, 100) + "...";
        }
        sb.append(value);
        sb.append(a.f72569g);
        sb.append(", version:");
        sb.append(Integer.toString(cookie.getVersion()));
        sb.append(", domain:");
        sb.append(cookie.getDomain());
        sb.append(", path:");
        sb.append(cookie.getPath());
        sb.append(", expiry:");
        sb.append(cookie.getExpiryDate());
        return sb.toString();
    }

    private void processCookies(HeaderIterator headerIterator, CookieSpec cookieSpec, CookieOrigin cookieOrigin, CookieStore cookieStore) {
        while (headerIterator.hasNext()) {
            Header nextHeader = headerIterator.nextHeader();
            try {
                for (Cookie cookie : cookieSpec.parse(nextHeader, cookieOrigin)) {
                    try {
                        cookieSpec.validate(cookie, cookieOrigin);
                        cookieStore.addCookie(cookie);
                        if (Log.isLoggable(TAG, 3)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Cookie accepted [");
                            sb.append(formatCooke(cookie));
                            sb.append("]");
                        }
                    } catch (MalformedCookieException e4) {
                        if (Log.isLoggable(TAG, 5)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Cookie rejected [");
                            sb2.append(formatCooke(cookie));
                            sb2.append("] ");
                            sb2.append(e4.getMessage());
                        }
                    }
                }
            } catch (MalformedCookieException e5) {
                if (Log.isLoggable(TAG, 5)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Invalid cookie header: \"");
                    sb3.append(nextHeader);
                    sb3.append("\". ");
                    sb3.append(e5.getMessage());
                }
            }
        }
    }

    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpResponse, "HTTP request");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext adapt = HttpClientContext.adapt(httpContext);
        CookieSpec cookieSpec = adapt.getCookieSpec();
        if (cookieSpec == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        CookieStore cookieStore = adapt.getCookieStore();
        if (cookieStore == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        CookieOrigin cookieOrigin = adapt.getCookieOrigin();
        if (cookieOrigin == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        processCookies(httpResponse.headerIterator(HttpHeaders.Names.SET_COOKIE), cookieSpec, cookieOrigin, cookieStore);
        if (cookieSpec.getVersion() > 0) {
            processCookies(httpResponse.headerIterator(HttpHeaders.Names.SET_COOKIE2), cookieSpec, cookieOrigin, cookieStore);
        }
    }
}
