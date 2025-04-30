package io.netty.channel.socket;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
/* loaded from: classes5.dex */
public interface ServerSocketChannelConfig extends ChannelConfig {
    int getBacklog();

    int getReceiveBufferSize();

    boolean isReuseAddress();

    @Override // io.netty.channel.ChannelConfig
    ServerSocketChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    @Override // io.netty.channel.ChannelConfig
    ServerSocketChannelConfig setAutoRead(boolean z3);

    ServerSocketChannelConfig setBacklog(int i2);

    @Override // io.netty.channel.ChannelConfig
    ServerSocketChannelConfig setConnectTimeoutMillis(int i2);

    @Override // io.netty.channel.ChannelConfig
    @Deprecated
    ServerSocketChannelConfig setMaxMessagesPerRead(int i2);

    @Override // io.netty.channel.ChannelConfig
    ServerSocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    ServerSocketChannelConfig setPerformancePreferences(int i2, int i4, int i5);

    ServerSocketChannelConfig setReceiveBufferSize(int i2);

    @Override // io.netty.channel.ChannelConfig
    ServerSocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    ServerSocketChannelConfig setReuseAddress(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    ServerSocketChannelConfig setWriteBufferHighWaterMark(int i2);

    @Override // io.netty.channel.ChannelConfig
    ServerSocketChannelConfig setWriteBufferLowWaterMark(int i2);

    @Override // io.netty.channel.ChannelConfig
    ServerSocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override // io.netty.channel.ChannelConfig
    ServerSocketChannelConfig setWriteSpinCount(int i2);
}
