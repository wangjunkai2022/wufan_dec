package io.netty.handler.codec.http;
/* loaded from: classes5.dex */
public class HttpResponseDecoder extends HttpObjectDecoder {
    private static final HttpResponseStatus UNKNOWN_STATUS = new HttpResponseStatus(999, "Unknown");

    public HttpResponseDecoder() {
    }

    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    protected HttpMessage createInvalidMessage() {
        return new DefaultFullHttpResponse(HttpVersion.HTTP_1_0, UNKNOWN_STATUS, this.validateHeaders);
    }

    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    protected HttpMessage createMessage(String[] strArr) {
        return new DefaultHttpResponse(HttpVersion.valueOf(strArr[0]), HttpResponseStatus.valueOf(Integer.parseInt(strArr[1]), strArr[2]), this.validateHeaders);
    }

    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    protected boolean isDecodingRequest() {
        return false;
    }

    public HttpResponseDecoder(int i2, int i4, int i5) {
        super(i2, i4, i5, true);
    }

    public HttpResponseDecoder(int i2, int i4, int i5, boolean z3) {
        super(i2, i4, i5, true, z3);
    }

    public HttpResponseDecoder(int i2, int i4, int i5, boolean z3, int i6) {
        super(i2, i4, i5, true, z3, i6);
    }
}
