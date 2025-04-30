package io.netty.handler.codec.socksx.v4;
/* loaded from: classes5.dex */
public interface Socks4CommandRequest extends a {
    String dstAddr();

    int dstPort();

    Socks4CommandType type();

    String userId();
}
