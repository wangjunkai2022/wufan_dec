package io.netty.handler.flow;

import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelDuplexHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.ObjectPool;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.ArrayDeque;
/* loaded from: classes5.dex */
public class FlowControlHandler extends ChannelDuplexHandler {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(FlowControlHandler.class);
    private ChannelConfig config;
    private RecyclableArrayDeque queue;
    private final boolean releaseMessages;
    private boolean shouldConsume;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class RecyclableArrayDeque extends ArrayDeque<Object> {
        private static final int DEFAULT_NUM_ELEMENTS = 2;
        private static final ObjectPool<RecyclableArrayDeque> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<RecyclableArrayDeque>() { // from class: io.netty.handler.flow.FlowControlHandler.RecyclableArrayDeque.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.internal.ObjectPool.ObjectCreator
            public RecyclableArrayDeque newObject(ObjectPool.Handle<RecyclableArrayDeque> handle) {
                return new RecyclableArrayDeque(2, handle);
            }
        });
        private static final long serialVersionUID = 0;
        private final ObjectPool.Handle<RecyclableArrayDeque> handle;

        public static RecyclableArrayDeque newInstance() {
            return RECYCLER.get();
        }

        public void recycle() {
            clear();
            this.handle.recycle(this);
        }

        private RecyclableArrayDeque(int i2, ObjectPool.Handle<RecyclableArrayDeque> handle) {
            super(i2);
            this.handle = handle;
        }
    }

    public FlowControlHandler() {
        this(true);
    }

    private int dequeue(ChannelHandlerContext channelHandlerContext, int i2) {
        Object poll;
        int i4 = 0;
        while (this.queue != null && ((i4 < i2 || this.config.isAutoRead()) && (poll = this.queue.poll()) != null)) {
            i4++;
            channelHandlerContext.fireChannelRead(poll);
        }
        RecyclableArrayDeque recyclableArrayDeque = this.queue;
        if (recyclableArrayDeque != null && recyclableArrayDeque.isEmpty()) {
            this.queue.recycle();
            this.queue = null;
            if (i4 > 0) {
                channelHandlerContext.fireChannelReadComplete();
            }
        }
        return i4;
    }

    private void destroy() {
        RecyclableArrayDeque recyclableArrayDeque = this.queue;
        if (recyclableArrayDeque != null) {
            if (!recyclableArrayDeque.isEmpty()) {
                logger.trace("Non-empty queue: {}", this.queue);
                if (this.releaseMessages) {
                    while (true) {
                        Object poll = this.queue.poll();
                        if (poll == null) {
                            break;
                        }
                        ReferenceCountUtil.safeRelease(poll);
                    }
                }
            }
            this.queue.recycle();
            this.queue = null;
        }
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
        destroy();
        channelHandlerContext.fireChannelInactive();
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelRead(ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        if (this.queue == null) {
            this.queue = RecyclableArrayDeque.newInstance();
        }
        this.queue.offer(obj);
        boolean z3 = this.shouldConsume;
        this.shouldConsume = false;
        dequeue(channelHandlerContext, z3 ? 1 : 0);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelReadComplete(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (isQueueEmpty()) {
            channelHandlerContext.fireChannelReadComplete();
        }
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.config = channelHandlerContext.channel().config();
    }

    boolean isQueueEmpty() {
        RecyclableArrayDeque recyclableArrayDeque = this.queue;
        return recyclableArrayDeque == null || recyclableArrayDeque.isEmpty();
    }

    @Override // io.netty.channel.ChannelDuplexHandler, io.netty.channel.ChannelOutboundHandler
    public void read(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (dequeue(channelHandlerContext, 1) == 0) {
            this.shouldConsume = true;
            channelHandlerContext.read();
        }
    }

    public FlowControlHandler(boolean z3) {
        this.releaseMessages = z3;
    }
}
