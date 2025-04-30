package io.netty.channel.epoll;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.FixedRecvByteBufAllocator;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.DatagramChannelConfig;
import io.netty.channel.unix.UnixChannelOption;
import io.netty.util.internal.ObjectUtil;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Map;
/* loaded from: classes5.dex */
public final class EpollDatagramChannelConfig extends EpollChannelConfig implements DatagramChannelConfig {
    private static final RecvByteBufAllocator DEFAULT_RCVBUF_ALLOCATOR = new FixedRecvByteBufAllocator(2048);
    private boolean activeOnOpen;
    private volatile int maxDatagramSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EpollDatagramChannelConfig(EpollDatagramChannel epollDatagramChannel) {
        super(epollDatagramChannel);
        setRecvByteBufAllocator(DEFAULT_RCVBUF_ALLOCATOR);
    }

    private void setActiveOnOpen(boolean z3) {
        if (!this.channel.isRegistered()) {
            this.activeOnOpen = z3;
            return;
        }
        throw new IllegalStateException("Can only changed before channel was registered");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getActiveOnOpen() {
        return this.activeOnOpen;
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public InetAddress getInterface() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.getInterface();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public int getMaxDatagramPayloadSize() {
        return this.maxDatagramSize;
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public NetworkInterface getNetworkInterface() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.getNetworkInterface();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == ChannelOption.SO_BROADCAST) {
            return (T) Boolean.valueOf(isBroadcast());
        }
        if (channelOption == ChannelOption.SO_RCVBUF) {
            return (T) Integer.valueOf(getReceiveBufferSize());
        }
        if (channelOption == ChannelOption.SO_SNDBUF) {
            return (T) Integer.valueOf(getSendBufferSize());
        }
        if (channelOption == ChannelOption.SO_REUSEADDR) {
            return (T) Boolean.valueOf(isReuseAddress());
        }
        if (channelOption == ChannelOption.IP_MULTICAST_LOOP_DISABLED) {
            return (T) Boolean.valueOf(isLoopbackModeDisabled());
        }
        if (channelOption == ChannelOption.IP_MULTICAST_ADDR) {
            return (T) getInterface();
        }
        if (channelOption == ChannelOption.IP_MULTICAST_IF) {
            return (T) getNetworkInterface();
        }
        if (channelOption == ChannelOption.IP_MULTICAST_TTL) {
            return (T) Integer.valueOf(getTimeToLive());
        }
        if (channelOption == ChannelOption.IP_TOS) {
            return (T) Integer.valueOf(getTrafficClass());
        }
        if (channelOption == ChannelOption.DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION) {
            return (T) Boolean.valueOf(this.activeOnOpen);
        }
        if (channelOption == UnixChannelOption.SO_REUSEPORT) {
            return (T) Boolean.valueOf(isReusePort());
        }
        if (channelOption == EpollChannelOption.IP_TRANSPARENT) {
            return (T) Boolean.valueOf(isIpTransparent());
        }
        if (channelOption == EpollChannelOption.IP_FREEBIND) {
            return (T) Boolean.valueOf(isFreeBind());
        }
        if (channelOption == EpollChannelOption.IP_RECVORIGDSTADDR) {
            return (T) Boolean.valueOf(isIpRecvOrigDestAddr());
        }
        if (channelOption == EpollChannelOption.MAX_DATAGRAM_PAYLOAD_SIZE) {
            return (T) Integer.valueOf(getMaxDatagramPayloadSize());
        }
        return (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), ChannelOption.SO_BROADCAST, ChannelOption.SO_RCVBUF, ChannelOption.SO_SNDBUF, ChannelOption.SO_REUSEADDR, ChannelOption.IP_MULTICAST_LOOP_DISABLED, ChannelOption.IP_MULTICAST_ADDR, ChannelOption.IP_MULTICAST_IF, ChannelOption.IP_MULTICAST_TTL, ChannelOption.IP_TOS, ChannelOption.DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION, UnixChannelOption.SO_REUSEPORT, EpollChannelOption.IP_FREEBIND, EpollChannelOption.IP_TRANSPARENT, EpollChannelOption.IP_RECVORIGDSTADDR, EpollChannelOption.MAX_DATAGRAM_PAYLOAD_SIZE);
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public int getReceiveBufferSize() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.getReceiveBufferSize();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public int getSendBufferSize() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.getSendBufferSize();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public int getTimeToLive() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.getTimeToLive();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public int getTrafficClass() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.getTrafficClass();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public boolean isBroadcast() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.isBroadcast();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public boolean isFreeBind() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.isIpFreeBind();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public boolean isIpRecvOrigDestAddr() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.isIpRecvOrigDestAddr();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public boolean isIpTransparent() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.isIpTransparent();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public boolean isLoopbackModeDisabled() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.isLoopbackModeDisabled();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public boolean isReuseAddress() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.isReuseAddress();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public boolean isReusePort() {
        try {
            return ((EpollDatagramChannel) this.channel).socket.isReusePort();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollDatagramChannelConfig setFreeBind(boolean z3) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setIpFreeBind(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollDatagramChannelConfig setIpRecvOrigDestAddr(boolean z3) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setIpRecvOrigDestAddr(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollDatagramChannelConfig setIpTransparent(boolean z3) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setIpTransparent(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public DatagramChannelConfig setLoopbackModeDisabled(boolean z3) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setLoopbackModeDisabled(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    public EpollDatagramChannelConfig setMaxDatagramPayloadSize(int i2) {
        this.maxDatagramSize = ObjectUtil.checkPositiveOrZero(i2, "maxDatagramSize");
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t3) {
        validate(channelOption, t3);
        if (channelOption == ChannelOption.SO_BROADCAST) {
            setBroadcast(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == ChannelOption.SO_RCVBUF) {
            setReceiveBufferSize(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.SO_SNDBUF) {
            setSendBufferSize(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.SO_REUSEADDR) {
            setReuseAddress(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == ChannelOption.IP_MULTICAST_LOOP_DISABLED) {
            setLoopbackModeDisabled(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == ChannelOption.IP_MULTICAST_ADDR) {
            setInterface((InetAddress) t3);
            return true;
        } else if (channelOption == ChannelOption.IP_MULTICAST_IF) {
            setNetworkInterface((NetworkInterface) t3);
            return true;
        } else if (channelOption == ChannelOption.IP_MULTICAST_TTL) {
            setTimeToLive(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.IP_TOS) {
            setTrafficClass(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION) {
            setActiveOnOpen(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == UnixChannelOption.SO_REUSEPORT) {
            setReusePort(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.IP_FREEBIND) {
            setFreeBind(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.IP_TRANSPARENT) {
            setIpTransparent(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.IP_RECVORIGDSTADDR) {
            setIpRecvOrigDestAddr(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == EpollChannelOption.MAX_DATAGRAM_PAYLOAD_SIZE) {
            setMaxDatagramPayloadSize(((Integer) t3).intValue());
            return true;
        } else {
            return super.setOption(channelOption, t3);
        }
    }

    public EpollDatagramChannelConfig setReusePort(boolean z3) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setReusePort(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public EpollDatagramChannelConfig setBroadcast(boolean z3) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setBroadcast(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig
    public EpollDatagramChannelConfig setEpollMode(EpollMode epollMode) {
        super.setEpollMode(epollMode);
        return this;
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public EpollDatagramChannelConfig setInterface(InetAddress inetAddress) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setInterface(inetAddress);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public EpollDatagramChannelConfig setNetworkInterface(NetworkInterface networkInterface) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setNetworkInterface(networkInterface);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public EpollDatagramChannelConfig setReceiveBufferSize(int i2) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setReceiveBufferSize(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public EpollDatagramChannelConfig setReuseAddress(boolean z3) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setReuseAddress(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public EpollDatagramChannelConfig setSendBufferSize(int i2) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setSendBufferSize(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public EpollDatagramChannelConfig setTimeToLive(int i2) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setTimeToLive(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.DatagramChannelConfig
    public EpollDatagramChannelConfig setTrafficClass(int i2) {
        try {
            ((EpollDatagramChannel) this.channel).socket.setTrafficClass(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollDatagramChannelConfig setAutoClose(boolean z3) {
        super.setAutoClose(z3);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollDatagramChannelConfig setWriteBufferHighWaterMark(int i2) {
        super.setWriteBufferHighWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollDatagramChannelConfig setWriteBufferLowWaterMark(int i2) {
        super.setWriteBufferLowWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollDatagramChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollDatagramChannelConfig setAutoRead(boolean z3) {
        super.setAutoRead(z3);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollDatagramChannelConfig setConnectTimeoutMillis(int i2) {
        super.setConnectTimeoutMillis(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollDatagramChannelConfig setMaxMessagesPerRead(int i2) {
        super.setMaxMessagesPerRead(i2);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollDatagramChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollDatagramChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollDatagramChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.epoll.EpollChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollDatagramChannelConfig setWriteSpinCount(int i2) {
        super.setWriteSpinCount(i2);
        return this;
    }
}
