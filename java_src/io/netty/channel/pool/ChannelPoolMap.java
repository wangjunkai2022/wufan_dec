package io.netty.channel.pool;

import io.netty.channel.pool.ChannelPool;
/* loaded from: classes5.dex */
public interface ChannelPoolMap<K, P extends ChannelPool> {
    boolean contains(K k4);

    P get(K k4);
}
