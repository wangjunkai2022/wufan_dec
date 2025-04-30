package io.netty.channel;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.util.UncheckedBooleanSupplier;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public interface RecvByteBufAllocator {

    /* loaded from: classes5.dex */
    public static class DelegatingHandle implements Handle {
        private final Handle delegate;

        public DelegatingHandle(Handle handle) {
            this.delegate = (Handle) ObjectUtil.checkNotNull(handle, "delegate");
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public ByteBuf allocate(ByteBufAllocator byteBufAllocator) {
            return this.delegate.allocate(byteBufAllocator);
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public int attemptedBytesRead() {
            return this.delegate.attemptedBytesRead();
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public boolean continueReading() {
            return this.delegate.continueReading();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final Handle delegate() {
            return this.delegate;
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public int guess() {
            return this.delegate.guess();
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void incMessagesRead(int i2) {
            this.delegate.incMessagesRead(i2);
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void lastBytesRead(int i2) {
            this.delegate.lastBytesRead(i2);
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void readComplete() {
            this.delegate.readComplete();
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void reset(ChannelConfig channelConfig) {
            this.delegate.reset(channelConfig);
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public void attemptedBytesRead(int i2) {
            this.delegate.attemptedBytesRead(i2);
        }

        @Override // io.netty.channel.RecvByteBufAllocator.Handle
        public int lastBytesRead() {
            return this.delegate.lastBytesRead();
        }
    }

    /* loaded from: classes5.dex */
    public interface ExtendedHandle extends Handle {
        boolean continueReading(UncheckedBooleanSupplier uncheckedBooleanSupplier);
    }

    @Deprecated
    /* loaded from: classes5.dex */
    public interface Handle {
        ByteBuf allocate(ByteBufAllocator byteBufAllocator);

        int attemptedBytesRead();

        void attemptedBytesRead(int i2);

        boolean continueReading();

        int guess();

        void incMessagesRead(int i2);

        int lastBytesRead();

        void lastBytesRead(int i2);

        void readComplete();

        void reset(ChannelConfig channelConfig);
    }

    Handle newHandle();
}
