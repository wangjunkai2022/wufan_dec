package io.netty.channel;

import io.netty.buffer.ByteBufAllocator;
import java.util.Map;
/* loaded from: classes5.dex */
public interface ChannelConfig {
    ByteBufAllocator getAllocator();

    int getConnectTimeoutMillis();

    @Deprecated
    int getMaxMessagesPerRead();

    MessageSizeEstimator getMessageSizeEstimator();

    <T> T getOption(ChannelOption<T> channelOption);

    Map<ChannelOption<?>, Object> getOptions();

    <T extends RecvByteBufAllocator> T getRecvByteBufAllocator();

    int getWriteBufferHighWaterMark();

    int getWriteBufferLowWaterMark();

    WriteBufferWaterMark getWriteBufferWaterMark();

    int getWriteSpinCount();

    boolean isAutoClose();

    boolean isAutoRead();

    ChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    ChannelConfig setAutoClose(boolean z3);

    ChannelConfig setAutoRead(boolean z3);

    ChannelConfig setConnectTimeoutMillis(int i2);

    @Deprecated
    ChannelConfig setMaxMessagesPerRead(int i2);

    ChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    <T> boolean setOption(ChannelOption<T> channelOption, T t3);

    boolean setOptions(Map<ChannelOption<?>, ?> map);

    ChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    ChannelConfig setWriteBufferHighWaterMark(int i2);

    ChannelConfig setWriteBufferLowWaterMark(int i2);

    ChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    ChannelConfig setWriteSpinCount(int i2);
}
