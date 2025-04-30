package org.apache.http.client.methods;

import java.net.URI;
import net.lingala.zip4j.util.e;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.message.BasicRequestLine;
import org.apache.http.params.HttpParams;
@NotThreadSafe
/* loaded from: classes5.dex */
public class HttpRequestWrapper extends AbstractHttpMessage implements HttpUriRequest {
    private final String method;
    private final HttpRequest original;
    private URI uri;
    private ProtocolVersion version;

    /* loaded from: classes5.dex */
    static class HttpEntityEnclosingRequestWrapper extends HttpRequestWrapper implements HttpEntityEnclosingRequest {
        private HttpEntity entity;

        public HttpEntityEnclosingRequestWrapper(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
            super(httpEntityEnclosingRequest);
            this.entity = httpEntityEnclosingRequest.getEntity();
        }

        public boolean expectContinue() {
            Header firstHeader = getFirstHeader("Expect");
            return firstHeader != null && "100-continue".equalsIgnoreCase(firstHeader.getValue());
        }

        public HttpEntity getEntity() {
            return this.entity;
        }

        public void setEntity(HttpEntity httpEntity) {
            this.entity = httpEntity;
        }
    }

    public static HttpRequestWrapper wrap(HttpRequest httpRequest) {
        if (httpRequest == null) {
            return null;
        }
        if (httpRequest instanceof HttpEntityEnclosingRequest) {
            return new HttpEntityEnclosingRequestWrapper((HttpEntityEnclosingRequest) httpRequest);
        }
        return new HttpRequestWrapper(httpRequest);
    }

    public void abort() throws UnsupportedOperationException {
        throw new UnsupportedOperationException();
    }

    public String getMethod() {
        return this.method;
    }

    public HttpRequest getOriginal() {
        return this.original;
    }

    @Deprecated
    public HttpParams getParams() {
        if (((AbstractHttpMessage) this).params == null) {
            ((AbstractHttpMessage) this).params = this.original.getParams().copy();
        }
        return ((AbstractHttpMessage) this).params;
    }

    public ProtocolVersion getProtocolVersion() {
        ProtocolVersion protocolVersion = this.version;
        return protocolVersion != null ? protocolVersion : this.original.getProtocolVersion();
    }

    public RequestLine getRequestLine() {
        String uri;
        URI uri2 = this.uri;
        if (uri2 != null) {
            uri = uri2.toASCIIString();
        } else {
            uri = this.original.getRequestLine().getUri();
        }
        if (uri == null || uri.length() == 0) {
            uri = e.F0;
        }
        return new BasicRequestLine(this.method, uri, getProtocolVersion());
    }

    public URI getURI() {
        return this.uri;
    }

    public boolean isAborted() {
        return false;
    }

    public void setProtocolVersion(ProtocolVersion protocolVersion) {
        this.version = protocolVersion;
    }

    public void setURI(URI uri) {
        this.uri = uri;
    }

    public String toString() {
        return getRequestLine() + " " + ((AbstractHttpMessage) this).headergroup;
    }

    private HttpRequestWrapper(HttpRequest httpRequest) {
        this.original = httpRequest;
        this.version = httpRequest.getRequestLine().getProtocolVersion();
        this.method = httpRequest.getRequestLine().getMethod();
        if (httpRequest instanceof HttpUriRequest) {
            this.uri = ((HttpUriRequest) httpRequest).getURI();
        } else {
            this.uri = null;
        }
        setHeaders(httpRequest.getAllHeaders());
    }
}
