package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.base64.Base64;
import io.netty.handler.codec.base64.Base64Dialect;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpClientUpgradeHandler;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.util.CharsetUtil;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.collection.CharObjectMap;
import io.netty.util.internal.ObjectUtil;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class Http2ClientUpgradeCodec implements HttpClientUpgradeHandler.UpgradeCodec {
    private static final List<CharSequence> UPGRADE_HEADERS = Collections.singletonList(Http2CodecUtil.HTTP_UPGRADE_SETTINGS_HEADER);
    private final Http2ConnectionHandler connectionHandler;
    private final String handlerName;
    private final ChannelHandler http2MultiplexHandler;
    private final ChannelHandler upgradeToHandler;

    public Http2ClientUpgradeCodec(Http2FrameCodec http2FrameCodec, ChannelHandler channelHandler) {
        this((String) null, http2FrameCodec, channelHandler);
    }

    private CharSequence getSettingsHeaderValue(ChannelHandlerContext channelHandlerContext) {
        ByteBuf byteBuf;
        ByteBuf byteBuf2 = null;
        try {
            Http2Settings localSettings = this.connectionHandler.decoder().localSettings();
            ByteBuf buffer = channelHandlerContext.alloc().buffer(localSettings.size() * 6);
            try {
                for (CharObjectMap.PrimitiveEntry<Long> primitiveEntry : localSettings.entries()) {
                    buffer.writeChar(primitiveEntry.key());
                    buffer.writeInt(primitiveEntry.value().intValue());
                }
                byteBuf2 = Base64.encode(buffer, Base64Dialect.URL_SAFE);
                String byteBuf3 = byteBuf2.toString(CharsetUtil.UTF_8);
                ReferenceCountUtil.release(buffer);
                ReferenceCountUtil.release(byteBuf2);
                return byteBuf3;
            } catch (Throwable th) {
                th = th;
                ByteBuf byteBuf4 = byteBuf2;
                byteBuf2 = buffer;
                byteBuf = byteBuf4;
                ReferenceCountUtil.release(byteBuf2);
                ReferenceCountUtil.release(byteBuf);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            byteBuf = null;
        }
    }

    @Override // io.netty.handler.codec.http.HttpClientUpgradeHandler.UpgradeCodec
    public CharSequence protocol() {
        return Http2CodecUtil.HTTP_UPGRADE_PROTOCOL_NAME;
    }

    @Override // io.netty.handler.codec.http.HttpClientUpgradeHandler.UpgradeCodec
    public Collection<CharSequence> setUpgradeHeaders(ChannelHandlerContext channelHandlerContext, HttpRequest httpRequest) {
        httpRequest.headers().set(Http2CodecUtil.HTTP_UPGRADE_SETTINGS_HEADER, getSettingsHeaderValue(channelHandlerContext));
        return UPGRADE_HEADERS;
    }

    @Override // io.netty.handler.codec.http.HttpClientUpgradeHandler.UpgradeCodec
    public void upgradeTo(ChannelHandlerContext channelHandlerContext, FullHttpResponse fullHttpResponse) throws Exception {
        try {
            channelHandlerContext.pipeline().addAfter(channelHandlerContext.name(), this.handlerName, this.upgradeToHandler);
            if (this.http2MultiplexHandler != null) {
                channelHandlerContext.pipeline().addAfter(channelHandlerContext.pipeline().context(this.connectionHandler).name(), null, this.http2MultiplexHandler);
            }
            this.connectionHandler.onHttpClientUpgrade();
        } catch (Http2Exception e4) {
            channelHandlerContext.fireExceptionCaught((Throwable) e4);
            channelHandlerContext.close();
        }
    }

    public Http2ClientUpgradeCodec(String str, Http2FrameCodec http2FrameCodec, ChannelHandler channelHandler) {
        this(str, http2FrameCodec, channelHandler, null);
    }

    public Http2ClientUpgradeCodec(Http2ConnectionHandler http2ConnectionHandler) {
        this((String) null, http2ConnectionHandler);
    }

    public Http2ClientUpgradeCodec(Http2ConnectionHandler http2ConnectionHandler, Http2MultiplexHandler http2MultiplexHandler) {
        this((String) null, http2ConnectionHandler, http2MultiplexHandler);
    }

    public Http2ClientUpgradeCodec(String str, Http2ConnectionHandler http2ConnectionHandler) {
        this(str, http2ConnectionHandler, http2ConnectionHandler, null);
    }

    public Http2ClientUpgradeCodec(String str, Http2ConnectionHandler http2ConnectionHandler, Http2MultiplexHandler http2MultiplexHandler) {
        this(str, http2ConnectionHandler, http2ConnectionHandler, http2MultiplexHandler);
    }

    private Http2ClientUpgradeCodec(String str, Http2ConnectionHandler http2ConnectionHandler, ChannelHandler channelHandler, Http2MultiplexHandler http2MultiplexHandler) {
        this.handlerName = str;
        this.connectionHandler = (Http2ConnectionHandler) ObjectUtil.checkNotNull(http2ConnectionHandler, "connectionHandler");
        this.upgradeToHandler = (ChannelHandler) ObjectUtil.checkNotNull(channelHandler, "upgradeToHandler");
        this.http2MultiplexHandler = http2MultiplexHandler;
    }
}
