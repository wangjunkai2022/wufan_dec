package io.netty.handler.codec.http;

import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class DefaultHttpResponse extends DefaultHttpMessage implements HttpResponse {
    private HttpResponseStatus status;

    public DefaultHttpResponse(HttpVersion httpVersion, HttpResponseStatus httpResponseStatus) {
        this(httpVersion, httpResponseStatus, true, false);
    }

    @Override // io.netty.handler.codec.http.DefaultHttpMessage, io.netty.handler.codec.http.DefaultHttpObject
    public boolean equals(Object obj) {
        return (obj instanceof DefaultHttpResponse) && this.status.equals(((DefaultHttpResponse) obj).status()) && super.equals(obj);
    }

    @Override // io.netty.handler.codec.http.HttpResponse
    @Deprecated
    public HttpResponseStatus getStatus() {
        return status();
    }

    @Override // io.netty.handler.codec.http.DefaultHttpMessage, io.netty.handler.codec.http.DefaultHttpObject
    public int hashCode() {
        return ((this.status.hashCode() + 31) * 31) + super.hashCode();
    }

    public HttpResponse setStatus(HttpResponseStatus httpResponseStatus) {
        this.status = (HttpResponseStatus) ObjectUtil.checkNotNull(httpResponseStatus, "status");
        return this;
    }

    @Override // io.netty.handler.codec.http.HttpResponse
    public HttpResponseStatus status() {
        return this.status;
    }

    public String toString() {
        return HttpMessageUtil.appendResponse(new StringBuilder(256), this).toString();
    }

    public DefaultHttpResponse(HttpVersion httpVersion, HttpResponseStatus httpResponseStatus, boolean z3) {
        this(httpVersion, httpResponseStatus, z3, false);
    }

    @Override // io.netty.handler.codec.http.DefaultHttpMessage, io.netty.handler.codec.http.HttpMessage, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
    public HttpResponse setProtocolVersion(HttpVersion httpVersion) {
        super.setProtocolVersion(httpVersion);
        return this;
    }

    public DefaultHttpResponse(HttpVersion httpVersion, HttpResponseStatus httpResponseStatus, boolean z3, boolean z4) {
        super(httpVersion, z3, z4);
        this.status = (HttpResponseStatus) ObjectUtil.checkNotNull(httpResponseStatus, "status");
    }

    public DefaultHttpResponse(HttpVersion httpVersion, HttpResponseStatus httpResponseStatus, HttpHeaders httpHeaders) {
        super(httpVersion, httpHeaders);
        this.status = (HttpResponseStatus) ObjectUtil.checkNotNull(httpResponseStatus, "status");
    }
}
