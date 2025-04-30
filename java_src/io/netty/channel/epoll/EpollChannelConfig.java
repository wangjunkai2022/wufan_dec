package io.netty.channel.epoll;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.DefaultChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.unix.Limits;
import io.netty.util.internal.ObjectUtil;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes5.dex */
public class EpollChannelConfig extends DefaultChannelConfig {
    private volatile long maxBytesPerGatheringWrite;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.channel.epoll.EpollChannelConfig$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$channel$epoll$EpollMode;

        static {
            int[] iArr = new int[EpollMode.values().length];
            $SwitchMap$io$netty$channel$epoll$EpollMode = iArr;
            try {
                iArr[EpollMode.EDGE_TRIGGERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$channel$epoll$EpollMode[EpollMode.LEVEL_TRIGGERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EpollChannelConfig(AbstractEpollChannel abstractEpollChannel) {
        super(abstractEpollChannel);
        this.maxBytesPerGatheringWrite = Limits.SSIZE_MAX;
    }

    private void checkChannelNotRegistered() {
        if (this.channel.isRegistered()) {
            throw new IllegalStateException("EpollMode can only be changed before channel is registered");
        }
    }

    @Override // io.netty.channel.DefaultChannelConfig
    protected final void autoReadCleared() {
        ((AbstractEpollChannel) this.channel).clearEpollIn();
    }

    public EpollMode getEpollMode() {
        return ((AbstractEpollChannel) this.channel).isFlagSet(Native.EPOLLET) ? EpollMode.EDGE_TRIGGERED : EpollMode.LEVEL_TRIGGERED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long getMaxBytesPerGatheringWrite() {
        return this.maxBytesPerGatheringWrite;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == EpollChannelOption.EPOLL_MODE) {
            return (T) getEpollMode();
        }
        return (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), EpollChannelOption.EPOLL_MODE);
    }

    public EpollChannelConfig setEpollMode(EpollMode epollMode) {
        ObjectUtil.checkNotNull(epollMode, "mode");
        try {
            int i2 = AnonymousClass1.$SwitchMap$io$netty$channel$epoll$EpollMode[epollMode.ordinal()];
            if (i2 == 1) {
                checkChannelNotRegistered();
                ((AbstractEpollChannel) this.channel).setFlag(Native.EPOLLET);
            } else if (i2 == 2) {
                checkChannelNotRegistered();
                ((AbstractEpollChannel) this.channel).clearFlag(Native.EPOLLET);
            } else {
                throw new Error();
            }
            return this;
        } catch (IOException e4) {
            throw new ChannelException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setMaxBytesPerGatheringWrite(long j4) {
        this.maxBytesPerGatheringWrite = j4;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t3) {
        validate(channelOption, t3);
        if (channelOption == EpollChannelOption.EPOLL_MODE) {
            setEpollMode((EpollMode) t3);
            return true;
        }
        return super.setOption(channelOption, t3);
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollChannelConfig setAutoRead(boolean z3) {
        super.setAutoRead(z3);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollChannelConfig setConnectTimeoutMillis(int i2) {
        super.setConnectTimeoutMillis(i2);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollChannelConfig setMaxMessagesPerRead(int i2) {
        super.setMaxMessagesPerRead(i2);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        if (recvByteBufAllocator.newHandle() instanceof RecvByteBufAllocator.ExtendedHandle) {
            super.setRecvByteBufAllocator(recvByteBufAllocator);
            return this;
        }
        throw new IllegalArgumentException("allocator.newHandle() must return an object of type: " + RecvByteBufAllocator.ExtendedHandle.class);
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollChannelConfig setWriteBufferHighWaterMark(int i2) {
        super.setWriteBufferHighWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public EpollChannelConfig setWriteBufferLowWaterMark(int i2) {
        super.setWriteBufferLowWaterMark(i2);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public EpollChannelConfig setWriteSpinCount(int i2) {
        super.setWriteSpinCount(i2);
        return this;
    }
}
