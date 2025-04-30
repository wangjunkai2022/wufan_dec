package io.netty.handler.codec.socks;

import com.alipay.sdk.cons.c;
import io.netty.buffer.ByteBuf;
import io.netty.util.CharsetUtil;
import io.netty.util.NetUtil;
import io.netty.util.internal.ObjectUtil;
import java.net.IDN;
/* loaded from: classes5.dex */
public final class SocksCmdRequest extends SocksRequest {
    private final SocksAddressType addressType;
    private final SocksCmdType cmdType;
    private final String host;
    private final int port;

    /* renamed from: io.netty.handler.codec.socks.SocksCmdRequest$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$socks$SocksAddressType;

        static {
            int[] iArr = new int[SocksAddressType.values().length];
            $SwitchMap$io$netty$handler$codec$socks$SocksAddressType = iArr;
            try {
                iArr[SocksAddressType.IPv4.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socks$SocksAddressType[SocksAddressType.DOMAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socks$SocksAddressType[SocksAddressType.IPv6.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$socks$SocksAddressType[SocksAddressType.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public SocksCmdRequest(SocksCmdType socksCmdType, SocksAddressType socksAddressType, String str, int i2) {
        super(SocksRequestType.CMD);
        ObjectUtil.checkNotNull(socksCmdType, "cmdType");
        ObjectUtil.checkNotNull(socksAddressType, "addressType");
        ObjectUtil.checkNotNull(str, c.f9731f);
        int i4 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$socks$SocksAddressType[socksAddressType.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3 && !NetUtil.isValidIpV6Address(str)) {
                    throw new IllegalArgumentException(str + " is not a valid IPv6 address");
                }
            } else {
                String ascii = IDN.toASCII(str);
                if (ascii.length() > 255) {
                    throw new IllegalArgumentException(str + " IDN: " + ascii + " exceeds 255 char limit");
                }
                str = ascii;
            }
        } else if (!NetUtil.isValidIpV4Address(str)) {
            throw new IllegalArgumentException(str + " is not a valid IPv4 address");
        }
        if (i2 > 0 && i2 < 65536) {
            this.cmdType = socksCmdType;
            this.addressType = socksAddressType;
            this.host = str;
            this.port = i2;
            return;
        }
        throw new IllegalArgumentException(i2 + " is not in bounds 0 < x < 65536");
    }

    public SocksAddressType addressType() {
        return this.addressType;
    }

    public SocksCmdType cmdType() {
        return this.cmdType;
    }

    @Override // io.netty.handler.codec.socks.SocksMessage
    public void encodeAsByteBuf(ByteBuf byteBuf) {
        byteBuf.writeByte(protocolVersion().byteValue());
        byteBuf.writeByte(this.cmdType.byteValue());
        byteBuf.writeByte(0);
        byteBuf.writeByte(this.addressType.byteValue());
        int i2 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$socks$SocksAddressType[this.addressType.ordinal()];
        if (i2 == 1) {
            byteBuf.writeBytes(NetUtil.createByteArrayFromIpAddressString(this.host));
            byteBuf.writeShort(this.port);
        } else if (i2 == 2) {
            byteBuf.writeByte(this.host.length());
            byteBuf.writeCharSequence(this.host, CharsetUtil.US_ASCII);
            byteBuf.writeShort(this.port);
        } else if (i2 != 3) {
        } else {
            byteBuf.writeBytes(NetUtil.createByteArrayFromIpAddressString(this.host));
            byteBuf.writeShort(this.port);
        }
    }

    public String host() {
        return this.addressType == SocksAddressType.DOMAIN ? IDN.toUnicode(this.host) : this.host;
    }

    public int port() {
        return this.port;
    }
}
