package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.CombinedChannelDuplexHandler;
import io.netty.handler.codec.http.HttpServerUpgradeHandler;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
/* loaded from: classes5.dex */
public final class HttpServerCodec extends CombinedChannelDuplexHandler<HttpRequestDecoder, HttpResponseEncoder> implements HttpServerUpgradeHandler.SourceCodec {
    private final Queue<HttpMethod> queue;

    /* loaded from: classes5.dex */
    private final class HttpServerResponseEncoder extends HttpResponseEncoder {
        private HttpMethod method;

        private HttpServerResponseEncoder() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.handler.codec.http.HttpResponseEncoder, io.netty.handler.codec.http.HttpObjectEncoder
        public boolean isContentAlwaysEmpty(HttpResponse httpResponse) {
            HttpMethod httpMethod = (HttpMethod) HttpServerCodec.this.queue.poll();
            this.method = httpMethod;
            return HttpMethod.HEAD.equals(httpMethod) || super.isContentAlwaysEmpty(httpResponse);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.handler.codec.http.HttpResponseEncoder, io.netty.handler.codec.http.HttpObjectEncoder
        public void sanitizeHeadersBeforeEncode(HttpResponse httpResponse, boolean z3) {
            if (!z3 && HttpMethod.CONNECT.equals(this.method) && httpResponse.status().codeClass() == HttpStatusClass.SUCCESS) {
                httpResponse.headers().remove(HttpHeaderNames.TRANSFER_ENCODING);
            } else {
                super.sanitizeHeadersBeforeEncode(httpResponse, z3);
            }
        }
    }

    public HttpServerCodec() {
        this(4096, 8192, 8192);
    }

    @Override // io.netty.handler.codec.http.HttpServerUpgradeHandler.SourceCodec
    public void upgradeFrom(ChannelHandlerContext channelHandlerContext) {
        channelHandlerContext.pipeline().remove(this);
    }

    /* loaded from: classes5.dex */
    private final class HttpServerRequestDecoder extends HttpRequestDecoder {
        HttpServerRequestDecoder(int i2, int i4, int i5) {
            super(i2, i4, i5);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.handler.codec.http.HttpObjectDecoder, io.netty.handler.codec.ByteToMessageDecoder
        public void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
            super.decode(channelHandlerContext, byteBuf, list);
            int size = list.size();
            for (int size2 = list.size(); size2 < size; size2++) {
                Object obj = list.get(size2);
                if (obj instanceof HttpRequest) {
                    HttpServerCodec.this.queue.add(((HttpRequest) obj).method());
                }
            }
        }

        HttpServerRequestDecoder(int i2, int i4, int i5, boolean z3) {
            super(i2, i4, i5, z3);
        }

        HttpServerRequestDecoder(int i2, int i4, int i5, boolean z3, int i6) {
            super(i2, i4, i5, z3, i6);
        }
    }

    public HttpServerCodec(int i2, int i4, int i5) {
        this.queue = new ArrayDeque();
        init(new HttpServerRequestDecoder(i2, i4, i5), new HttpServerResponseEncoder());
    }

    public HttpServerCodec(int i2, int i4, int i5, boolean z3) {
        this.queue = new ArrayDeque();
        init(new HttpServerRequestDecoder(i2, i4, i5, z3), new HttpServerResponseEncoder());
    }

    public HttpServerCodec(int i2, int i4, int i5, boolean z3, int i6) {
        this.queue = new ArrayDeque();
        init(new HttpServerRequestDecoder(i2, i4, i5, z3, i6), new HttpServerResponseEncoder());
    }
}
