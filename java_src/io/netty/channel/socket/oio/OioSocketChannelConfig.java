package io.netty.channel.socket.oio;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.SocketChannelConfig;
@Deprecated
/* loaded from: classes5.dex */
public interface OioSocketChannelConfig extends SocketChannelConfig {
    int getSoTimeout();

    @Override // io.netty.channel.socket.SocketChannelConfig, io.netty.channel.ChannelConfig
    OioSocketChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    @Override // io.netty.channel.socket.SocketChannelConfig
    OioSocketChannelConfig setAllowHalfClosure(boolean z3);

    @Override // io.netty.channel.socket.SocketChannelConfig, io.netty.channel.ChannelConfig
    OioSocketChannelConfig setAutoClose(boolean z3);

    @Override // io.netty.channel.socket.SocketChannelConfig, io.netty.channel.ChannelConfig
    OioSocketChannelConfig setAutoRead(boolean z3);

    @Override // io.netty.channel.socket.SocketChannelConfig, io.netty.channel.ChannelConfig
    OioSocketChannelConfig setConnectTimeoutMillis(int i2);

    @Override // io.netty.channel.socket.SocketChannelConfig
    OioSocketChannelConfig setKeepAlive(boolean z3);

    @Override // io.netty.channel.socket.SocketChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    OioSocketChannelConfig setMaxMessagesPerRead(int i2);

    @Override // io.netty.channel.socket.SocketChannelConfig, io.netty.channel.ChannelConfig
    OioSocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    @Override // io.netty.channel.socket.SocketChannelConfig
    OioSocketChannelConfig setPerformancePreferences(int i2, int i4, int i5);

    @Override // io.netty.channel.socket.SocketChannelConfig
    OioSocketChannelConfig setReceiveBufferSize(int i2);

    @Override // io.netty.channel.socket.SocketChannelConfig, io.netty.channel.ChannelConfig
    OioSocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    @Override // io.netty.channel.socket.SocketChannelConfig
    OioSocketChannelConfig setReuseAddress(boolean z3);

    @Override // io.netty.channel.socket.SocketChannelConfig
    OioSocketChannelConfig setSendBufferSize(int i2);

    @Override // io.netty.channel.socket.SocketChannelConfig
    OioSocketChannelConfig setSoLinger(int i2);

    OioSocketChannelConfig setSoTimeout(int i2);

    @Override // io.netty.channel.socket.SocketChannelConfig
    OioSocketChannelConfig setTcpNoDelay(boolean z3);

    @Override // io.netty.channel.socket.SocketChannelConfig
    OioSocketChannelConfig setTrafficClass(int i2);

    @Override // io.netty.channel.ChannelConfig
    OioSocketChannelConfig setWriteBufferHighWaterMark(int i2);

    @Override // io.netty.channel.ChannelConfig
    OioSocketChannelConfig setWriteBufferLowWaterMark(int i2);

    @Override // io.netty.channel.socket.SocketChannelConfig, io.netty.channel.ChannelConfig
    OioSocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override // io.netty.channel.socket.SocketChannelConfig, io.netty.channel.ChannelConfig
    OioSocketChannelConfig setWriteSpinCount(int i2);
}
