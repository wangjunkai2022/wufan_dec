package io.netty.buffer;
/* loaded from: classes5.dex */
public interface PoolChunkListMetric extends Iterable<PoolChunkMetric> {
    int maxUsage();

    int minUsage();
}
