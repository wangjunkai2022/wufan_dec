package io.netty.channel.udt;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
@Deprecated
/* loaded from: classes5.dex */
public interface UdtChannelConfig extends ChannelConfig {
    int getProtocolReceiveBufferSize();

    int getProtocolSendBufferSize();

    int getReceiveBufferSize();

    int getSendBufferSize();

    int getSoLinger();

    int getSystemReceiveBufferSize();

    int getSystemSendBufferSize();

    boolean isReuseAddress();

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setAutoClose(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setAutoRead(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setConnectTimeoutMillis(int i2);

    @Override // io.netty.channel.ChannelConfig
    @Deprecated
    UdtChannelConfig setMaxMessagesPerRead(int i2);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    UdtChannelConfig setProtocolReceiveBufferSize(int i2);

    UdtChannelConfig setProtocolSendBufferSize(int i2);

    UdtChannelConfig setReceiveBufferSize(int i2);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    UdtChannelConfig setReuseAddress(boolean z3);

    UdtChannelConfig setSendBufferSize(int i2);

    UdtChannelConfig setSoLinger(int i2);

    UdtChannelConfig setSystemReceiveBufferSize(int i2);

    UdtChannelConfig setSystemSendBufferSize(int i2);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setWriteBufferHighWaterMark(int i2);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setWriteBufferLowWaterMark(int i2);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setWriteSpinCount(int i2);
}
