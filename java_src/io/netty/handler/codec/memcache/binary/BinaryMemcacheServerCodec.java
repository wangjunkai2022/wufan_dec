package io.netty.handler.codec.memcache.binary;

import io.netty.channel.CombinedChannelDuplexHandler;
/* loaded from: classes5.dex */
public class BinaryMemcacheServerCodec extends CombinedChannelDuplexHandler<BinaryMemcacheRequestDecoder, BinaryMemcacheResponseEncoder> {
    public BinaryMemcacheServerCodec() {
        this(8192);
    }

    public BinaryMemcacheServerCodec(int i2) {
        super(new BinaryMemcacheRequestDecoder(i2), new BinaryMemcacheResponseEncoder());
    }
}
