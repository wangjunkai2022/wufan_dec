package io.netty.channel;

import io.netty.util.concurrent.PromiseAggregator;
@Deprecated
/* loaded from: classes5.dex */
public final class ChannelPromiseAggregator extends PromiseAggregator<Void, ChannelFuture> implements ChannelFutureListener {
    public ChannelPromiseAggregator(ChannelPromise channelPromise) {
        super(channelPromise);
    }
}
