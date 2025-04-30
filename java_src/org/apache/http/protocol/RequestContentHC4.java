package org.apache.http.protocol;

import io.netty.handler.codec.http.HttpHeaders;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.ProtocolVersion;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class RequestContentHC4 implements HttpRequestInterceptor {
    private final boolean overwrite;

    public RequestContentHC4() {
        this(false);
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpRequest, "HTTP request");
        if (httpRequest instanceof HttpEntityEnclosingRequest) {
            if (this.overwrite) {
                httpRequest.removeHeaders("Transfer-Encoding");
                httpRequest.removeHeaders("Content-Length");
            } else if (!httpRequest.containsHeader("Transfer-Encoding")) {
                if (httpRequest.containsHeader("Content-Length")) {
                    throw new ProtocolException("Content-Length header already present");
                }
            } else {
                throw new ProtocolException("Transfer-encoding header already present");
            }
            ProtocolVersion protocolVersion = httpRequest.getRequestLine().getProtocolVersion();
            HttpEntity entity = ((HttpEntityEnclosingRequest) httpRequest).getEntity();
            if (entity == null) {
                httpRequest.addHeader("Content-Length", "0");
                return;
            }
            if (!entity.isChunked() && entity.getContentLength() >= 0) {
                httpRequest.addHeader("Content-Length", Long.toString(entity.getContentLength()));
            } else if (!protocolVersion.lessEquals(HttpVersion.HTTP_1_0)) {
                httpRequest.addHeader("Transfer-Encoding", HttpHeaders.Values.CHUNKED);
            } else {
                throw new ProtocolException("Chunked transfer encoding not allowed for " + protocolVersion);
            }
            if (entity.getContentType() != null && !httpRequest.containsHeader("Content-Type")) {
                httpRequest.addHeader(entity.getContentType());
            }
            if (entity.getContentEncoding() == null || httpRequest.containsHeader("Content-Encoding")) {
                return;
            }
            httpRequest.addHeader(entity.getContentEncoding());
        }
    }

    public RequestContentHC4(boolean z3) {
        this.overwrite = z3;
    }
}
