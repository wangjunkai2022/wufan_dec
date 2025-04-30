package io.netty.channel.epoll;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.ServerSocketChannelConfig;
import io.netty.channel.unix.UnixChannelOption;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Map;
/* loaded from: classes5.dex */
public final class EpollServerSocketChannelConfig extends EpollServerChannelConfig implements ServerSocketChannelConfig {
    /* JADX INFO: Access modifiers changed from: package-private */
    public EpollServerSocketChannelConfig(EpollServerSocketChannel epollServerSocketChannel) {
        super(epollServerSocketChannel);
        setReuseAddress(true);
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == UnixChannelOption.SO_REUSEPORT) {
            return (T) Boolean.valueOf(isReusePort());
        }
        if (channelOption == EpollChannelOption.IP_FREEBIND) {
            return (T) Boolean.valueOf(isFreeBind());
        }
        if (channelOption == EpollChannelOption.IP_TRANSPARENT) {
            return (T) Boolean.valueOf(isIpTransparent());
        }
        if (channelOption == EpollChannelOption.TCP_DEFER_ACCEPT) {
            return (T) Integer.valueOf(getTcpDeferAccept());
        }
        return (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), UnixChannelOption.SO_REUSEPORT, EpollChannelOption.IP_FREEBIND, EpollChannelOption.IP_TRANSPARENT, EpollChannelOption.TCP_DEFER_ACCEPT);
    }

    public int getTcpDeferAccept() {
        try {
            return ((EpollServerSocketChannel) this.channel).socket.getTcpDeferAccept();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public boolean isFreeBind() {
        try {
            return ((EpollServerSocketChannel) this.channel).socket.isIpFreeBind();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public boolean isIpTransparent() {
        try {
            return ((EpollServerSocketChannel) this.channel).socket.isIpTransparent();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public boolean isReusePort() {
        try {
            return ((EpollServerSocketChannel) this.channel).socket.isReusePort();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollServerSocketChannelConfig setFreeBind(boolean z3) {
        try {
            ((EpollServerSocketChannel) this.channel).socket.setIpFreeBind(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollServerSocketChannelConfig setIpTransparent(boolean z3) {
        try {
            ((EpollServerSocketChannel) this.channel).socket.setIpTransparent(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t3) {
        validate(channelOption, t3);
        if (channelOption == UnixChannelOption.SO_REUSEPORT) {
            setReusePort(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.IP_FREEBIND) {
            setFreeBind(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.IP_TRANSPARENT) {
            setIpTransparent(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.TCP_MD5SIG) {
            setTcpMd5Sig((Map) t3);
            return true;
        } else if (channelOption == EpollChannelOption.TCP_DEFER_ACCEPT) {
            setTcpDeferAccept(((Integer) t3).intValue());
            return true;
        } else {
            return super.setOption(channelOption, t3);
        }
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.socket.ServerSocketChannelConfig
    public EpollServerSocketChannelConfig setPerformancePreferences(int i2, int i4, int i5) {
        return this;
    }

    public EpollServerSocketChannelConfig setReusePort(boolean z3) {
        try {
            ((EpollServerSocketChannel) this.channel).socket.setReusePort(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollServerSocketChannelConfig setTcpDeferAccept(int i2) {
        try {
            ((EpollServerSocketChannel) this.channel).socket.setTcpDeferAccept(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollServerSocketChannelConfig setTcpMd5Sig(Map<InetAddress, byte[]> map) {
        try {
            ((EpollServerSocketChannel) this.channel).setTcpMd5Sig(map);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.socket.ServerSocketChannelConfig
    public EpollServerSocketChannelConfig setBacklog(int i2) {
        super.setBacklog(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.socket.ServerSocketChannelConfig
    public EpollServerSocketChannelConfig setReceiveBufferSize(int i2) {
        super.setReceiveBufferSize(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.socket.ServerSocketChannelConfig
    public EpollServerSocketChannelConfig setReuseAddress(boolean z3) {
        super.setReuseAddress(z3);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollServerSocketChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollServerSocketChannelConfig setAutoRead(boolean z3) {
        super.setAutoRead(z3);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollServerSocketChannelConfig setConnectTimeoutMillis(int i2) {
        super.setConnectTimeoutMillis(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollServerSocketChannelConfig setMaxMessagesPerRead(int i2) {
        super.setMaxMessagesPerRead(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollServerSocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollServerSocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollServerSocketChannelConfig setWriteBufferHighWaterMark(int i2) {
        super.setWriteBufferHighWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollServerSocketChannelConfig setWriteBufferLowWaterMark(int i2) {
        super.setWriteBufferLowWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollServerSocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollServerChannelConfig, io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollServerSocketChannelConfig setWriteSpinCount(int i2) {
        super.setWriteSpinCount(i2);
        return this;
    }
}
