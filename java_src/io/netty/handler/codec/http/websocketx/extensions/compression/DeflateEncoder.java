package io.netty.handler.codec.http.websocketx.extensions.compression;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.CompositeByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.embedded.EmbeddedChannel;
import io.netty.handler.codec.CodecException;
import io.netty.handler.codec.compression.ZlibCodecFactory;
import io.netty.handler.codec.compression.ZlibWrapper;
import io.netty.handler.codec.http.websocketx.BinaryWebSocketFrame;
import io.netty.handler.codec.http.websocketx.ContinuationWebSocketFrame;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionEncoder;
import io.netty.handler.codec.http.websocketx.extensions.WebSocketExtensionFilter;
import io.netty.util.internal.ObjectUtil;
import java.util.List;
/* loaded from: classes5.dex */
abstract class DeflateEncoder extends WebSocketExtensionEncoder {
    private final int compressionLevel;
    private EmbeddedChannel encoder;
    private final WebSocketExtensionFilter extensionEncoderFilter;
    private final boolean noContext;
    private final int windowSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeflateEncoder(int i2, int i4, boolean z3, WebSocketExtensionFilter webSocketExtensionFilter) {
        this.compressionLevel = i2;
        this.windowSize = i4;
        this.noContext = z3;
        this.extensionEncoderFilter = (WebSocketExtensionFilter) ObjectUtil.checkNotNull(webSocketExtensionFilter, "extensionEncoderFilter");
    }

    private void cleanup() {
        EmbeddedChannel embeddedChannel = this.encoder;
        if (embeddedChannel != null) {
            embeddedChannel.finishAndReleaseAll();
            this.encoder = null;
        }
    }

    private ByteBuf compressContent(ChannelHandlerContext channelHandlerContext, WebSocketFrame webSocketFrame) {
        if (this.encoder == null) {
            this.encoder = new EmbeddedChannel(ZlibCodecFactory.newZlibEncoder(ZlibWrapper.NONE, this.compressionLevel, this.windowSize, 8));
        }
        this.encoder.writeOutbound(webSocketFrame.content().retain());
        CompositeByteBuf compositeBuffer = channelHandlerContext.alloc().compositeBuffer();
        while (true) {
            ByteBuf byteBuf = (ByteBuf) this.encoder.readOutbound();
            if (byteBuf == null) {
                break;
            } else if (!byteBuf.isReadable()) {
                byteBuf.release();
            } else {
                compositeBuffer.addComponent(true, byteBuf);
            }
        }
        if (compositeBuffer.numComponents() > 0) {
            if (webSocketFrame.isFinalFragment() && this.noContext) {
                cleanup();
            }
            return removeFrameTail(webSocketFrame) ? compositeBuffer.slice(0, compositeBuffer.readableBytes() - DeflateDecoder.FRAME_TAIL.readableBytes()) : compositeBuffer;
        }
        compositeBuffer.release();
        throw new CodecException("cannot read compressed buffer");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToMessageEncoder
    public /* bridge */ /* synthetic */ void encode(ChannelHandlerContext channelHandlerContext, WebSocketFrame webSocketFrame, List list) throws Exception {
        encode2(channelHandlerContext, webSocketFrame, (List<Object>) list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WebSocketExtensionFilter extensionEncoderFilter() {
        return this.extensionEncoderFilter;
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerRemoved(ChannelHandlerContext channelHandlerContext) throws Exception {
        cleanup();
        super.handlerRemoved(channelHandlerContext);
    }

    protected abstract boolean removeFrameTail(WebSocketFrame webSocketFrame);

    protected abstract int rsv(WebSocketFrame webSocketFrame);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: encode  reason: avoid collision after fix types in other method */
    public void encode2(ChannelHandlerContext channelHandlerContext, WebSocketFrame webSocketFrame, List<Object> list) throws Exception {
        ByteBuf duplicate;
        Object continuationWebSocketFrame;
        if (webSocketFrame.content().isReadable()) {
            duplicate = compressContent(channelHandlerContext, webSocketFrame);
        } else if (webSocketFrame.isFinalFragment()) {
            duplicate = DeflateDecoder.EMPTY_DEFLATE_BLOCK.duplicate();
        } else {
            throw new CodecException("cannot compress content buffer");
        }
        if (webSocketFrame instanceof TextWebSocketFrame) {
            continuationWebSocketFrame = new TextWebSocketFrame(webSocketFrame.isFinalFragment(), rsv(webSocketFrame), duplicate);
        } else if (webSocketFrame instanceof BinaryWebSocketFrame) {
            continuationWebSocketFrame = new BinaryWebSocketFrame(webSocketFrame.isFinalFragment(), rsv(webSocketFrame), duplicate);
        } else if (webSocketFrame instanceof ContinuationWebSocketFrame) {
            continuationWebSocketFrame = new ContinuationWebSocketFrame(webSocketFrame.isFinalFragment(), rsv(webSocketFrame), duplicate);
        } else {
            throw new CodecException("unexpected frame type: " + webSocketFrame.getClass().getName());
        }
        list.add(continuationWebSocketFrame);
    }
}
