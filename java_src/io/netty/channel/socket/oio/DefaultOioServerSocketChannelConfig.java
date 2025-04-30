package io.netty.channel.socket.oio;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.Channel;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.PreferHeapByteBufAllocator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.DefaultServerSocketChannelConfig;
import io.netty.channel.socket.ServerSocketChannel;
import java.io.IOException;
import java.net.ServerSocket;
import java.util.Map;
@Deprecated
/* loaded from: classes5.dex */
public class DefaultOioServerSocketChannelConfig extends DefaultServerSocketChannelConfig implements OioServerSocketChannelConfig {
    @Deprecated
    public DefaultOioServerSocketChannelConfig(ServerSocketChannel serverSocketChannel, ServerSocket serverSocket) {
        super(serverSocketChannel, serverSocket);
        setAllocator((ByteBufAllocator) new PreferHeapByteBufAllocator(getAllocator()));
    }

    @Override // io.netty.channel.DefaultChannelConfig
    protected void autoReadCleared() {
        Channel channel = this.channel;
        if (channel instanceof OioServerSocketChannel) {
            ((OioServerSocketChannel) channel).clearReadPending0();
        }
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == ChannelOption.SO_TIMEOUT) {
            return (T) Integer.valueOf(getSoTimeout());
        }
        return (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), ChannelOption.SO_TIMEOUT);
    }

    @Override // io.netty.channel.socket.oio.OioServerSocketChannelConfig
    public int getSoTimeout() {
        try {
            return this.javaSocket.getSoTimeout();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t3) {
        validate(channelOption, t3);
        if (channelOption == ChannelOption.SO_TIMEOUT) {
            setSoTimeout(((Integer) t3).intValue());
            return true;
        }
        return super.setOption(channelOption, t3);
    }

    @Override // io.netty.channel.socket.oio.OioServerSocketChannelConfig
    public OioServerSocketChannelConfig setSoTimeout(int i2) {
        try {
            this.javaSocket.setSoTimeout(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioServerSocketChannelConfig setAutoClose(boolean z3) {
        super.setAutoClose(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.socket.ServerSocketChannelConfig
    public OioServerSocketChannelConfig setBacklog(int i2) {
        super.setBacklog(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.socket.ServerSocketChannelConfig
    public OioServerSocketChannelConfig setPerformancePreferences(int i2, int i4, int i5) {
        super.setPerformancePreferences(i2, i4, i5);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.socket.ServerSocketChannelConfig
    public OioServerSocketChannelConfig setReceiveBufferSize(int i2) {
        super.setReceiveBufferSize(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.socket.ServerSocketChannelConfig
    public OioServerSocketChannelConfig setReuseAddress(boolean z3) {
        super.setReuseAddress(z3);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultOioServerSocketChannelConfig(OioServerSocketChannel oioServerSocketChannel, ServerSocket serverSocket) {
        super(oioServerSocketChannel, serverSocket);
        setAllocator((ByteBufAllocator) new PreferHeapByteBufAllocator(getAllocator()));
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioServerSocketChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioServerSocketChannelConfig setAutoRead(boolean z3) {
        super.setAutoRead(z3);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioServerSocketChannelConfig setConnectTimeoutMillis(int i2) {
        super.setConnectTimeoutMillis(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public OioServerSocketChannelConfig setMaxMessagesPerRead(int i2) {
        super.setMaxMessagesPerRead(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioServerSocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioServerSocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioServerSocketChannelConfig setWriteBufferHighWaterMark(int i2) {
        super.setWriteBufferHighWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioServerSocketChannelConfig setWriteBufferLowWaterMark(int i2) {
        super.setWriteBufferLowWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioServerSocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.socket.DefaultServerSocketChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public OioServerSocketChannelConfig setWriteSpinCount(int i2) {
        super.setWriteSpinCount(i2);
        return this;
    }
}
