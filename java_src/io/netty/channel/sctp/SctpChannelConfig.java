package io.netty.channel.sctp;

import com.sun.nio.sctp.SctpStandardSocketOptions;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
/* loaded from: classes5.dex */
public interface SctpChannelConfig extends ChannelConfig {
    SctpStandardSocketOptions.InitMaxStreams getInitMaxStreams();

    int getReceiveBufferSize();

    int getSendBufferSize();

    boolean isSctpNoDelay();

    @Override // io.netty.channel.ChannelConfig
    SctpChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    @Override // io.netty.channel.ChannelConfig
    SctpChannelConfig setAutoClose(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    SctpChannelConfig setAutoRead(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    SctpChannelConfig setConnectTimeoutMillis(int i2);

    SctpChannelConfig setInitMaxStreams(SctpStandardSocketOptions.InitMaxStreams initMaxStreams);

    @Override // io.netty.channel.ChannelConfig
    @Deprecated
    SctpChannelConfig setMaxMessagesPerRead(int i2);

    @Override // io.netty.channel.ChannelConfig
    SctpChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    SctpChannelConfig setReceiveBufferSize(int i2);

    @Override // io.netty.channel.ChannelConfig
    SctpChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    SctpChannelConfig setSctpNoDelay(boolean z3);

    SctpChannelConfig setSendBufferSize(int i2);

    @Override // io.netty.channel.ChannelConfig
    SctpChannelConfig setWriteBufferHighWaterMark(int i2);

    @Override // io.netty.channel.ChannelConfig
    SctpChannelConfig setWriteBufferLowWaterMark(int i2);

    @Override // io.netty.channel.ChannelConfig
    SctpChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override // io.netty.channel.ChannelConfig
    SctpChannelConfig setWriteSpinCount(int i2);
}
