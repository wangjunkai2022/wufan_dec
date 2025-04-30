package io.netty.handler.codec.http;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.embedded.EmbeddedChannel;
import io.netty.handler.codec.compression.ZlibCodecFactory;
import io.netty.handler.codec.compression.ZlibWrapper;
import io.netty.handler.codec.http.HttpContentEncoder;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
/* loaded from: classes5.dex */
public class HttpContentCompressor extends HttpContentEncoder {
    private final int compressionLevel;
    private final int contentSizeThreshold;
    private ChannelHandlerContext ctx;
    private final int memLevel;
    private final int windowBits;

    /* renamed from: io.netty.handler.codec.http.HttpContentCompressor$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper;

        static {
            int[] iArr = new int[ZlibWrapper.values().length];
            $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper = iArr;
            try {
                iArr[ZlibWrapper.GZIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$ZlibWrapper[ZlibWrapper.ZLIB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public HttpContentCompressor() {
        this(6);
    }

    @Override // io.netty.handler.codec.http.HttpContentEncoder
    protected HttpContentEncoder.Result beginEncode(HttpResponse httpResponse, String str) throws Exception {
        ZlibWrapper determineWrapper;
        String str2;
        if ((this.contentSizeThreshold <= 0 || !(httpResponse instanceof HttpContent) || ((HttpContent) httpResponse).content().readableBytes() >= this.contentSizeThreshold) && httpResponse.headers().get(HttpHeaderNames.CONTENT_ENCODING) == null && (determineWrapper = determineWrapper(str)) != null) {
            int i2 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper[determineWrapper.ordinal()];
            if (i2 == 1) {
                str2 = "gzip";
            } else if (i2 != 2) {
                throw new Error();
            } else {
                str2 = "deflate";
            }
            return new HttpContentEncoder.Result(str2, new EmbeddedChannel(this.ctx.channel().id(), this.ctx.channel().metadata().hasDisconnect(), this.ctx.channel().config(), ZlibCodecFactory.newZlibEncoder(determineWrapper, this.compressionLevel, this.windowBits, this.memLevel)));
        }
        return null;
    }

    protected ZlibWrapper determineWrapper(String str) {
        String[] split = str.split(",");
        int length = split.length;
        int i2 = 0;
        float f4 = -1.0f;
        float f5 = -1.0f;
        float f6 = -1.0f;
        while (true) {
            float f7 = 0.0f;
            if (i2 >= length) {
                break;
            }
            String str2 = split[i2];
            int indexOf = str2.indexOf(61);
            if (indexOf != -1) {
                try {
                    f7 = Float.parseFloat(str2.substring(indexOf + 1));
                } catch (NumberFormatException unused) {
                }
            } else {
                f7 = 1.0f;
            }
            if (str2.contains(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) {
                f6 = f7;
            } else if (str2.contains("gzip") && f7 > f4) {
                f4 = f7;
            } else if (str2.contains("deflate") && f7 > f5) {
                f5 = f7;
            }
            i2++;
        }
        if (f4 > 0.0f || f5 > 0.0f) {
            if (f4 >= f5) {
                return ZlibWrapper.GZIP;
            }
            return ZlibWrapper.ZLIB;
        } else if (f6 > 0.0f) {
            if (f4 == -1.0f) {
                return ZlibWrapper.GZIP;
            }
            if (f5 == -1.0f) {
                return ZlibWrapper.ZLIB;
            }
            return null;
        } else {
            return null;
        }
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.ctx = channelHandlerContext;
    }

    public HttpContentCompressor(int i2) {
        this(i2, 15, 8, 0);
    }

    public HttpContentCompressor(int i2, int i4, int i5) {
        this(i2, i4, i5, 0);
    }

    public HttpContentCompressor(int i2, int i4, int i5, int i6) {
        if (i2 < 0 || i2 > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
        } else if (i4 < 9 || i4 > 15) {
            throw new IllegalArgumentException("windowBits: " + i4 + " (expected: 9-15)");
        } else if (i5 < 1 || i5 > 9) {
            throw new IllegalArgumentException("memLevel: " + i5 + " (expected: 1-9)");
        } else if (i6 >= 0) {
            this.compressionLevel = i2;
            this.windowBits = i4;
            this.memLevel = i5;
            this.contentSizeThreshold = i6;
        } else {
            throw new IllegalArgumentException("contentSizeThreshold: " + i6 + " (expected: non negative number)");
        }
    }
}
