package io.netty.channel;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.util.UncheckedBooleanSupplier;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public abstract class DefaultMaxMessagesRecvByteBufAllocator implements MaxMessagesRecvByteBufAllocator {
    private volatile int maxMessagesPerRead;
    private volatile boolean respectMaybeMoreData;

    /* loaded from: classes5.dex */
    public abstract class MaxMessageHandle implements RecvByteBufAllocator.ExtendedHandle {
        private int attemptedBytesRead;
        private ChannelConfig config;
        private final UncheckedBooleanSupplier defaultMaybeMoreSupplier = new UncheckedBooleanSupplier() { // from class: io.netty.channel.DefaultMaxMessagesRecvByteBufAllocator.MaxMessageHandle.1
            @Override // io.netty.util.UncheckedBooleanSupplier, io.netty.util.BooleanSupplier
            public boolean get() {
                return MaxMessageHandle.this.attemptedBytesRead == MaxMessageHandle.this.lastBytesRead;
            }
        };
        private int lastBytesRead;
        private int maxMessagePerRead;
        private final boolean respectMaybeMoreData;
        private int totalBytesRead;
        private int totalMessages;

        public MaxMessageHandle() {
            this.respectMaybeMoreData = DefaultMaxMessagesRecvByteBufAllocator.this.respectMaybeMoreData;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public ByteBuf allocate(ByteBufAllocator byteBufAllocator) {
            return byteBufAllocator.ioBuffer(guess());
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public int attemptedBytesRead() {
            return this.attemptedBytesRead;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public boolean continueReading() {
            return continueReading(this.defaultMaybeMoreSupplier);
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public final void incMessagesRead(int i2) {
            this.totalMessages += i2;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void lastBytesRead(int i2) {
            this.lastBytesRead = i2;
            if (i2 > 0) {
                this.totalBytesRead += i2;
            }
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void readComplete() {
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void reset(ChannelConfig channelConfig) {
            this.config = channelConfig;
            this.maxMessagePerRead = DefaultMaxMessagesRecvByteBufAllocator.this.maxMessagesPerRead();
            this.totalBytesRead = 0;
            this.totalMessages = 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final int totalBytesRead() {
            int i2 = this.totalBytesRead;
            if (i2 < 0) {
                return Integer.MAX_VALUE;
            }
            return i2;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void attemptedBytesRead(int i2) {
            this.attemptedBytesRead = i2;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.ExtendedHandle
        public boolean continueReading(UncheckedBooleanSupplier uncheckedBooleanSupplier) {
            return this.config.isAutoRead() && (!this.respectMaybeMoreData || uncheckedBooleanSupplier.get()) && this.totalMessages < this.maxMessagePerRead && this.totalBytesRead > 0;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public final int lastBytesRead() {
            return this.lastBytesRead;
        }
    }

    public DefaultMaxMessagesRecvByteBufAllocator() {
        this(1);
    }

    @Override // io.netty.channel.MaxMessagesRecvByteBufAllocator
    public int maxMessagesPerRead() {
        return this.maxMessagesPerRead;
    }

    public DefaultMaxMessagesRecvByteBufAllocator respectMaybeMoreData(boolean z3) {
        this.respectMaybeMoreData = z3;
        return this;
    }

    public DefaultMaxMessagesRecvByteBufAllocator(int i2) {
        this.respectMaybeMoreData = true;
        maxMessagesPerRead(i2);
    }

    @Override // io.netty.channel.MaxMessagesRecvByteBufAllocator
    public MaxMessagesRecvByteBufAllocator maxMessagesPerRead(int i2) {
        ObjectUtil.checkPositive(i2, "maxMessagesPerRead");
        this.maxMessagesPerRead = i2;
        return this;
    }

    public final boolean respectMaybeMoreData() {
        return this.respectMaybeMoreData;
    }
}
