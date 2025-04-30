package io.netty.channel;

import java.util.Map;
/* loaded from: classes5.dex */
public interface MaxBytesRecvByteBufAllocator extends RecvByteBufAllocator {
    int maxBytesPerIndividualRead();

    MaxBytesRecvByteBufAllocator maxBytesPerIndividualRead(int i2);

    int maxBytesPerRead();

    MaxBytesRecvByteBufAllocator maxBytesPerRead(int i2);

    MaxBytesRecvByteBufAllocator maxBytesPerReadPair(int i2, int i4);

    Map.Entry<Integer, Integer> maxBytesPerReadPair();
}
