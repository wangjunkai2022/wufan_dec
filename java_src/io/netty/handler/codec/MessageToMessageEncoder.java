package io.netty.handler.codec;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelOutboundHandlerAdapter;
import io.netty.channel.ChannelPromise;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.PromiseCombiner;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.TypeParameterMatcher;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class MessageToMessageEncoder<I> extends ChannelOutboundHandlerAdapter {
    private final TypeParameterMatcher matcher;

    /* JADX INFO: Access modifiers changed from: protected */
    public MessageToMessageEncoder() {
        this.matcher = TypeParameterMatcher.find(this, MessageToMessageEncoder.class, "I");
    }

    private static void writePromiseCombiner(ChannelHandlerContext channelHandlerContext, CodecOutputList codecOutputList, ChannelPromise channelPromise) {
        PromiseCombiner promiseCombiner = new PromiseCombiner(channelHandlerContext.executor());
        for (int i2 = 0; i2 < codecOutputList.size(); i2++) {
            promiseCombiner.add(channelHandlerContext.write(codecOutputList.getUnsafe(i2)));
        }
        promiseCombiner.finish(channelPromise);
    }

    private static void writeVoidPromise(ChannelHandlerContext channelHandlerContext, CodecOutputList codecOutputList) {
        ChannelPromise voidPromise = channelHandlerContext.voidPromise();
        for (int i2 = 0; i2 < codecOutputList.size(); i2++) {
            channelHandlerContext.write(codecOutputList.getUnsafe(i2), voidPromise);
        }
    }

    public boolean acceptOutboundMessage(Object obj) throws Exception {
        return this.matcher.match(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void encode(ChannelHandlerContext channelHandlerContext, I i2, List<Object> list) throws Exception;

    @Override // io.netty.channel.ChannelOutboundHandlerAdapter, io.netty.channel.ChannelOutboundHandler
    public void write(ChannelHandlerContext channelHandlerContext, Object obj, ChannelPromise channelPromise) throws Exception {
        CodecOutputList codecOutputList = null;
        try {
            try {
                if (acceptOutboundMessage(obj)) {
                    try {
                        CodecOutputList newInstance = CodecOutputList.newInstance();
                        try {
                            encode(channelHandlerContext, obj, newInstance);
                            ReferenceCountUtil.release(obj);
                            if (newInstance.isEmpty()) {
                                newInstance.recycle();
                                throw new EncoderException(StringUtil.simpleClassName(this) + " must produce at least one message.");
                            }
                            codecOutputList = newInstance;
                        } catch (Throwable th) {
                            ReferenceCountUtil.release(obj);
                            throw th;
                        }
                    } catch (EncoderException e4) {
                        throw e4;
                    } catch (Throwable th2) {
                        th = th2;
                        throw new EncoderException(th);
                    }
                } else {
                    channelHandlerContext.write(obj, channelPromise);
                }
                if (codecOutputList != null) {
                    int size = codecOutputList.size() - 1;
                    if (size == 0) {
                        channelHandlerContext.write(codecOutputList.getUnsafe(0), channelPromise);
                    } else if (size > 0) {
                        if (channelPromise == channelHandlerContext.voidPromise()) {
                            writeVoidPromise(channelHandlerContext, codecOutputList);
                        } else {
                            writePromiseCombiner(channelHandlerContext, codecOutputList, channelPromise);
                        }
                    }
                    codecOutputList.recycle();
                }
            } catch (Throwable th3) {
                if (0 != 0) {
                    int size2 = codecOutputList.size() - 1;
                    if (size2 == 0) {
                        channelHandlerContext.write(codecOutputList.getUnsafe(0), channelPromise);
                    } else if (size2 > 0) {
                        if (channelPromise == channelHandlerContext.voidPromise()) {
                            writeVoidPromise(channelHandlerContext, null);
                        } else {
                            writePromiseCombiner(channelHandlerContext, null, channelPromise);
                        }
                    }
                    codecOutputList.recycle();
                }
                throw th3;
            }
        } catch (EncoderException e5) {
            throw e5;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    protected MessageToMessageEncoder(Class<? extends I> cls) {
        this.matcher = TypeParameterMatcher.get(cls);
    }
}
