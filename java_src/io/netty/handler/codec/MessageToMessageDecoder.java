package io.netty.handler.codec;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.TypeParameterMatcher;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class MessageToMessageDecoder<I> extends ChannelInboundHandlerAdapter {
    private final TypeParameterMatcher matcher;

    /* JADX INFO: Access modifiers changed from: protected */
    public MessageToMessageDecoder() {
        this.matcher = TypeParameterMatcher.find(this, MessageToMessageDecoder.class, "I");
    }

    public boolean acceptInboundMessage(Object obj) throws Exception {
        return this.matcher.match(obj);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelRead(ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        CodecOutputList newInstance = CodecOutputList.newInstance();
        int i2 = 0;
        try {
            try {
                if (acceptInboundMessage(obj)) {
                    try {
                        decode(channelHandlerContext, obj, newInstance);
                        ReferenceCountUtil.release(obj);
                    } catch (Throwable th) {
                        ReferenceCountUtil.release(obj);
                        throw th;
                    }
                } else {
                    newInstance.add(obj);
                }
            } catch (DecoderException e4) {
                throw e4;
            } catch (Exception e5) {
                throw new DecoderException(e5);
            }
        } finally {
            int size = newInstance.size();
            while (i2 < size) {
                channelHandlerContext.fireChannelRead(newInstance.getUnsafe(i2));
                i2++;
            }
            newInstance.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void decode(ChannelHandlerContext channelHandlerContext, I i2, List<Object> list) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public MessageToMessageDecoder(Class<? extends I> cls) {
        this.matcher = TypeParameterMatcher.get(cls);
    }
}
