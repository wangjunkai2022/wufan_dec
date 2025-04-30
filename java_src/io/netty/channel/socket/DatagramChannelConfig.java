package io.netty.channel.socket;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import java.net.InetAddress;
import java.net.NetworkInterface;
/* loaded from: classes5.dex */
public interface DatagramChannelConfig extends ChannelConfig {
    InetAddress getInterface();

    NetworkInterface getNetworkInterface();

    int getReceiveBufferSize();

    int getSendBufferSize();

    int getTimeToLive();

    int getTrafficClass();

    boolean isBroadcast();

    boolean isLoopbackModeDisabled();

    boolean isReuseAddress();

    @Override // io.netty.channel.ChannelConfig
    DatagramChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    @Override // io.netty.channel.ChannelConfig
    DatagramChannelConfig setAutoClose(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    DatagramChannelConfig setAutoRead(boolean z3);

    DatagramChannelConfig setBroadcast(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    DatagramChannelConfig setConnectTimeoutMillis(int i2);

    DatagramChannelConfig setInterface(InetAddress inetAddress);

    DatagramChannelConfig setLoopbackModeDisabled(boolean z3);

    @Override // io.netty.channel.ChannelConfig
    @Deprecated
    DatagramChannelConfig setMaxMessagesPerRead(int i2);

    @Override // io.netty.channel.ChannelConfig
    DatagramChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    DatagramChannelConfig setNetworkInterface(NetworkInterface networkInterface);

    DatagramChannelConfig setReceiveBufferSize(int i2);

    @Override // io.netty.channel.ChannelConfig
    DatagramChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    DatagramChannelConfig setReuseAddress(boolean z3);

    DatagramChannelConfig setSendBufferSize(int i2);

    DatagramChannelConfig setTimeToLive(int i2);

    DatagramChannelConfig setTrafficClass(int i2);

    @Override // io.netty.channel.ChannelConfig
    DatagramChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override // io.netty.channel.ChannelConfig
    DatagramChannelConfig setWriteSpinCount(int i2);
}
