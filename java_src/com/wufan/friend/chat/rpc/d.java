package com.wufan.friend.chat.rpc;

import com.wufan.friend.chat.protocol.w1;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.socket.SocketChannel;
import io.netty.handler.codec.LengthFieldBasedFrameDecoder;
import io.netty.handler.codec.LengthFieldPrepender;
import io.netty.handler.codec.protobuf.ProtobufDecoder;
import io.netty.handler.codec.protobuf.ProtobufEncoder;
import io.netty.handler.logging.LoggingHandler;
import io.netty.handler.timeout.IdleStateHandler;
import java.util.concurrent.TimeUnit;
/* compiled from: FriendClientInitializer.java */
/* loaded from: classes2.dex */
public class d extends ChannelInitializer<SocketChannel> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.ChannelInitializer
    /* renamed from: a */
    public void initChannel(SocketChannel socketChannel) throws Exception {
        try {
            ChannelPipeline pipeline = socketChannel.pipeline();
            pipeline.addLast(new LengthFieldBasedFrameDecoder(2097152, 0, 4, 0, 4, true));
            pipeline.addLast(new ProtobufDecoder(w1.D3()));
            pipeline.addLast(new LengthFieldPrepender(4, 0, false));
            pipeline.addLast(new ProtobufEncoder());
            pipeline.addLast(new LoggingHandler());
            pipeline.addLast(new IdleStateHandler(0L, 30L, 0L, TimeUnit.SECONDS));
            pipeline.addLast(new c());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
