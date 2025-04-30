package io.netty.channel.kqueue;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.unix.DomainSocketChannelConfig;
import io.netty.channel.unix.DomainSocketReadMode;
import io.netty.channel.unix.UnixChannelOption;
import io.netty.util.internal.ObjectUtil;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes5.dex */
public final class KQueueDomainSocketChannelConfig extends KQueueChannelConfig implements DomainSocketChannelConfig {
    private volatile boolean allowHalfClosure;
    private volatile DomainSocketReadMode mode;

    /* JADX INFO: Access modifiers changed from: package-private */
    public KQueueDomainSocketChannelConfig(AbstractKQueueChannel abstractKQueueChannel) {
        super(abstractKQueueChannel);
        this.mode = DomainSocketReadMode.BYTES;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == UnixChannelOption.DOMAIN_SOCKET_READ_MODE) {
            return (T) getReadMode();
        }
        if (channelOption == ChannelOption.ALLOW_HALF_CLOSURE) {
            return (T) Boolean.valueOf(isAllowHalfClosure());
        }
        if (channelOption == ChannelOption.SO_SNDBUF) {
            return (T) Integer.valueOf(getSendBufferSize());
        }
        if (channelOption == ChannelOption.SO_RCVBUF) {
            return (T) Integer.valueOf(getReceiveBufferSize());
        }
        return (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), UnixChannelOption.DOMAIN_SOCKET_READ_MODE, ChannelOption.ALLOW_HALF_CLOSURE, ChannelOption.SO_SNDBUF, ChannelOption.SO_RCVBUF);
    }

    @Override // io.netty.channel.unix.DomainSocketChannelConfig
    public DomainSocketReadMode getReadMode() {
        return this.mode;
    }

    public int getReceiveBufferSize() {
        try {
            return ((KQueueDomainSocketChannel) this.channel).socket.getReceiveBufferSize();
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public int getSendBufferSize() {
        try {
            return ((KQueueDomainSocketChannel) this.channel).socket.getSendBufferSize();
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public boolean isAllowHalfClosure() {
        return this.allowHalfClosure;
    }

    public KQueueDomainSocketChannelConfig setAllowHalfClosure(boolean z3) {
        this.allowHalfClosure = z3;
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t3) {
        validate(channelOption, t3);
        if (channelOption == UnixChannelOption.DOMAIN_SOCKET_READ_MODE) {
            setReadMode((DomainSocketReadMode) t3);
            return true;
        } else if (channelOption == ChannelOption.ALLOW_HALF_CLOSURE) {
            setAllowHalfClosure(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == ChannelOption.SO_SNDBUF) {
            setSendBufferSize(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.SO_RCVBUF) {
            setReceiveBufferSize(((Integer) t3).intValue());
            return true;
        } else {
            return super.setOption(channelOption, t3);
        }
    }

    public KQueueDomainSocketChannelConfig setReceiveBufferSize(int i2) {
        try {
            ((KQueueDomainSocketChannel) this.channel).socket.setReceiveBufferSize(i2);
            return this;
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public KQueueDomainSocketChannelConfig setSendBufferSize(int i2) {
        try {
            ((KQueueDomainSocketChannel) this.channel).socket.setSendBufferSize(i2);
            return this;
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig
    public KQueueDomainSocketChannelConfig setRcvAllocTransportProvidesGuess(boolean z3) {
        super.setRcvAllocTransportProvidesGuess(z3);
        return this;
    }

    @Override // io.netty.channel.unix.DomainSocketChannelConfig
    public KQueueDomainSocketChannelConfig setReadMode(DomainSocketReadMode domainSocketReadMode) {
        this.mode = (DomainSocketReadMode) ObjectUtil.checkNotNull(domainSocketReadMode, "mode");
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueDomainSocketChannelConfig setAutoClose(boolean z3) {
        super.setAutoClose(z3);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueDomainSocketChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueDomainSocketChannelConfig setAutoRead(boolean z3) {
        super.setAutoRead(z3);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueDomainSocketChannelConfig setConnectTimeoutMillis(int i2) {
        super.setConnectTimeoutMillis(i2);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public KQueueDomainSocketChannelConfig setMaxMessagesPerRead(int i2) {
        super.setMaxMessagesPerRead(i2);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueDomainSocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueDomainSocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public KQueueDomainSocketChannelConfig setWriteBufferHighWaterMark(int i2) {
        super.setWriteBufferHighWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public KQueueDomainSocketChannelConfig setWriteBufferLowWaterMark(int i2) {
        super.setWriteBufferLowWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueDomainSocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueDomainSocketChannelConfig setWriteSpinCount(int i2) {
        super.setWriteSpinCount(i2);
        return this;
    }
}
