package org.apache.http.client.protocol;

import android.util.Log;
import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class RequestClientConnControl implements HttpRequestInterceptor {
    private static final String PROXY_CONN_DIRECTIVE = "Proxy-Connection";
    private static final String TAG = "HttpClient";

    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpRequest, "HTTP request");
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT")) {
            httpRequest.setHeader(PROXY_CONN_DIRECTIVE, "Keep-Alive");
            return;
        }
        RouteInfo httpRoute = HttpClientContext.adapt(httpContext).getHttpRoute();
        if (httpRoute == null) {
            Log.isLoggable(TAG, 3);
            return;
        }
        if ((httpRoute.getHopCount() == 1 || httpRoute.isTunnelled()) && !httpRequest.containsHeader("Connection")) {
            httpRequest.addHeader("Connection", "Keep-Alive");
        }
        if (httpRoute.getHopCount() != 2 || httpRoute.isTunnelled() || httpRequest.containsHeader(PROXY_CONN_DIRECTIVE)) {
            return;
        }
        httpRequest.addHeader(PROXY_CONN_DIRECTIVE, "Keep-Alive");
    }
}
