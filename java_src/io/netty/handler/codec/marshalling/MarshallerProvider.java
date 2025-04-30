package io.netty.handler.codec.marshalling;

import io.netty.channel.ChannelHandlerContext;
import org.jboss.marshalling.Marshaller;
/* loaded from: classes5.dex */
public interface MarshallerProvider {
    Marshaller getMarshaller(ChannelHandlerContext channelHandlerContext) throws Exception;
}
