package io.netty.handler.codec.redis;

import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.CodecException;
import io.netty.handler.codec.MessageToMessageDecoder;
import io.netty.util.ReferenceCountUtil;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;
/* loaded from: classes5.dex */
public final class RedisArrayAggregator extends MessageToMessageDecoder<a> {
    private final Deque<AggregateState> depths = new ArrayDeque(4);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class AggregateState {
        private final List<a> children;
        private final int length;

        AggregateState(int i2) {
            this.length = i2;
            this.children = new ArrayList(i2);
        }
    }

    private a decodeRedisArrayHeader(ArrayHeaderRedisMessage arrayHeaderRedisMessage) {
        if (arrayHeaderRedisMessage.isNull()) {
            return ArrayRedisMessage.NULL_INSTANCE;
        }
        if (arrayHeaderRedisMessage.length() == 0) {
            return ArrayRedisMessage.EMPTY_INSTANCE;
        }
        if (arrayHeaderRedisMessage.length() > 0) {
            if (arrayHeaderRedisMessage.length() <= 2147483647L) {
                this.depths.push(new AggregateState((int) arrayHeaderRedisMessage.length()));
                return null;
            }
            throw new CodecException("this codec doesn't support longer length than 2147483647");
        }
        throw new CodecException("bad length: " + arrayHeaderRedisMessage.length());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToMessageDecoder
    public /* bridge */ /* synthetic */ void decode(ChannelHandlerContext channelHandlerContext, a aVar, List list) throws Exception {
        decode2(channelHandlerContext, aVar, (List<Object>) list);
    }

    /* renamed from: decode  reason: avoid collision after fix types in other method */
    protected void decode2(ChannelHandlerContext channelHandlerContext, a aVar, List<Object> list) throws Exception {
        if (aVar instanceof ArrayHeaderRedisMessage) {
            aVar = decodeRedisArrayHeader((ArrayHeaderRedisMessage) aVar);
            if (aVar == null) {
                return;
            }
        } else {
            ReferenceCountUtil.retain(aVar);
        }
        while (!this.depths.isEmpty()) {
            AggregateState peek = this.depths.peek();
            peek.children.add(aVar);
            if (peek.children.size() != peek.length) {
                return;
            }
            aVar = new ArrayRedisMessage(peek.children);
            this.depths.pop();
        }
        list.add(aVar);
    }
}
