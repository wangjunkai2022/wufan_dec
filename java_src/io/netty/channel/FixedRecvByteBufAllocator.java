package io.netty.channel;

import io.netty.channel.DefaultMaxMessagesRecvByteBufAllocator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public class FixedRecvByteBufAllocator extends DefaultMaxMessagesRecvByteBufAllocator {
    private final int bufferSize;

    /* loaded from: classes5.dex */
    private final class HandleImpl extends DefaultMaxMessagesRecvByteBufAllocator.MaxMessageHandle {
        private final int bufferSize;

        HandleImpl(int i2) {
            super();
            this.bufferSize = i2;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public int guess() {
            return this.bufferSize;
        }
    }

    public FixedRecvByteBufAllocator(int i2) {
        ObjectUtil.checkPositive(i2, "bufferSize");
        this.bufferSize = i2;
    }

    @Override // io.netty.channel.RecvByteBufAllocator
    public RecvByteBufAllocator.Handle newHandle() {
        return new HandleImpl(this.bufferSize);
    }

    @Override // io.netty.channel.DefaultMaxMessagesRecvByteBufAllocator
    public FixedRecvByteBufAllocator respectMaybeMoreData(boolean z3) {
        super.respectMaybeMoreData(z3);
        return this;
    }
}
