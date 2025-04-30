package org.apache.http.client.protocol;

import java.io.IOException;
import java.util.Collection;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class RequestDefaultHeadersHC4 implements HttpRequestInterceptor {
    private final Collection<? extends Header> defaultHeaders;

    public RequestDefaultHeadersHC4(Collection<? extends Header> collection) {
        this.defaultHeaders = collection;
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpRequest, "HTTP request");
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT")) {
            return;
        }
        Collection<? extends Header> collection = (Collection) httpRequest.getParams().getParameter("http.default-headers");
        if (collection == null) {
            collection = this.defaultHeaders;
        }
        if (collection != null) {
            for (Header header : collection) {
                httpRequest.addHeader(header);
            }
        }
    }

    public RequestDefaultHeadersHC4() {
        this(null);
    }
}
