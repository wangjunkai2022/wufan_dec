package io.netty.handler.codec.protobuf;

import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.MessageLite;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToMessageDecoder;
import io.netty.util.internal.ObjectUtil;
import java.util.List;
@ChannelHandler.Sharable
/* loaded from: classes5.dex */
public class ProtobufDecoder extends MessageToMessageDecoder<ByteBuf> {
    private static final boolean HAS_PARSER;
    private final ExtensionRegistryLite extensionRegistry;
    private final MessageLite prototype;

    static {
        boolean z3 = false;
        try {
            MessageLite.class.getDeclaredMethod("getParserForType", new Class[0]);
            z3 = true;
        } catch (Throwable unused) {
        }
        HAS_PARSER = z3;
    }

    public ProtobufDecoder(MessageLite messageLite) {
        this(messageLite, (ExtensionRegistry) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToMessageDecoder
    public /* bridge */ /* synthetic */ void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List list) throws Exception {
        decode2(channelHandlerContext, byteBuf, (List<Object>) list);
    }

    public ProtobufDecoder(MessageLite messageLite, ExtensionRegistry extensionRegistry) {
        this(messageLite, (ExtensionRegistryLite) extensionRegistry);
    }

    /* renamed from: decode  reason: avoid collision after fix types in other method */
    protected void decode2(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        byte[] bytes;
        int readableBytes = byteBuf.readableBytes();
        int i2 = 0;
        if (byteBuf.hasArray()) {
            bytes = byteBuf.array();
            i2 = byteBuf.arrayOffset() + byteBuf.readerIndex();
        } else {
            bytes = ByteBufUtil.getBytes(byteBuf, byteBuf.readerIndex(), readableBytes, false);
        }
        if (this.extensionRegistry == null) {
            if (HAS_PARSER) {
                list.add(this.prototype.getParserForType().parseFrom(bytes, i2, readableBytes));
            } else {
                list.add(this.prototype.newBuilderForType().mergeFrom(bytes, i2, readableBytes).build());
            }
        } else if (HAS_PARSER) {
            list.add(this.prototype.getParserForType().parseFrom(bytes, i2, readableBytes, this.extensionRegistry));
        } else {
            list.add(this.prototype.newBuilderForType().mergeFrom(bytes, i2, readableBytes, this.extensionRegistry).build());
        }
    }

    public ProtobufDecoder(MessageLite messageLite, ExtensionRegistryLite extensionRegistryLite) {
        this.prototype = ((MessageLite) ObjectUtil.checkNotNull(messageLite, "prototype")).getDefaultInstanceForType();
        this.extensionRegistry = extensionRegistryLite;
    }
}
