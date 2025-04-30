package io.netty.channel.pool;

import io.netty.channel.pool.ChannelPool;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.GlobalEventExecutor;
import io.netty.util.concurrent.Promise;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.ReadOnlyIterator;
import java.io.Closeable;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes5.dex */
public abstract class AbstractChannelPoolMap<K, P extends ChannelPool> implements ChannelPoolMap<K, P>, Iterable<Map.Entry<K, P>>, Closeable {
    private final ConcurrentMap<K, P> map = PlatformDependent.newConcurrentHashMap();

    private static Future<Void> poolCloseAsyncIfSupported(ChannelPool channelPool) {
        if (channelPool instanceof SimpleChannelPool) {
            return ((SimpleChannelPool) channelPool).closeAsync();
        }
        try {
            channelPool.close();
            return GlobalEventExecutor.INSTANCE.newSucceededFuture(null);
        } catch (Exception e4) {
            return GlobalEventExecutor.INSTANCE.newFailedFuture(e4);
        }
    }

    private Future<Boolean> removeAsyncIfSupported(K k4) {
        P remove = this.map.remove(ObjectUtil.checkNotNull(k4, "key"));
        if (remove != null) {
            final Promise newPromise = GlobalEventExecutor.INSTANCE.newPromise();
            poolCloseAsyncIfSupported(remove).addListener(new GenericFutureListener<Future<? super Void>>() { // from class: io.netty.channel.pool.AbstractChannelPoolMap.1
                @Override // io.netty.util.concurrent.GenericFutureListener
                public void operationComplete(Future<? super Void> future) throws Exception {
                    if (future.isSuccess()) {
                        newPromise.setSuccess(Boolean.TRUE);
                    } else {
                        newPromise.setFailure(future.cause());
                    }
                }
            });
            return newPromise;
        }
        return GlobalEventExecutor.INSTANCE.newSucceededFuture(Boolean.FALSE);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        for (K k4 : this.map.keySet()) {
            removeAsyncIfSupported(k4).syncUninterruptibly();
        }
    }

    @Override // io.netty.channel.pool.ChannelPoolMap
    public final boolean contains(K k4) {
        return this.map.containsKey(ObjectUtil.checkNotNull(k4, "key"));
    }

    @Override // io.netty.channel.pool.ChannelPoolMap
    public final P get(K k4) {
        P p3 = this.map.get(ObjectUtil.checkNotNull(k4, "key"));
        if (p3 == null) {
            P newPool = newPool(k4);
            P putIfAbsent = this.map.putIfAbsent(k4, newPool);
            if (putIfAbsent != null) {
                poolCloseAsyncIfSupported(newPool);
                return putIfAbsent;
            }
            return newPool;
        }
        return p3;
    }

    public final boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator<Map.Entry<K, P>> iterator() {
        return new ReadOnlyIterator(this.map.entrySet().iterator());
    }

    protected abstract P newPool(K k4);

    public final boolean remove(K k4) {
        P remove = this.map.remove(ObjectUtil.checkNotNull(k4, "key"));
        if (remove != null) {
            poolCloseAsyncIfSupported(remove);
            return true;
        }
        return false;
    }

    public final int size() {
        return this.map.size();
    }
}
