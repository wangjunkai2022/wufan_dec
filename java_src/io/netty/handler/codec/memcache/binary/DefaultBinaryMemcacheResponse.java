package io.netty.handler.codec.memcache.binary;

import io.netty.buffer.ByteBuf;
/* loaded from: classes5.dex */
public class DefaultBinaryMemcacheResponse extends AbstractBinaryMemcacheMessage implements BinaryMemcacheResponse {
    public static final byte RESPONSE_MAGIC_BYTE = -127;
    private short status;

    public DefaultBinaryMemcacheResponse() {
        this(null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void copyMeta(DefaultBinaryMemcacheResponse defaultBinaryMemcacheResponse) {
        super.copyMeta((AbstractBinaryMemcacheMessage) defaultBinaryMemcacheResponse);
        defaultBinaryMemcacheResponse.status = this.status;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheResponse
    public BinaryMemcacheResponse setStatus(short s3) {
        this.status = s3;
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.BinaryMemcacheResponse
    public short status() {
        return this.status;
    }

    public DefaultBinaryMemcacheResponse(ByteBuf byteBuf) {
        this(byteBuf, null);
    }

    public DefaultBinaryMemcacheResponse(ByteBuf byteBuf, ByteBuf byteBuf2) {
        super(byteBuf, byteBuf2);
        setMagic(RESPONSE_MAGIC_BYTE);
    }

    @Override // io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public BinaryMemcacheResponse retain() {
        super.retain();
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public BinaryMemcacheResponse touch() {
        super.touch();
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public BinaryMemcacheResponse retain(int i2) {
        super.retain(i2);
        return this;
    }

    @Override // io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheMessage, io.netty.util.ReferenceCounted
    public BinaryMemcacheResponse touch(Object obj) {
        super.touch(obj);
        return this;
    }
}
