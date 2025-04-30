package io.netty.channel.kqueue;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.ServerSocketChannelConfig;
import io.netty.util.NetUtil;
import io.netty.util.internal.ObjectUtil;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes5.dex */
public class KQueueServerChannelConfig extends KQueueChannelConfig implements ServerSocketChannelConfig {
    private volatile int backlog;

    /* JADX INFO: Access modifiers changed from: package-private */
    public KQueueServerChannelConfig(AbstractKQueueChannel abstractKQueueChannel) {
        super(abstractKQueueChannel);
        this.backlog = NetUtil.SOMAXCONN;
    }

    @Override // io.netty.channel.socket.ServerSocketChannelConfig
    public int getBacklog() {
        return this.backlog;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == ChannelOption.SO_RCVBUF) {
            return (T) Integer.valueOf(getReceiveBufferSize());
        }
        if (channelOption == ChannelOption.SO_REUSEADDR) {
            return (T) Boolean.valueOf(isReuseAddress());
        }
        if (channelOption == ChannelOption.SO_BACKLOG) {
            return (T) Integer.valueOf(getBacklog());
        }
        return (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), ChannelOption.SO_RCVBUF, ChannelOption.SO_REUSEADDR, ChannelOption.SO_BACKLOG);
    }

    @Override // io.netty.channel.socket.ServerSocketChannelConfig
    public int getReceiveBufferSize() {
        try {
            return ((AbstractKQueueChannel) this.channel).socket.getReceiveBufferSize();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.ServerSocketChannelConfig
    public boolean isReuseAddress() {
        try {
            return ((AbstractKQueueChannel) this.channel).socket.isReuseAddress();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t3) {
        validate(channelOption, t3);
        if (channelOption == ChannelOption.SO_RCVBUF) {
            setReceiveBufferSize(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.SO_REUSEADDR) {
            setReuseAddress(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == ChannelOption.SO_BACKLOG) {
            setBacklog(((Integer) t3).intValue());
            return true;
        } else {
            return super.setOption(channelOption, t3);
        }
    }

    @Override // io.netty.channel.socket.ServerSocketChannelConfig
    public KQueueServerChannelConfig setPerformancePreferences(int i2, int i4, int i5) {
        return this;
    }

    @Override // io.netty.channel.socket.ServerSocketChannelConfig
    public KQueueServerChannelConfig setBacklog(int i2) {
        ObjectUtil.checkPositiveOrZero(i2, "backlog");
        this.backlog = i2;
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig
    public KQueueServerChannelConfig setRcvAllocTransportProvidesGuess(boolean z3) {
        super.setRcvAllocTransportProvidesGuess(z3);
        return this;
    }

    @Override // io.netty.channel.socket.ServerSocketChannelConfig
    public KQueueServerChannelConfig setReceiveBufferSize(int i2) {
        try {
            ((AbstractKQueueChannel) this.channel).socket.setReceiveBufferSize(i2);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.socket.ServerSocketChannelConfig
    public KQueueServerChannelConfig setReuseAddress(boolean z3) {
        try {
            ((AbstractKQueueChannel) this.channel).socket.setReuseAddress(z3);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueServerChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueServerChannelConfig setAutoRead(boolean z3) {
        super.setAutoRead(z3);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueServerChannelConfig setConnectTimeoutMillis(int i2) {
        super.setConnectTimeoutMillis(i2);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public KQueueServerChannelConfig setMaxMessagesPerRead(int i2) {
        super.setMaxMessagesPerRead(i2);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueServerChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueServerChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public KQueueServerChannelConfig setWriteBufferHighWaterMark(int i2) {
        super.setWriteBufferHighWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public KQueueServerChannelConfig setWriteBufferLowWaterMark(int i2) {
        super.setWriteBufferLowWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueServerChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.kqueue.KQueueChannelConfig, io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public KQueueServerChannelConfig setWriteSpinCount(int i2) {
        super.setWriteSpinCount(i2);
        return this;
    }
}
