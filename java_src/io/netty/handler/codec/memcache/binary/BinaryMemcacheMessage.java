package io.netty.handler.codec.memcache.binary;

import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.memcache.MemcacheMessage;
/* loaded from: classes5.dex */
public interface BinaryMemcacheMessage extends MemcacheMessage {
    long cas();

    byte dataType();

    ByteBuf extras();

    byte extrasLength();

    ByteBuf key();

    short keyLength();

    byte magic();

    int opaque();

    byte opcode();

    @Override // io.netty.handler.codec.memcache.MemcacheMessage, io.netty.util.ReferenceCounted
    BinaryMemcacheMessage retain();

    @Override // io.netty.handler.codec.memcache.MemcacheMessage, io.netty.util.ReferenceCounted
    BinaryMemcacheMessage retain(int i2);

    BinaryMemcacheMessage setCas(long j4);

    BinaryMemcacheMessage setDataType(byte b4);

    BinaryMemcacheMessage setExtras(ByteBuf byteBuf);

    BinaryMemcacheMessage setKey(ByteBuf byteBuf);

    BinaryMemcacheMessage setMagic(byte b4);

    BinaryMemcacheMessage setOpaque(int i2);

    BinaryMemcacheMessage setOpcode(byte b4);

    BinaryMemcacheMessage setTotalBodyLength(int i2);

    int totalBodyLength();

    @Override // io.netty.handler.codec.memcache.MemcacheMessage, io.netty.util.ReferenceCounted
    BinaryMemcacheMessage touch();

    @Override // io.netty.handler.codec.memcache.MemcacheMessage, io.netty.util.ReferenceCounted
    BinaryMemcacheMessage touch(Object obj);
}
