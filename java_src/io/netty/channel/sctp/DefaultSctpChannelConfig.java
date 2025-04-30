package io.netty.channel.sctp;

import com.sun.nio.sctp.SctpStandardSocketOptions;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.DefaultChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes5.dex */
public class DefaultSctpChannelConfig extends DefaultChannelConfig implements SctpChannelConfig {
    private final com.sun.nio.sctp.SctpChannel javaChannel;

    public DefaultSctpChannelConfig(SctpChannel sctpChannel, com.sun.nio.sctp.SctpChannel sctpChannel2) {
        super(sctpChannel);
        this.javaChannel = (com.sun.nio.sctp.SctpChannel) ObjectUtil.checkNotNull(sctpChannel2, "javaChannel");
        if (PlatformDependent.canEnableTcpNoDelayByDefault()) {
            try {
                setSctpNoDelay(true);
            } catch (Exception unused) {
            }
        }
    }

    @Override // io.netty.channel.sctp.SctpChannelConfig
    public SctpStandardSocketOptions.InitMaxStreams getInitMaxStreams() {
        try {
            return (SctpStandardSocketOptions.InitMaxStreams) this.javaChannel.getOption(SctpStandardSocketOptions.SCTP_INIT_MAXSTREAMS);
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == ChannelOption.SO_RCVBUF) {
            return (T) Integer.valueOf(getReceiveBufferSize());
        }
        if (channelOption == ChannelOption.SO_SNDBUF) {
            return (T) Integer.valueOf(getSendBufferSize());
        }
        if (channelOption == SctpChannelOption.SCTP_NODELAY) {
            return (T) Boolean.valueOf(isSctpNoDelay());
        }
        if (channelOption == SctpChannelOption.SCTP_INIT_MAXSTREAMS) {
            return (T) getInitMaxStreams();
        }
        return (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), ChannelOption.SO_RCVBUF, ChannelOption.SO_SNDBUF, SctpChannelOption.SCTP_NODELAY, SctpChannelOption.SCTP_INIT_MAXSTREAMS);
    }

    @Override // io.netty.channel.sctp.SctpChannelConfig
    public int getReceiveBufferSize() {
        try {
            return ((Integer) this.javaChannel.getOption(SctpStandardSocketOptions.SO_RCVBUF)).intValue();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.sctp.SctpChannelConfig
    public int getSendBufferSize() {
        try {
            return ((Integer) this.javaChannel.getOption(SctpStandardSocketOptions.SO_SNDBUF)).intValue();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.sctp.SctpChannelConfig
    public boolean isSctpNoDelay() {
        try {
            return ((Boolean) this.javaChannel.getOption(SctpStandardSocketOptions.SCTP_NODELAY)).booleanValue();
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.sctp.SctpChannelConfig
    public SctpChannelConfig setInitMaxStreams(SctpStandardSocketOptions.InitMaxStreams initMaxStreams) {
        try {
            this.javaChannel.setOption(SctpStandardSocketOptions.SCTP_INIT_MAXSTREAMS, initMaxStreams);
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t3) {
        validate(channelOption, t3);
        if (channelOption == ChannelOption.SO_RCVBUF) {
            setReceiveBufferSize(((Integer) t3).intValue());
            return true;
        } else if (channelOption == ChannelOption.SO_SNDBUF) {
            setSendBufferSize(((Integer) t3).intValue());
            return true;
        } else if (channelOption == SctpChannelOption.SCTP_NODELAY) {
            setSctpNoDelay(((Boolean) t3).booleanValue());
            return true;
        } else if (channelOption == SctpChannelOption.SCTP_INIT_MAXSTREAMS) {
            setInitMaxStreams((SctpStandardSocketOptions.InitMaxStreams) t3);
            return true;
        } else {
            return super.setOption(channelOption, t3);
        }
    }

    @Override // io.netty.channel.sctp.SctpChannelConfig
    public SctpChannelConfig setReceiveBufferSize(int i2) {
        try {
            this.javaChannel.setOption(SctpStandardSocketOptions.SO_RCVBUF, Integer.valueOf(i2));
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.sctp.SctpChannelConfig
    public SctpChannelConfig setSctpNoDelay(boolean z3) {
        try {
            this.javaChannel.setOption(SctpStandardSocketOptions.SCTP_NODELAY, Boolean.valueOf(z3));
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.sctp.SctpChannelConfig
    public SctpChannelConfig setSendBufferSize(int i2) {
        try {
            this.javaChannel.setOption(SctpStandardSocketOptions.SO_SNDBUF, Integer.valueOf(i2));
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public SctpChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public SctpChannelConfig setAutoClose(boolean z3) {
        super.setAutoClose(z3);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public SctpChannelConfig setAutoRead(boolean z3) {
        super.setAutoRead(z3);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public SctpChannelConfig setConnectTimeoutMillis(int i2) {
        super.setConnectTimeoutMillis(i2);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public SctpChannelConfig setMaxMessagesPerRead(int i2) {
        super.setMaxMessagesPerRead(i2);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public SctpChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public SctpChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public SctpChannelConfig setWriteBufferHighWaterMark(int i2) {
        super.setWriteBufferHighWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public SctpChannelConfig setWriteBufferLowWaterMark(int i2) {
        super.setWriteBufferLowWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public SctpChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public SctpChannelConfig setWriteSpinCount(int i2) {
        super.setWriteSpinCount(i2);
        return this;
    }
}
