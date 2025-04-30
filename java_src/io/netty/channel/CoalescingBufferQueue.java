package io.netty.channel;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.CompositeByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.util.internal.ObjectUtil;
/* loaded from: classes5.dex */
public final class CoalescingBufferQueue extends AbstractCoalescingBufferQueue {
    private final Channel channel;

    public CoalescingBufferQueue(Channel channel) {
        this(channel, 4);
    }

    @Override // io.netty.channel.AbstractCoalescingBufferQueue
    protected ByteBuf compose(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, ByteBuf byteBuf2) {
        if (byteBuf instanceof CompositeByteBuf) {
            CompositeByteBuf compositeByteBuf = (CompositeByteBuf) byteBuf;
            compositeByteBuf.addComponent(true, byteBuf2);
            return compositeByteBuf;
        }
        return composeIntoComposite(byteBufAllocator, byteBuf, byteBuf2);
    }

    public void releaseAndFailAll(Throwable th) {
        releaseAndFailAll(this.channel, th);
    }

    public ByteBuf remove(int i2, ChannelPromise channelPromise) {
        return remove(this.channel.alloc(), i2, channelPromise);
    }

    @Override // io.netty.channel.AbstractCoalescingBufferQueue
    protected ByteBuf removeEmptyValue() {
        return Unpooled.EMPTY_BUFFER;
    }

    public CoalescingBufferQueue(Channel channel, int i2) {
        this(channel, i2, false);
    }

    public CoalescingBufferQueue(Channel channel, int i2, boolean z3) {
        super(z3 ? channel : null, i2);
        this.channel = (Channel) ObjectUtil.checkNotNull(channel, "channel");
    }
}
