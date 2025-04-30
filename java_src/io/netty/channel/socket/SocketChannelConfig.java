package io.netty.channel.socket;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
/* loaded from: classes5.dex */
public interface SocketChannelConfig extends ChannelConfig {
    int getReceiveBufferSize();

    int getSendBufferSize();

    int getSoLinger();

    int getTrafficClass();

    boolean isAllowHalfClosure();

    boolean isKeepAlive();

    boolean isReuseAddress();

    boolean isTcpNoDelay();

    @Override // io.netty.channel.ChannelConfig
    SocketChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    SocketChannelConfig setAllowHalfClosure(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    SocketChannelConfig setAutoClose(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    SocketChannelConfig setAutoRead(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    SocketChannelConfig setConnectTimeoutMillis(int i2);

    SocketChannelConfig setKeepAlive(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    @Deprecated
    SocketChannelConfig setMaxMessagesPerRead(int i2);

    @Override // io.netty.channel.ChannelConfig
    SocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    SocketChannelConfig setPerformancePreferences(int i2, int i4, int i5);

    SocketChannelConfig setReceiveBufferSize(int i2);

    @Override // io.netty.channel.ChannelConfig
    SocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    SocketChannelConfig setReuseAddress(boolean z3);

    SocketChannelConfig setSendBufferSize(int i2);

    SocketChannelConfig setSoLinger(int i2);

    SocketChannelConfig setTcpNoDelay(boolean z3);

    SocketChannelConfig setTrafficClass(int i2);

    @Override // io.netty.channel.ChannelConfig
    SocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override // io.netty.channel.ChannelConfig
    SocketChannelConfig setWriteSpinCount(int i2);
}
