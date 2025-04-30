package io.netty.handler.codec.socksx.v4;
/* loaded from: classes5.dex */
public interface Socks4CommandResponse extends a {
    String dstAddr();

    int dstPort();

    Socks4CommandStatus status();
}
