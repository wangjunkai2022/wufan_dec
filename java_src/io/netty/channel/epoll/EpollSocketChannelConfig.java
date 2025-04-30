package io.netty.channel.epoll;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.SocketChannelConfig;
import io.netty.util.internal.PlatformDependent;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Map;
/* loaded from: classes5.dex */
public final class EpollSocketChannelConfig extends EpollChannelConfig implements SocketChannelConfig {
    private volatile boolean allowHalfClosure;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EpollSocketChannelConfig(EpollSocketChannel epollSocketChannel) {
        super(epollSocketChannel);
        if (PlatformDependent.canEnableTcpNoDelayByDefault()) {
            setTcpNoDelay(true);
        }
        calculateMaxBytesPerGatheringWrite();
    }

    private void calculateMaxBytesPerGatheringWrite() {
        if ((getSendBufferSize() << 1) > 0) {
            setMaxBytesPerGatheringWrite(getSendBufferSize() << 1);
        }
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == ChannelOption.SO_RCVBUF) {
            return (T) Integer.valueOf(getReceiveBufferSize());
        }
        if (channelOption == ChannelOption.SO_SNDBUF) {
            return (T) Integer.valueOf(getSendBufferSize());
        }
        if (channelOption == ChannelOption.TCP_NODELAY) {
            return (T) Boolean.valueOf(isTcpNoDelay());
        }
        if (channelOption == ChannelOption.SO_KEEPALIVE) {
            return (T) Boolean.valueOf(isKeepAlive());
        }
        if (channelOption == ChannelOption.SO_REUSEADDR) {
            return (T) Boolean.valueOf(isReuseAddress());
        }
        if (channelOption == ChannelOption.SO_LINGER) {
            return (T) Integer.valueOf(getSoLinger());
        }
        if (channelOption == ChannelOption.IP_TOS) {
            return (T) Integer.valueOf(getTrafficClass());
        }
        if (channelOption == ChannelOption.ALLOW_HALF_CLOSURE) {
            return (T) Boolean.valueOf(isAllowHalfClosure());
        }
        if (channelOption == EpollChannelOption.TCP_CORK) {
            return (T) Boolean.valueOf(isTcpCork());
        }
        if (channelOption == EpollChannelOption.TCP_NOTSENT_LOWAT) {
            return (T) Long.valueOf(getTcpNotSentLowAt());
        }
        if (channelOption == EpollChannelOption.TCP_KEEPIDLE) {
            return (T) Integer.valueOf(getTcpKeepIdle());
        }
        if (channelOption == EpollChannelOption.TCP_KEEPINTVL) {
            return (T) Integer.valueOf(getTcpKeepIntvl());
        }
        if (channelOption == EpollChannelOption.TCP_KEEPCNT) {
            return (T) Integer.valueOf(getTcpKeepCnt());
        }
        if (channelOption == EpollChannelOption.TCP_USER_TIMEOUT) {
            return (T) Integer.valueOf(getTcpUserTimeout());
        }
        if (channelOption == EpollChannelOption.TCP_QUICKACK) {
            return (T) Boolean.valueOf(isTcpQuickAck());
        }
        if (channelOption == EpollChannelOption.IP_TRANSPARENT) {
            return (T) Boolean.valueOf(isIpTransparent());
        }
        if (channelOption == EpollChannelOption.TCP_FASTOPEN_CONNECT) {
            return (T) Boolean.valueOf(isTcpFastOpenConnect());
        }
        if (channelOption == EpollChannelOption.SO_BUSY_POLL) {
            return (T) Integer.valueOf(getSoBusyPoll());
        }
        return (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), ChannelOption.SO_RCVBUF, ChannelOption.SO_SNDBUF, ChannelOption.TCP_NODELAY, ChannelOption.SO_KEEPALIVE, ChannelOption.SO_REUSEADDR, ChannelOption.SO_LINGER, ChannelOption.IP_TOS, ChannelOption.ALLOW_HALF_CLOSURE, EpollChannelOption.TCP_CORK, EpollChannelOption.TCP_NOTSENT_LOWAT, EpollChannelOption.TCP_KEEPCNT, EpollChannelOption.TCP_KEEPIDLE, EpollChannelOption.TCP_KEEPINTVL, EpollChannelOption.TCP_MD5SIG, EpollChannelOption.TCP_QUICKACK, EpollChannelOption.IP_TRANSPARENT, EpollChannelOption.TCP_FASTOPEN_CONNECT, EpollChannelOption.SO_BUSY_POLL);
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public int getReceiveBufferSize() {
        try {
            return ((EpollSocketChannel) this.channel).socket.getReceiveBufferSize();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public int getSendBufferSize() {
        try {
            return ((EpollSocketChannel) this.channel).socket.getSendBufferSize();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public int getSoBusyPoll() {
        try {
            return ((EpollSocketChannel) this.channel).socket.getSoBusyPoll();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public int getSoLinger() {
        try {
            return ((EpollSocketChannel) this.channel).socket.getSoLinger();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public int getTcpKeepCnt() {
        try {
            return ((EpollSocketChannel) this.channel).socket.getTcpKeepCnt();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public int getTcpKeepIdle() {
        try {
            return ((EpollSocketChannel) this.channel).socket.getTcpKeepIdle();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public int getTcpKeepIntvl() {
        try {
            return ((EpollSocketChannel) this.channel).socket.getTcpKeepIntvl();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public long getTcpNotSentLowAt() {
        try {
            return ((EpollSocketChannel) this.channel).socket.getTcpNotSentLowAt();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public int getTcpUserTimeout() {
        try {
            return ((EpollSocketChannel) this.channel).socket.getTcpUserTimeout();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public int getTrafficClass() {
        try {
            return ((EpollSocketChannel) this.channel).socket.getTrafficClass();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public boolean isAllowHalfClosure() {
        return this.allowHalfClosure;
    }

    public boolean isIpTransparent() {
        try {
            return ((EpollSocketChannel) this.channel).socket.isIpTransparent();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public boolean isKeepAlive() {
        try {
            return ((EpollSocketChannel) this.channel).socket.isKeepAlive();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public boolean isReuseAddress() {
        try {
            return ((EpollSocketChannel) this.channel).socket.isReuseAddress();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public boolean isTcpCork() {
        try {
            return ((EpollSocketChannel) this.channel).socket.isTcpCork();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public boolean isTcpFastOpenConnect() {
        try {
            return ((EpollSocketChannel) this.channel).socket.isTcpFastOpenConnect();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public boolean isTcpNoDelay() {
        try {
            return ((EpollSocketChannel) this.channel).socket.isTcpNoDelay();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public boolean isTcpQuickAck() {
        try {
            return ((EpollSocketChannel) this.channel).socket.isTcpQuickAck();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollSocketChannelConfig setIpTransparent(boolean z3) {
        try {
            ((EpollSocketChannel) this.channel).socket.setIpTransparent(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t3) {
        validate(channelOption, t3);
        if (channelOption == ChannelOption.SO_RCVBUF) {
            setReceiveBufferSize(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.SO_SNDBUF) {
            setSendBufferSize(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.TCP_NODELAY) {
            setTcpNoDelay(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == ChannelOption.SO_KEEPALIVE) {
            setKeepAlive(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == ChannelOption.SO_REUSEADDR) {
            setReuseAddress(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == ChannelOption.SO_LINGER) {
            setSoLinger(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.IP_TOS) {
            setTrafficClass(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.ALLOW_HALF_CLOSURE) {
            setAllowHalfClosure(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.TCP_CORK) {
            setTcpCork(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.TCP_NOTSENT_LOWAT) {
            setTcpNotSentLowAt(((Long) t3).longValue());
            return true;
        } else if (channelOption == EpollChannelOption.TCP_KEEPIDLE) {
            setTcpKeepIdle(((Integer) t3).intValue());
            return true;
        } else if (channelOption == EpollChannelOption.TCP_KEEPCNT) {
            setTcpKeepCnt(((Integer) t3).intValue());
            return true;
        } else if (channelOption == EpollChannelOption.TCP_KEEPINTVL) {
            setTcpKeepIntvl(((Integer) t3).intValue());
            return true;
        } else if (channelOption == EpollChannelOption.TCP_USER_TIMEOUT) {
            setTcpUserTimeout(((Integer) t3).intValue());
            return true;
        } else if (channelOption == EpollChannelOption.IP_TRANSPARENT) {
            setIpTransparent(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.TCP_MD5SIG) {
            setTcpMd5Sig((Map) t3);
            return true;
        } else if (channelOption == EpollChannelOption.TCP_QUICKACK) {
            setTcpQuickAck(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.TCP_FASTOPEN_CONNECT) {
            setTcpFastOpenConnect(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.SO_BUSY_POLL) {
            setSoBusyPoll(((Integer) t3).intValue());
            return true;
        } else {
            return super.setOption(channelOption, t3);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public EpollSocketChannelConfig setPerformancePreferences(int i2, int i4, int i5) {
        return this;
    }

    public EpollSocketChannelConfig setSoBusyPoll(int i2) {
        try {
            ((EpollSocketChannel) this.channel).socket.setSoBusyPoll(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollSocketChannelConfig setTcpCork(boolean z3) {
        try {
            ((EpollSocketChannel) this.channel).socket.setTcpCork(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollSocketChannelConfig setTcpFastOpenConnect(boolean z3) {
        try {
            ((EpollSocketChannel) this.channel).socket.setTcpFastOpenConnect(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollSocketChannelConfig setTcpKeepCnt(int i2) {
        try {
            ((EpollSocketChannel) this.channel).socket.setTcpKeepCnt(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Deprecated
    public EpollSocketChannelConfig setTcpKeepCntl(int i2) {
        return setTcpKeepCnt(i2);
    }

    public EpollSocketChannelConfig setTcpKeepIdle(int i2) {
        try {
            ((EpollSocketChannel) this.channel).socket.setTcpKeepIdle(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollSocketChannelConfig setTcpKeepIntvl(int i2) {
        try {
            ((EpollSocketChannel) this.channel).socket.setTcpKeepIntvl(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollSocketChannelConfig setTcpMd5Sig(Map<InetAddress, byte[]> map) {
        try {
            ((EpollSocketChannel) this.channel).setTcpMd5Sig(map);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollSocketChannelConfig setTcpNotSentLowAt(long j4) {
        try {
            ((EpollSocketChannel) this.channel).socket.setTcpNotSentLowAt(j4);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollSocketChannelConfig setTcpQuickAck(boolean z3) {
        try {
            ((EpollSocketChannel) this.channel).socket.setTcpQuickAck(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollSocketChannelConfig setTcpUserTimeout(int i2) {
        try {
            ((EpollSocketChannel) this.channel).socket.setTcpUserTimeout(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public EpollSocketChannelConfig setAllowHalfClosure(boolean z3) {
        this.allowHalfClosure = z3;
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig
    public EpollSocketChannelConfig setEpollMode(EpollMode epollMode) {
        super.setEpollMode(epollMode);
        return this;
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public EpollSocketChannelConfig setKeepAlive(boolean z3) {
        try {
            ((EpollSocketChannel) this.channel).socket.setKeepAlive(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public EpollSocketChannelConfig setReceiveBufferSize(int i2) {
        try {
            ((EpollSocketChannel) this.channel).socket.setReceiveBufferSize(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public EpollSocketChannelConfig setReuseAddress(boolean z3) {
        try {
            ((EpollSocketChannel) this.channel).socket.setReuseAddress(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public EpollSocketChannelConfig setSendBufferSize(int i2) {
        try {
            ((EpollSocketChannel) this.channel).socket.setSendBufferSize(i2);
            calculateMaxBytesPerGatheringWrite();
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public EpollSocketChannelConfig setSoLinger(int i2) {
        try {
            ((EpollSocketChannel) this.channel).socket.setSoLinger(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public EpollSocketChannelConfig setTcpNoDelay(boolean z3) {
        try {
            ((EpollSocketChannel) this.channel).socket.setTcpNoDelay(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.SocketChannelConfig
    public EpollSocketChannelConfig setTrafficClass(int i2) {
        try {
            ((EpollSocketChannel) this.channel).socket.setTrafficClass(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollSocketChannelConfig setAutoClose(boolean z3) {
        super.setAutoClose(z3);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollSocketChannelConfig setWriteBufferHighWaterMark(int i2) {
        super.setWriteBufferHighWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollSocketChannelConfig setWriteBufferLowWaterMark(int i2) {
        super.setWriteBufferLowWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollSocketChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollSocketChannelConfig setAutoRead(boolean z3) {
        super.setAutoRead(z3);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollSocketChannelConfig setConnectTimeoutMillis(int i2) {
        super.setConnectTimeoutMillis(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollSocketChannelConfig setMaxMessagesPerRead(int i2) {
        super.setMaxMessagesPerRead(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollSocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollSocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollSocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollSocketChannelConfig setWriteSpinCount(int i2) {
        super.setWriteSpinCount(i2);
        return this;
    }
}
