package io.netty.handler.codec.stomp;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelPipeline;
import io.netty.handler.codec.MessageAggregator;
/* loaded from: classes5.dex */
public class StompSubframeAggregator extends MessageAggregator<a, StompHeadersSubframe, StompContentSubframe, StompFrame> {
    public StompSubframeAggregator(int i2) {
        super(i2);
    }

    @Override // io.netty.handler.codec.MessageAggregator
    protected boolean closeAfterContinueResponse(Object obj) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.MessageAggregator
    protected boolean ignoreContentAfterContinueResponse(Object obj) throws Exception {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageAggregator
    public Object newContinueResponse(StompHeadersSubframe stompHeadersSubframe, int i2, ChannelPipeline channelPipeline) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageAggregator
    public StompFrame beginAggregation(StompHeadersSubframe stompHeadersSubframe, ByteBuf byteBuf) throws Exception {
        DefaultStompFrame defaultStompFrame = new DefaultStompFrame(stompHeadersSubframe.command(), byteBuf);
        defaultStompFrame.headers().set(stompHeadersSubframe.headers());
        return defaultStompFrame;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageAggregator
    public boolean isAggregated(a aVar) throws Exception {
        return aVar instanceof StompFrame;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageAggregator
    public boolean isContentLengthInvalid(StompHeadersSubframe stompHeadersSubframe, int i2) {
        return ((int) Math.min(2147483647L, stompHeadersSubframe.headers().getLong(StompHeaders.CONTENT_LENGTH, -1L))) > i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageAggregator
    public boolean isContentMessage(a aVar) throws Exception {
        return aVar instanceof StompContentSubframe;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageAggregator
    public boolean isLastContentMessage(StompContentSubframe stompContentSubframe) throws Exception {
        return stompContentSubframe instanceof LastStompContentSubframe;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageAggregator
    public boolean isStartMessage(a aVar) throws Exception {
        return aVar instanceof StompHeadersSubframe;
    }
}
