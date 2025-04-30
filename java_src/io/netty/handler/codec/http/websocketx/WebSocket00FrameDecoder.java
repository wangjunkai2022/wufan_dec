package io.netty.handler.codec.http.websocketx;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ReplayingDecoder;
import io.netty.handler.codec.TooLongFrameException;
import io.netty.util.internal.ObjectUtil;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes5.dex */
public class WebSocket00FrameDecoder extends ReplayingDecoder<Void> implements a {
    static final int DEFAULT_MAX_FRAME_SIZE = 16384;
    private final long maxFrameSize;
    private boolean receivedClosingHandshake;

    public WebSocket00FrameDecoder() {
        this(16384);
    }

    private WebSocketFrame decodeBinaryFrame(ChannelHandlerContext channelHandlerContext, byte b4, ByteBuf byteBuf) {
        byte readByte;
        long j4 = 0;
        int i2 = 0;
        do {
            readByte = byteBuf.readByte();
            j4 = (j4 << 7) | (readByte & ByteCompanionObject.MAX_VALUE);
            if (j4 > this.maxFrameSize) {
                throw new TooLongFrameException();
            }
            i2++;
            if (i2 > 8) {
                throw new TooLongFrameException();
            }
        } while ((readByte & 128) == 128);
        if (b4 == -1 && j4 == 0) {
            this.receivedClosingHandshake = true;
            return new CloseWebSocketFrame(true, 0, channelHandlerContext.alloc().buffer(0));
        }
        return new BinaryWebSocketFrame(ByteBufUtil.readBytes(channelHandlerContext.alloc(), byteBuf, (int) j4));
    }

    private WebSocketFrame decodeTextFrame(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) {
        int readerIndex = byteBuf.readerIndex();
        int actualReadableBytes = actualReadableBytes();
        int indexOf = byteBuf.indexOf(readerIndex, readerIndex + actualReadableBytes, (byte) -1);
        if (indexOf == -1) {
            if (actualReadableBytes <= this.maxFrameSize) {
                return null;
            }
            throw new TooLongFrameException();
        }
        int i2 = indexOf - readerIndex;
        if (i2 <= this.maxFrameSize) {
            ByteBuf readBytes = ByteBufUtil.readBytes(channelHandlerContext.alloc(), byteBuf, i2);
            byteBuf.skipBytes(1);
            if (readBytes.indexOf(readBytes.readerIndex(), readBytes.writerIndex(), (byte) -1) < 0) {
                return new TextWebSocketFrame(readBytes);
            }
            readBytes.release();
            throw new IllegalArgumentException("a text frame should not contain 0xFF.");
        }
        throw new TooLongFrameException();
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        WebSocketFrame decodeTextFrame;
        if (this.receivedClosingHandshake) {
            byteBuf.skipBytes(actualReadableBytes());
            return;
        }
        byte readByte = byteBuf.readByte();
        if ((readByte & 128) == 128) {
            decodeTextFrame = decodeBinaryFrame(channelHandlerContext, readByte, byteBuf);
        } else {
            decodeTextFrame = decodeTextFrame(channelHandlerContext, byteBuf);
        }
        if (decodeTextFrame != null) {
            list.add(decodeTextFrame);
        }
    }

    public WebSocket00FrameDecoder(int i2) {
        this.maxFrameSize = i2;
    }

    public WebSocket00FrameDecoder(WebSocketDecoderConfig webSocketDecoderConfig) {
        this.maxFrameSize = ((WebSocketDecoderConfig) ObjectUtil.checkNotNull(webSocketDecoderConfig, "decoderConfig")).maxFramePayloadLength();
    }
}
