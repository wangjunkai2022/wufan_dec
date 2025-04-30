package io.netty.channel.socket.oio;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.PreferHeapByteBufAllocator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.DatagramChannel;
import io.netty.channel.socket.DefaultDatagramChannelConfig;
import java.io.IOException;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Map;
/* loaded from: classes5.dex */
final class DefaultOioDatagramChannelConfig extends DefaultDatagramChannelConfig implements OioDatagramChannelConfig {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultOioDatagramChannelConfig(DatagramChannel datagramChannel, DatagramSocket datagramSocket) {
        super(datagramChannel, datagramSocket);
        setAllocator((ByteBufAllocator) new PreferHeapByteBufAllocator(getAllocator()));
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == ChannelOption.SO_TIMEOUT) {
            return (T) Integer.valueOf(getSoTimeout());
        }
        return (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), ChannelOption.SO_TIMEOUT);
    }

    @Override // io.netty.channel.socket.oio.OioDatagramChannelConfig
    public int getSoTimeout() {
        try {
            return javaSocket().getSoTimeout();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t3) {
        validate(channelOption, t3);
        if (channelOption == ChannelOption.SO_TIMEOUT) {
            setSoTimeout(((Integer) t3).intValue());
            return true;
        }
        return super.setOption(channelOption, t3);
    }

    @Override // io.netty.channel.socket.oio.OioDatagramChannelConfig
    public OioDatagramChannelConfig setSoTimeout(int i2) {
        try {
            javaSocket().setSoTimeout(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.socket.DatagramChannelConfig
    public OioDatagramChannelConfig setBroadcast(boolean z3) {
        super.setBroadcast(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.socket.DatagramChannelConfig
    public OioDatagramChannelConfig setInterface(InetAddress inetAddress) {
        super.setInterface(inetAddress);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.socket.DatagramChannelConfig
    public OioDatagramChannelConfig setLoopbackModeDisabled(boolean z3) {
        super.setLoopbackModeDisabled(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.socket.DatagramChannelConfig
    public OioDatagramChannelConfig setNetworkInterface(NetworkInterface networkInterface) {
        super.setNetworkInterface(networkInterface);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.socket.DatagramChannelConfig
    public OioDatagramChannelConfig setReceiveBufferSize(int i2) {
        super.setReceiveBufferSize(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.socket.DatagramChannelConfig
    public OioDatagramChannelConfig setReuseAddress(boolean z3) {
        super.setReuseAddress(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.socket.DatagramChannelConfig
    public OioDatagramChannelConfig setSendBufferSize(int i2) {
        super.setSendBufferSize(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.socket.DatagramChannelConfig
    public OioDatagramChannelConfig setTimeToLive(int i2) {
        super.setTimeToLive(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.socket.DatagramChannelConfig
    public OioDatagramChannelConfig setTrafficClass(int i2) {
        super.setTrafficClass(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setAutoClose(boolean z3) {
        super.setAutoClose(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setAutoRead(boolean z3) {
        super.setAutoRead(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setConnectTimeoutMillis(int i2) {
        super.setConnectTimeoutMillis(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setMaxMessagesPerRead(int i2) {
        super.setMaxMessagesPerRead(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setWriteBufferHighWaterMark(int i2) {
        super.setWriteBufferHighWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setWriteBufferLowWaterMark(int i2) {
        super.setWriteBufferLowWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultDatagramChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioDatagramChannelConfig setWriteSpinCount(int i2) {
        super.setWriteSpinCount(i2);
        return this;
    }
}
