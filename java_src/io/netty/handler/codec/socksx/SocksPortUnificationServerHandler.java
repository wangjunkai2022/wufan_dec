package io.netty.handler.codec.socksx;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPipeline;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.handler.codec.socksx.v4.Socks4ServerDecoder;
import io.netty.handler.codec.socksx.v4.Socks4ServerEncoder;
import io.netty.handler.codec.socksx.v5.Socks5InitialRequestDecoder;
import io.netty.handler.codec.socksx.v5.Socks5ServerEncoder;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.List;
/* loaded from: classes5.dex */
public class SocksPortUnificationServerHandler extends ByteToMessageDecoder {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SocksPortUnificationServerHandler.class);
    private final Socks5ServerEncoder socks5encoder;

    /* renamed from: io.netty.handler.codec.socksx.SocksPortUnificationServerHandler$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$socksx$SocksVersion;

        static {
            int[] iArr = new int[SocksVersion.values().length];
            $SwitchMap$io$netty$handler$codec$socksx$SocksVersion = iArr;
            try {
                iArr[SocksVersion.SOCKS4a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socksx$SocksVersion[SocksVersion.SOCKS5.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public SocksPortUnificationServerHandler() {
        this(Socks5ServerEncoder.DEFAULT);
    }

    private static void logKnownVersion(ChannelHandlerContext channelHandlerContext, SocksVersion socksVersion) {
        logger.debug("{} Protocol version: {}({})", channelHandlerContext.channel(), socksVersion);
    }

    private static void logUnknownVersion(ChannelHandlerContext channelHandlerContext, byte b4) {
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("{} Unknown protocol version: {}", channelHandlerContext.channel(), Integer.valueOf(b4 & 255));
        }
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        int readerIndex = byteBuf.readerIndex();
        if (byteBuf.writerIndex() == readerIndex) {
            return;
        }
        ChannelPipeline pipeline = channelHandlerContext.pipeline();
        byte b4 = byteBuf.getByte(readerIndex);
        SocksVersion valueOf = SocksVersion.valueOf(b4);
        int i2 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$socksx$SocksVersion[valueOf.ordinal()];
        if (i2 == 1) {
            logKnownVersion(channelHandlerContext, valueOf);
            pipeline.addAfter(channelHandlerContext.name(), null, Socks4ServerEncoder.INSTANCE);
            pipeline.addAfter(channelHandlerContext.name(), null, new Socks4ServerDecoder());
        } else if (i2 != 2) {
            logUnknownVersion(channelHandlerContext, b4);
            byteBuf.skipBytes(byteBuf.readableBytes());
            channelHandlerContext.close();
            return;
        } else {
            logKnownVersion(channelHandlerContext, valueOf);
            pipeline.addAfter(channelHandlerContext.name(), null, this.socks5encoder);
            pipeline.addAfter(channelHandlerContext.name(), null, new Socks5InitialRequestDecoder());
        }
        pipeline.remove(this);
    }

    public SocksPortUnificationServerHandler(Socks5ServerEncoder socks5ServerEncoder) {
        this.socks5encoder = (Socks5ServerEncoder) ObjectUtil.checkNotNull(socks5ServerEncoder, "socks5encoder");
    }
}
