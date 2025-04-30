package io.netty.handler.codec.memcache;

import io.netty.util.ReferenceCounted;
/* loaded from: classes5.dex */
public interface MemcacheMessage extends a, ReferenceCounted {
    MemcacheMessage retain();

    MemcacheMessage retain(int i2);

    MemcacheMessage touch();

    MemcacheMessage touch(Object obj);
}
