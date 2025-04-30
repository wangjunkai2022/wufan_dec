package io.netty.channel;

import io.netty.util.concurrent.PromiseNotifier;
/* loaded from: classes5.dex */
public final class ChannelPromiseNotifier extends PromiseNotifier<Void, ChannelFuture> implements ChannelFutureListener {
    public ChannelPromiseNotifier(ChannelPromise... channelPromiseArr) {
        super(channelPromiseArr);
    }

    public ChannelPromiseNotifier(boolean z3, ChannelPromise... channelPromiseArr) {
        super(z3, channelPromiseArr);
    }
}
