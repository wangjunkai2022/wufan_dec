package io.netty.channel.socket.oio;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.Channel;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.PreferHeapByteBufAllocator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.DefaultSocketChannelConfig;
import io.netty.channel.socket.SocketChannel;
import java.io.IOException;
import java.net.Socket;
import java.util.Map;
@Deprecated
/* loaded from: classes5.dex */
public class DefaultOioSocketChannelConfig extends DefaultSocketChannelConfig implements OioSocketChannelConfig {
    @Deprecated
    public DefaultOioSocketChannelConfig(SocketChannel socketChannel, Socket socket) {
        super(socketChannel, socket);
        setAllocator((ByteBufAllocator) new PreferHeapByteBufAllocator(getAllocator()));
    }

    @Override // io.netty.channel.DefaultChannelConfig
    protected void autoReadCleared() {
        Channel channel = this.channel;
        if (channel instanceof OioSocketChannel) {
            ((OioSocketChannel) channel).clearReadPending0();
        }
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == ChannelOption.SO_TIMEOUT) {
            return (T) Integer.valueOf(getSoTimeout());
        }
        return (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), ChannelOption.SO_TIMEOUT);
    }

    @Override // io.netty.channel.socket.oio.OioSocketChannelConfig
    public int getSoTimeout() {
        try {
            return this.javaSocket.getSoTimeout();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t3) {
        validate(channelOption, t3);
        if (channelOption == ChannelOption.SO_TIMEOUT) {
            setSoTimeout(((Integer) t3).intValue());
            return true;
        }
        return super.setOption(channelOption, t3);
    }

    @Override // io.netty.channel.socket.oio.OioSocketChannelConfig
    public OioSocketChannelConfig setSoTimeout(int i2) {
        try {
            this.javaSocket.setSoTimeout(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.socket.SocketChannelConfig
    public OioSocketChannelConfig setAllowHalfClosure(boolean z3) {
        super.setAllowHalfClosure(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.socket.SocketChannelConfig
    public OioSocketChannelConfig setKeepAlive(boolean z3) {
        super.setKeepAlive(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.socket.SocketChannelConfig
    public OioSocketChannelConfig setPerformancePreferences(int i2, int i4, int i5) {
        super.setPerformancePreferences(i2, i4, i5);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.socket.SocketChannelConfig
    public OioSocketChannelConfig setReceiveBufferSize(int i2) {
        super.setReceiveBufferSize(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.socket.SocketChannelConfig
    public OioSocketChannelConfig setReuseAddress(boolean z3) {
        super.setReuseAddress(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.socket.SocketChannelConfig
    public OioSocketChannelConfig setSendBufferSize(int i2) {
        super.setSendBufferSize(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.socket.SocketChannelConfig
    public OioSocketChannelConfig setSoLinger(int i2) {
        super.setSoLinger(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.socket.SocketChannelConfig
    public OioSocketChannelConfig setTcpNoDelay(boolean z3) {
        super.setTcpNoDelay(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.socket.SocketChannelConfig
    public OioSocketChannelConfig setTrafficClass(int i2) {
        super.setTrafficClass(i2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultOioSocketChannelConfig(OioSocketChannel oioSocketChannel, Socket socket) {
        super(oioSocketChannel, socket);
        setAllocator((ByteBufAllocator) new PreferHeapByteBufAllocator(getAllocator()));
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioSocketChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioSocketChannelConfig setAutoClose(boolean z3) {
        super.setAutoClose(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioSocketChannelConfig setAutoRead(boolean z3) {
        super.setAutoRead(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioSocketChannelConfig setConnectTimeoutMillis(int i2) {
        super.setConnectTimeoutMillis(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public OioSocketChannelConfig setMaxMessagesPerRead(int i2) {
        super.setMaxMessagesPerRead(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioSocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioSocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioSocketChannelConfig setWriteBufferHighWaterMark(int i2) {
        super.setWriteBufferHighWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioSocketChannelConfig setWriteBufferLowWaterMark(int i2) {
        super.setWriteBufferLowWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioSocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioSocketChannelConfig setWriteSpinCount(int i2) {
        super.setWriteSpinCount(i2);
        return this;
    }
}
