package io.netty.handler.codec.http;
/* loaded from: classes5.dex */
public class HttpRequestDecoder extends HttpObjectDecoder {
    public HttpRequestDecoder() {
    }

    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    protected HttpMessage createInvalidMessage() {
        return new DefaultFullHttpRequest(HttpVersion.HTTP_1_0, HttpMethod.GET, "/bad-request", this.validateHeaders);
    }

    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    protected HttpMessage createMessage(String[] strArr) throws Exception {
        return new DefaultHttpRequest(HttpVersion.valueOf(strArr[2]), HttpMethod.valueOf(strArr[0]), strArr[1], this.validateHeaders);
    }

    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    protected boolean isDecodingRequest() {
        return true;
    }

    public HttpRequestDecoder(int i2, int i4, int i5) {
        super(i2, i4, i5, true);
    }

    public HttpRequestDecoder(int i2, int i4, int i5, boolean z3) {
        super(i2, i4, i5, true, z3);
    }

    public HttpRequestDecoder(int i2, int i4, int i5, boolean z3, int i6) {
        super(i2, i4, i5, true, z3, i6);
    }
}
