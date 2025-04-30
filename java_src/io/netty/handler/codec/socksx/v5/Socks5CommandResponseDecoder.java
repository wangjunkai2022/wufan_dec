package io.netty.handler.codec.socksx.v5;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderException;
import io.netty.handler.codec.DecoderResult;
import io.netty.handler.codec.ReplayingDecoder;
import io.netty.handler.codec.socksx.SocksVersion;
import io.netty.util.internal.ObjectUtil;
import java.util.List;
/* loaded from: classes5.dex */
public class Socks5CommandResponseDecoder extends ReplayingDecoder<State> {
    private final Socks5AddressDecoder addressDecoder;

    /* renamed from: io.netty.handler.codec.socksx.v5.Socks5CommandResponseDecoder$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$socksx$v5$Socks5CommandResponseDecoder$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$io$netty$handler$codec$socksx$v5$Socks5CommandResponseDecoder$State = iArr;
            try {
                iArr[State.INIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socksx$v5$Socks5CommandResponseDecoder$State[State.SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socksx$v5$Socks5CommandResponseDecoder$State[State.FAILURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum State {
        INIT,
        SUCCESS,
        FAILURE
    }

    public Socks5CommandResponseDecoder() {
        this(Socks5AddressDecoder.DEFAULT);
    }

    private void fail(List<Object> list, Exception exc) {
        if (!(exc instanceof DecoderException)) {
            exc = new DecoderException(exc);
        }
        checkpoint(State.FAILURE);
        DefaultSocks5CommandResponse defaultSocks5CommandResponse = new DefaultSocks5CommandResponse(Socks5CommandStatus.FAILURE, Socks5AddressType.IPv4, null, 0);
        defaultSocks5CommandResponse.setDecoderResult(DecoderResult.failure(exc));
        list.add(defaultSocks5CommandResponse);
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        try {
            int i2 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$socksx$v5$Socks5CommandResponseDecoder$State[state().ordinal()];
            if (i2 == 1) {
                byte readByte = byteBuf.readByte();
                SocksVersion socksVersion = SocksVersion.SOCKS5;
                if (readByte == socksVersion.byteValue()) {
                    Socks5CommandStatus valueOf = Socks5CommandStatus.valueOf(byteBuf.readByte());
                    byteBuf.skipBytes(1);
                    Socks5AddressType valueOf2 = Socks5AddressType.valueOf(byteBuf.readByte());
                    list.add(new DefaultSocks5CommandResponse(valueOf, valueOf2, this.addressDecoder.decodeAddress(valueOf2, byteBuf), byteBuf.readUnsignedShort()));
                    checkpoint(State.SUCCESS);
                } else {
                    throw new DecoderException("unsupported version: " + ((int) readByte) + " (expected: " + ((int) socksVersion.byteValue()) + ')');
                }
            } else if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                byteBuf.skipBytes(actualReadableBytes());
                return;
            }
            int actualReadableBytes = actualReadableBytes();
            if (actualReadableBytes > 0) {
                list.add(byteBuf.readRetainedSlice(actualReadableBytes));
            }
        } catch (Exception e4) {
            fail(list, e4);
        }
    }

    public Socks5CommandResponseDecoder(Socks5AddressDecoder socks5AddressDecoder) {
        super(State.INIT);
        this.addressDecoder = (Socks5AddressDecoder) ObjectUtil.checkNotNull(socks5AddressDecoder, "addressDecoder");
    }
}
