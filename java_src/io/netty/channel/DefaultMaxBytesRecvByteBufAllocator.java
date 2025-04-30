package io.netty.channel;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.util.UncheckedBooleanSupplier;
import io.netty.util.internal.ObjectUtil;
import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class DefaultMaxBytesRecvByteBufAllocator implements MaxBytesRecvByteBufAllocator {
    private volatile int maxBytesPerIndividualRead;
    private volatile int maxBytesPerRead;

    /* loaded from: classes5.dex */
    private final class HandleImpl implements RecvByteBufAllocator.ExtendedHandle {
        private int attemptBytesRead;
        private int bytesToRead;
        private final UncheckedBooleanSupplier defaultMaybeMoreSupplier;
        private int individualReadMax;
        private int lastBytesRead;

        private HandleImpl() {
            this.defaultMaybeMoreSupplier = new UncheckedBooleanSupplier() { // from class: io.netty.channel.DefaultMaxBytesRecvByteBufAllocator.HandleImpl.1
                @Override // io.netty.util.UncheckedBooleanSupplier, io.netty.util.BooleanSupplier
                public boolean get() {
                    return HandleImpl.this.attemptBytesRead == HandleImpl.this.lastBytesRead;
                }
            };
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public ByteBuf allocate(ByteBufAllocator byteBufAllocator) {
            return byteBufAllocator.ioBuffer(guess());
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void attemptedBytesRead(int i2) {
            this.attemptBytesRead = i2;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public boolean continueReading() {
            return continueReading(this.defaultMaybeMoreSupplier);
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public int guess() {
            return Math.min(this.individualReadMax, this.bytesToRead);
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void incMessagesRead(int i2) {
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void lastBytesRead(int i2) {
            this.lastBytesRead = i2;
            this.bytesToRead -= i2;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void readComplete() {
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void reset(ChannelConfig channelConfig) {
            this.bytesToRead = DefaultMaxBytesRecvByteBufAllocator.this.maxBytesPerRead();
            this.individualReadMax = DefaultMaxBytesRecvByteBufAllocator.this.maxBytesPerIndividualRead();
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public int attemptedBytesRead() {
            return this.attemptBytesRead;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.ExtendedHandle
        public boolean continueReading(UncheckedBooleanSupplier uncheckedBooleanSupplier) {
            return this.bytesToRead > 0 && uncheckedBooleanSupplier.get();
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public int lastBytesRead() {
            return this.lastBytesRead;
        }
    }

    public DefaultMaxBytesRecvByteBufAllocator() {
        this(65536, 65536);
    }

    private static void checkMaxBytesPerReadPair(int i2, int i4) {
        ObjectUtil.checkPositive(i2, "maxBytesPerRead");
        ObjectUtil.checkPositive(i4, "maxBytesPerIndividualRead");
        if (i2 >= i4) {
            return;
        }
        throw new IllegalArgumentException("maxBytesPerRead cannot be less than maxBytesPerIndividualRead (" + i4 + "): " + i2);
    }

    @Override // io.netty.channel.RecvByteBufAllocator
    public RecvByteBufAllocator.Handle newHandle() {
        return new HandleImpl();
    }

    public DefaultMaxBytesRecvByteBufAllocator(int i2, int i4) {
        checkMaxBytesPerReadPair(i2, i4);
        this.maxBytesPerRead = i2;
        this.maxBytesPerIndividualRead = i4;
    }

    @Override // io.netty.channel.MaxBytesRecvByteBufAllocator
    public int maxBytesPerIndividualRead() {
        return this.maxBytesPerIndividualRead;
    }

    @Override // io.netty.channel.MaxBytesRecvByteBufAllocator
    public int maxBytesPerRead() {
        return this.maxBytesPerRead;
    }

    @Override // io.netty.channel.MaxBytesRecvByteBufAllocator
    public synchronized Map.Entry<Integer, Integer> maxBytesPerReadPair() {
        return new AbstractMap.SimpleEntry(Integer.valueOf(this.maxBytesPerRead), Integer.valueOf(this.maxBytesPerIndividualRead));
    }

    @Override // io.netty.channel.MaxBytesRecvByteBufAllocator
    public DefaultMaxBytesRecvByteBufAllocator maxBytesPerIndividualRead(int i2) {
        ObjectUtil.checkPositive(i2, "maxBytesPerIndividualRead");
        synchronized (this) {
            int maxBytesPerRead = maxBytesPerRead();
            if (i2 <= maxBytesPerRead) {
                this.maxBytesPerIndividualRead = i2;
            } else {
                throw new IllegalArgumentException("maxBytesPerIndividualRead cannot be greater than maxBytesPerRead (" + maxBytesPerRead + "): " + i2);
            }
        }
        return this;
    }

    @Override // io.netty.channel.MaxBytesRecvByteBufAllocator
    public DefaultMaxBytesRecvByteBufAllocator maxBytesPerRead(int i2) {
        ObjectUtil.checkPositive(i2, "maxBytesPerRead");
        synchronized (this) {
            int maxBytesPerIndividualRead = maxBytesPerIndividualRead();
            if (i2 >= maxBytesPerIndividualRead) {
                this.maxBytesPerRead = i2;
            } else {
                throw new IllegalArgumentException("maxBytesPerRead cannot be less than maxBytesPerIndividualRead (" + maxBytesPerIndividualRead + "): " + i2);
            }
        }
        return this;
    }

    @Override // io.netty.channel.MaxBytesRecvByteBufAllocator
    public DefaultMaxBytesRecvByteBufAllocator maxBytesPerReadPair(int i2, int i4) {
        checkMaxBytesPerReadPair(i2, i4);
        synchronized (this) {
            this.maxBytesPerRead = i2;
            this.maxBytesPerIndividualRead = i4;
        }
        return this;
    }
}
