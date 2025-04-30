package io.netty.handler.codec.spdy;

import io.netty.channel.CombinedChannelDuplexHandler;
/* loaded from: classes5.dex */
public final class SpdyHttpCodec extends CombinedChannelDuplexHandler<SpdyHttpDecoder, SpdyHttpEncoder> {
    public SpdyHttpCodec(SpdyVersion spdyVersion, int i2) {
        super(new SpdyHttpDecoder(spdyVersion, i2), new SpdyHttpEncoder(spdyVersion));
    }

    public SpdyHttpCodec(SpdyVersion spdyVersion, int i2, boolean z3) {
        super(new SpdyHttpDecoder(spdyVersion, i2, z3), new SpdyHttpEncoder(spdyVersion));
    }
}
