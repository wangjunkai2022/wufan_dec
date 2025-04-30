package io.netty.buffer;

import io.netty.util.internal.StringUtil;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class PoolChunkList<T> implements PoolChunkListMetric {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Iterator<PoolChunkMetric> EMPTY_METRICS = Collections.emptyList().iterator();
    private final PoolArena<T> arena;
    private PoolChunk<T> head;
    private final int maxCapacity;
    private final int maxUsage;
    private final int minUsage;
    private final PoolChunkList<T> nextList;
    private PoolChunkList<T> prevList;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolChunkList(PoolArena<T> poolArena, PoolChunkList<T> poolChunkList, int i2, int i4, int i5) {
        this.arena = poolArena;
        this.nextList = poolChunkList;
        this.minUsage = i2;
        this.maxUsage = i4;
        this.maxCapacity = calculateMaxCapacity(i2, i5);
    }

    private static int calculateMaxCapacity(int i2, int i4) {
        int minUsage0 = minUsage0(i2);
        if (minUsage0 == 100) {
            return 0;
        }
        return (int) ((i4 * (100 - minUsage0)) / 100);
    }

    private static int minUsage0(int i2) {
        return Math.max(1, i2);
    }

    private boolean move(PoolChunk<T> poolChunk) {
        if (poolChunk.usage() < this.minUsage) {
            return move0(poolChunk);
        }
        add0(poolChunk);
        return true;
    }

    private boolean move0(PoolChunk<T> poolChunk) {
        PoolChunkList<T> poolChunkList = this.prevList;
        if (poolChunkList == null) {
            return false;
        }
        return poolChunkList.move(poolChunk);
    }

    private void remove(PoolChunk<T> poolChunk) {
        if (poolChunk == this.head) {
            PoolChunk<T> poolChunk2 = poolChunk.next;
            this.head = poolChunk2;
            if (poolChunk2 != null) {
                poolChunk2.prev = null;
                return;
            }
            return;
        }
        PoolChunk<T> poolChunk3 = poolChunk.next;
        PoolChunk<T> poolChunk4 = poolChunk.prev;
        poolChunk4.next = poolChunk3;
        if (poolChunk3 != null) {
            poolChunk3.prev = poolChunk4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(PoolChunk<T> poolChunk) {
        if (poolChunk.usage() >= this.maxUsage) {
            this.nextList.add(poolChunk);
        } else {
            add0(poolChunk);
        }
    }

    void add0(PoolChunk<T> poolChunk) {
        poolChunk.parent = this;
        PoolChunk<T> poolChunk2 = this.head;
        if (poolChunk2 == null) {
            this.head = poolChunk;
            poolChunk.prev = null;
            poolChunk.next = null;
            return;
        }
        poolChunk.prev = null;
        poolChunk.next = poolChunk2;
        poolChunk2.prev = poolChunk;
        this.head = poolChunk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean allocate(PooledByteBuf<T> pooledByteBuf, int i2, int i4) {
        if (i4 > this.maxCapacity) {
            return false;
        }
        for (PoolChunk<T> poolChunk = this.head; poolChunk != null; poolChunk = poolChunk.next) {
            if (poolChunk.allocate(pooledByteBuf, i2, i4)) {
                if (poolChunk.usage() >= this.maxUsage) {
                    remove(poolChunk);
                    this.nextList.add(poolChunk);
                    return true;
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy(PoolArena<T> poolArena) {
        for (PoolChunk<T> poolChunk = this.head; poolChunk != null; poolChunk = poolChunk.next) {
            poolArena.destroyChunk(poolChunk);
        }
        this.head = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean free(PoolChunk<T> poolChunk, long j4, ByteBuffer byteBuffer) {
        poolChunk.free(j4, byteBuffer);
        if (poolChunk.usage() < this.minUsage) {
            remove(poolChunk);
            return move0(poolChunk);
        }
        return true;
    }

    @Override // java.lang.Iterable
    public Iterator<PoolChunkMetric> iterator() {
        synchronized (this.arena) {
            if (this.head == null) {
                return EMPTY_METRICS;
            }
            ArrayList arrayList = new ArrayList();
            PoolChunk<T> poolChunk = this.head;
            do {
                arrayList.add(poolChunk);
                poolChunk = poolChunk.next;
            } while (poolChunk != null);
            return arrayList.iterator();
        }
    }

    @Override // io.netty.buffer.PoolChunkListMetric
    public int maxUsage() {
        return Math.min(this.maxUsage, 100);
    }

    @Override // io.netty.buffer.PoolChunkListMetric
    public int minUsage() {
        return minUsage0(this.minUsage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void prevList(PoolChunkList<T> poolChunkList) {
        this.prevList = poolChunkList;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        synchronized (this.arena) {
            PoolChunk<T> poolChunk = this.head;
            if (poolChunk == null) {
                return "none";
            }
            while (true) {
                sb.append(poolChunk);
                poolChunk = poolChunk.next;
                if (poolChunk == null) {
                    return sb.toString();
                }
                sb.append(StringUtil.NEWLINE);
            }
        }
    }
}
