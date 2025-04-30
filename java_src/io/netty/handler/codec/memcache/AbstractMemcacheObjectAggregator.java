package io.netty.handler.codec.memcache;

import io.netty.channel.ChannelPipeline;
import io.netty.handler.codec.MessageAggregator;
import io.netty.handler.codec.memcache.MemcacheMessage;
/* loaded from: classes5.dex */
public abstract class AbstractMemcacheObjectAggregator<H extends MemcacheMessage> extends MessageAggregator<a, H, MemcacheContent, FullMemcacheMessage> {
    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractMemcacheObjectAggregator(int i2) {
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

    protected boolean isContentLengthInvalid(H h4, int i2) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.handler.codec.MessageAggregator
    protected /* bridge */ /* synthetic */ boolean isContentLengthInvalid(Object obj, int i2) throws Exception {
        return isContentLengthInvalid((AbstractMemcacheObjectAggregator<H>) ((MemcacheMessage) obj), i2);
    }

    protected Object newContinueResponse(H h4, int i2, ChannelPipeline channelPipeline) {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.handler.codec.MessageAggregator
    protected /* bridge */ /* synthetic */ Object newContinueResponse(Object obj, int i2, ChannelPipeline channelPipeline) throws Exception {
        return newContinueResponse((AbstractMemcacheObjectAggregator<H>) ((MemcacheMessage) obj), i2, channelPipeline);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageAggregator
    public boolean isAggregated(a aVar) throws Exception {
        return aVar instanceof FullMemcacheMessage;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageAggregator
    public boolean isContentMessage(a aVar) throws Exception {
        return aVar instanceof MemcacheContent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageAggregator
    public boolean isLastContentMessage(MemcacheContent memcacheContent) throws Exception {
        return memcacheContent instanceof LastMemcacheContent;
    }
}
