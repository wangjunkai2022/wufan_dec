package io.netty.handler.codec;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufHolder;
import io.netty.buffer.CompositeByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPipeline;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.ObjectUtil;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class MessageAggregator<I, S, C extends ByteBufHolder, O extends ByteBufHolder> extends MessageToMessageDecoder<I> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS = 1024;
    private boolean aggregating;
    private ChannelFutureListener continueResponseWriteListener;
    private ChannelHandlerContext ctx;
    private O currentMessage;
    private boolean handlingOversizedMessage;
    private final int maxContentLength;
    private int maxCumulationBufferComponents;

    /* JADX INFO: Access modifiers changed from: protected */
    public MessageAggregator(int i2) {
        this.maxCumulationBufferComponents = 1024;
        validateMaxContentLength(i2);
        this.maxContentLength = i2;
    }

    private static void appendPartialContent(CompositeByteBuf compositeByteBuf, ByteBuf byteBuf) {
        if (byteBuf.isReadable()) {
            compositeByteBuf.addComponent(true, byteBuf.retain());
        }
    }

    private void finishAggregation0(O o3) throws Exception {
        this.aggregating = false;
        finishAggregation(o3);
    }

    private void invokeHandleOversizedMessage(ChannelHandlerContext channelHandlerContext, S s3) throws Exception {
        this.handlingOversizedMessage = true;
        this.currentMessage = null;
        try {
            handleOversizedMessage(channelHandlerContext, s3);
        } finally {
            ReferenceCountUtil.release(s3);
        }
    }

    private void releaseCurrentMessage() {
        O o3 = this.currentMessage;
        if (o3 != null) {
            o3.release();
            this.currentMessage = null;
            this.handlingOversizedMessage = false;
            this.aggregating = false;
        }
    }

    private static void validateMaxContentLength(int i2) {
        ObjectUtil.checkPositiveOrZero(i2, "maxContentLength");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.handler.codec.MessageToMessageDecoder
    public boolean acceptInboundMessage(Object obj) throws Exception {
        if (super.acceptInboundMessage(obj) && !isAggregated(obj)) {
            if (!isStartMessage(obj)) {
                return this.aggregating && isContentMessage(obj);
            }
            this.aggregating = true;
            return true;
        }
        return false;
    }

    protected void aggregate(O o3, C c4) throws Exception {
    }

    protected abstract O beginAggregation(S s3, ByteBuf byteBuf) throws Exception;

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
        try {
            super.channelInactive(channelHandlerContext);
        } finally {
            releaseCurrentMessage();
        }
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelReadComplete(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (this.currentMessage != null && !channelHandlerContext.channel().config().isAutoRead()) {
            channelHandlerContext.read();
        }
        channelHandlerContext.fireChannelReadComplete();
    }

    protected abstract boolean closeAfterContinueResponse(Object obj) throws Exception;

    protected final ChannelHandlerContext ctx() {
        ChannelHandlerContext channelHandlerContext = this.ctx;
        if (channelHandlerContext != null) {
            return channelHandlerContext;
        }
        throw new IllegalStateException("not added to a pipeline yet");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.handler.codec.MessageToMessageDecoder
    public void decode(final ChannelHandlerContext channelHandlerContext, I i2, List<Object> list) throws Exception {
        boolean isLastContentMessage;
        ByteBufHolder beginAggregation;
        if (isStartMessage(i2)) {
            this.handlingOversizedMessage = false;
            O o3 = this.currentMessage;
            if (o3 == null) {
                Object newContinueResponse = newContinueResponse(i2, this.maxContentLength, channelHandlerContext.pipeline());
                if (newContinueResponse != null) {
                    ChannelFutureListener channelFutureListener = this.continueResponseWriteListener;
                    if (channelFutureListener == null) {
                        channelFutureListener = new ChannelFutureListener() { // from class: io.netty.handler.codec.MessageAggregator.1
                            @Override // io.netty.util.concurrent.GenericFutureListener
                            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                                if (channelFuture.isSuccess()) {
                                    return;
                                }
                                channelHandlerContext.fireExceptionCaught(channelFuture.cause());
                            }
                        };
                        this.continueResponseWriteListener = channelFutureListener;
                    }
                    boolean closeAfterContinueResponse = closeAfterContinueResponse(newContinueResponse);
                    this.handlingOversizedMessage = ignoreContentAfterContinueResponse(newContinueResponse);
                    Future<Void> addListener = channelHandlerContext.writeAndFlush(newContinueResponse).addListener((GenericFutureListener<? extends Future<? super Void>>) channelFutureListener);
                    if (closeAfterContinueResponse) {
                        addListener.addListener((GenericFutureListener<? extends Future<? super Void>>) ChannelFutureListener.CLOSE);
                        return;
                    } else if (this.handlingOversizedMessage) {
                        return;
                    }
                } else if (isContentLengthInvalid(i2, this.maxContentLength)) {
                    invokeHandleOversizedMessage(channelHandlerContext, i2);
                    return;
                }
                if ((i2 instanceof DecoderResultProvider) && !((DecoderResultProvider) i2).decoderResult().isSuccess()) {
                    if (i2 instanceof ByteBufHolder) {
                        beginAggregation = beginAggregation(i2, ((ByteBufHolder) i2).content().retain());
                    } else {
                        beginAggregation = beginAggregation(i2, Unpooled.EMPTY_BUFFER);
                    }
                    finishAggregation0(beginAggregation);
                    list.add(beginAggregation);
                    return;
                }
                CompositeByteBuf compositeBuffer = channelHandlerContext.alloc().compositeBuffer(this.maxCumulationBufferComponents);
                if (i2 instanceof ByteBufHolder) {
                    appendPartialContent(compositeBuffer, ((ByteBufHolder) i2).content());
                }
                this.currentMessage = (O) beginAggregation(i2, compositeBuffer);
                return;
            }
            o3.release();
            this.currentMessage = null;
            throw new MessageAggregationException();
        } else if (isContentMessage(i2)) {
            O o4 = this.currentMessage;
            if (o4 == null) {
                return;
            }
            CompositeByteBuf compositeByteBuf = (CompositeByteBuf) o4.content();
            ByteBufHolder byteBufHolder = (ByteBufHolder) i2;
            if (compositeByteBuf.readableBytes() > this.maxContentLength - byteBufHolder.content().readableBytes()) {
                invokeHandleOversizedMessage(channelHandlerContext, this.currentMessage);
                return;
            }
            appendPartialContent(compositeByteBuf, byteBufHolder.content());
            aggregate(this.currentMessage, byteBufHolder);
            if (byteBufHolder instanceof DecoderResultProvider) {
                DecoderResult decoderResult = ((DecoderResultProvider) byteBufHolder).decoderResult();
                if (!decoderResult.isSuccess()) {
                    O o5 = this.currentMessage;
                    if (o5 instanceof DecoderResultProvider) {
                        ((DecoderResultProvider) o5).setDecoderResult(DecoderResult.failure(decoderResult.cause()));
                    }
                    isLastContentMessage = true;
                } else {
                    isLastContentMessage = isLastContentMessage(byteBufHolder);
                }
            } else {
                isLastContentMessage = isLastContentMessage(byteBufHolder);
            }
            if (isLastContentMessage) {
                finishAggregation0(this.currentMessage);
                list.add(this.currentMessage);
                this.currentMessage = null;
            }
        } else {
            throw new MessageAggregationException();
        }
    }

    protected void finishAggregation(O o3) throws Exception {
    }

    protected void handleOversizedMessage(ChannelHandlerContext channelHandlerContext, S s3) throws Exception {
        channelHandlerContext.fireExceptionCaught((Throwable) new TooLongFrameException("content length exceeded " + maxContentLength() + " bytes."));
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.ctx = channelHandlerContext;
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerRemoved(ChannelHandlerContext channelHandlerContext) throws Exception {
        try {
            super.handlerRemoved(channelHandlerContext);
        } finally {
            releaseCurrentMessage();
        }
    }

    protected abstract boolean ignoreContentAfterContinueResponse(Object obj) throws Exception;

    protected abstract boolean isAggregated(I i2) throws Exception;

    protected abstract boolean isContentLengthInvalid(S s3, int i2) throws Exception;

    protected abstract boolean isContentMessage(I i2) throws Exception;

    @Deprecated
    public final boolean isHandlingOversizedMessage() {
        return this.handlingOversizedMessage;
    }

    protected abstract boolean isLastContentMessage(C c4) throws Exception;

    protected abstract boolean isStartMessage(I i2) throws Exception;

    public final int maxContentLength() {
        return this.maxContentLength;
    }

    public final int maxCumulationBufferComponents() {
        return this.maxCumulationBufferComponents;
    }

    protected abstract Object newContinueResponse(S s3, int i2, ChannelPipeline channelPipeline) throws Exception;

    public final void setMaxCumulationBufferComponents(int i2) {
        if (i2 >= 2) {
            if (this.ctx == null) {
                this.maxCumulationBufferComponents = i2;
                return;
            }
            throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
        }
        throw new IllegalArgumentException("maxCumulationBufferComponents: " + i2 + " (expected: >= 2)");
    }

    protected MessageAggregator(int i2, Class<? extends I> cls) {
        super(cls);
        this.maxCumulationBufferComponents = 1024;
        validateMaxContentLength(i2);
        this.maxContentLength = i2;
    }
}
