package io.netty.handler.codec.socks;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ReplayingDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class SocksInitRequestDecoder extends ReplayingDecoder<State> {

    /* renamed from: io.netty.handler.codec.socks.SocksInitRequestDecoder$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$socks$SocksInitRequestDecoder$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$io$netty$handler$codec$socks$SocksInitRequestDecoder$State = iArr;
            try {
                iArr[State.CHECK_PROTOCOL_VERSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socks$SocksInitRequestDecoder$State[State.READ_AUTH_SCHEMES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes5.dex */
    enum State {
        CHECK_PROTOCOL_VERSION,
        READ_AUTH_SCHEMES
    }

    public SocksInitRequestDecoder() {
        super(State.CHECK_PROTOCOL_VERSION);
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        List emptyList;
        int i2 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$socks$SocksInitRequestDecoder$State[state().ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                throw new Error();
            }
        } else if (byteBuf.readByte() != SocksProtocolVersion.SOCKS5.byteValue()) {
            list.add(SocksCommonUtils.UNKNOWN_SOCKS_REQUEST);
            channelHandlerContext.pipeline().remove(this);
        } else {
            checkpoint(State.READ_AUTH_SCHEMES);
        }
        byte readByte = byteBuf.readByte();
        if (readByte > 0) {
            emptyList = new ArrayList(readByte);
            for (int i4 = 0; i4 < readByte; i4++) {
                emptyList.add(SocksAuthScheme.valueOf(byteBuf.readByte()));
            }
        } else {
            emptyList = Collections.emptyList();
        }
        list.add(new SocksInitRequest(emptyList));
        channelHandlerContext.pipeline().remove(this);
    }
}
