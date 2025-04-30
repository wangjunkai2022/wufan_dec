package io.netty.handler.codec.socksx.v5;
/* loaded from: classes5.dex */
public interface Socks5CommandRequest extends a {
    String dstAddr();

    Socks5AddressType dstAddrType();

    int dstPort();

    Socks5CommandType type();
}
