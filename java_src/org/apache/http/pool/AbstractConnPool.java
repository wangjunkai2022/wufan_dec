package org.apache.http.pool;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.pool.PoolEntry;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
@ThreadSafe
/* loaded from: classes5.dex */
public abstract class AbstractConnPool<T, C, E extends PoolEntry<T, C>> implements ConnPool<T, E>, ConnPoolControl<T> {
    private final ConnFactory<T, C> connFactory;
    private volatile int defaultMaxPerRoute;
    private volatile boolean isShutDown;
    private volatile int maxTotal;
    private final Lock lock = new ReentrantLock();
    private final Map<T, RouteSpecificPool<T, C, E>> routeToPool = new HashMap();
    private final Set<E> leased = new HashSet();
    private final LinkedList<E> available = new LinkedList<>();
    private final LinkedList<PoolEntryFuture<E>> pending = new LinkedList<>();
    private final Map<T, Integer> maxPerRoute = new HashMap();

    public AbstractConnPool(ConnFactory<T, C> connFactory, int i2, int i4) {
        this.connFactory = (ConnFactory) Args.notNull(connFactory, "Connection factory");
        this.defaultMaxPerRoute = Args.notNegative(i2, "Max per route value");
        this.maxTotal = Args.notNegative(i4, "Max total value");
    }

    private int getMax(T t3) {
        Integer num = this.maxPerRoute.get(t3);
        if (num != null) {
            return num.intValue();
        }
        return this.defaultMaxPerRoute;
    }

    private RouteSpecificPool<T, C, E> getPool(final T t3) {
        RouteSpecificPool<T, C, E> routeSpecificPool = this.routeToPool.get(t3);
        if (routeSpecificPool == null) {
            RouteSpecificPool<T, C, E> routeSpecificPool2 = (RouteSpecificPool<T, C, E>) new RouteSpecificPool<T, C, E>(t3) { // from class: org.apache.http.pool.AbstractConnPool.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // org.apache.http.pool.RouteSpecificPool
                protected E createEntry(C c4) {
                    return (E) AbstractConnPool.this.createEntry(t3, c4);
                }
            };
            this.routeToPool.put(t3, routeSpecificPool2);
            return routeSpecificPool2;
        }
        return routeSpecificPool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public E getPoolEntryBlocking(T t3, Object obj, long j4, TimeUnit timeUnit, PoolEntryFuture<E> poolEntryFuture) throws IOException, InterruptedException, TimeoutException {
        E e4;
        E e5 = null;
        Date date = j4 > 0 ? new Date(System.currentTimeMillis() + timeUnit.toMillis(j4)) : null;
        this.lock.lock();
        try {
            RouteSpecificPool pool = getPool(t3);
            while (e5 == null) {
                Asserts.check(!this.isShutDown, "Connection pool shut down");
                while (true) {
                    e4 = (E) pool.getFree(obj);
                    if (e4 == null) {
                        break;
                    }
                    if (!e4.isClosed() && !e4.isExpired(System.currentTimeMillis())) {
                        break;
                    }
                    e4.close();
                    this.available.remove(e4);
                    pool.free(e4, false);
                }
                if (e4 != null) {
                    this.available.remove(e4);
                    this.leased.add(e4);
                    return e4;
                }
                int max = getMax(t3);
                int max2 = Math.max(0, (pool.getAllocatedCount() + 1) - max);
                if (max2 > 0) {
                    for (int i2 = 0; i2 < max2; i2++) {
                        PoolEntry lastUsed = pool.getLastUsed();
                        if (lastUsed == null) {
                            break;
                        }
                        lastUsed.close();
                        this.available.remove(lastUsed);
                        pool.remove(lastUsed);
                    }
                }
                if (pool.getAllocatedCount() < max) {
                    int max3 = Math.max(this.maxTotal - this.leased.size(), 0);
                    if (max3 > 0) {
                        if (this.available.size() > max3 - 1 && !this.available.isEmpty()) {
                            E removeLast = this.available.removeLast();
                            removeLast.close();
                            getPool(removeLast.getRoute()).remove(removeLast);
                        }
                        E e6 = (E) pool.add(this.connFactory.create(t3));
                        this.leased.add(e6);
                        return e6;
                    }
                }
                pool.queue(poolEntryFuture);
                this.pending.add(poolEntryFuture);
                boolean await = poolEntryFuture.await(date);
                pool.unqueue(poolEntryFuture);
                this.pending.remove(poolEntryFuture);
                if (!await && date != null && date.getTime() <= System.currentTimeMillis()) {
                    break;
                }
                e5 = e4;
            }
            throw new TimeoutException("Timeout waiting for connection");
        } finally {
            this.lock.unlock();
        }
    }

    private void purgePoolMap() {
        Iterator<Map.Entry<T, RouteSpecificPool<T, C, E>>> it2 = this.routeToPool.entrySet().iterator();
        while (it2.hasNext()) {
            RouteSpecificPool<T, C, E> value = it2.next().getValue();
            if (value.getPendingCount() + value.getAllocatedCount() == 0) {
                it2.remove();
            }
        }
    }

    public void closeExpired() {
        final long currentTimeMillis = System.currentTimeMillis();
        enumAvailable(new PoolEntryCallback<T, C>() { // from class: org.apache.http.pool.AbstractConnPool.4
            @Override // org.apache.http.pool.PoolEntryCallback
            public void process(PoolEntry<T, C> poolEntry) {
                if (poolEntry.isExpired(currentTimeMillis)) {
                    poolEntry.close();
                }
            }
        });
    }

    public void closeIdle(long j4, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        long millis = timeUnit.toMillis(j4);
        if (millis < 0) {
            millis = 0;
        }
        final long currentTimeMillis = System.currentTimeMillis() - millis;
        enumAvailable(new PoolEntryCallback<T, C>() { // from class: org.apache.http.pool.AbstractConnPool.3
            @Override // org.apache.http.pool.PoolEntryCallback
            public void process(PoolEntry<T, C> poolEntry) {
                if (poolEntry.getUpdated() <= currentTimeMillis) {
                    poolEntry.close();
                }
            }
        });
    }

    protected abstract E createEntry(T t3, C c4);

    protected void enumAvailable(PoolEntryCallback<T, C> poolEntryCallback) {
        this.lock.lock();
        try {
            Iterator<E> it2 = this.available.iterator();
            while (it2.hasNext()) {
                E next = it2.next();
                poolEntryCallback.process(next);
                if (next.isClosed()) {
                    getPool(next.getRoute()).remove(next);
                    it2.remove();
                }
            }
            purgePoolMap();
        } finally {
            this.lock.unlock();
        }
    }

    protected void enumLeased(PoolEntryCallback<T, C> poolEntryCallback) {
        this.lock.lock();
        try {
            for (E e4 : this.leased) {
                poolEntryCallback.process(e4);
            }
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getDefaultMaxPerRoute() {
        this.lock.lock();
        try {
            return this.defaultMaxPerRoute;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxPerRoute(T t3) {
        Args.notNull(t3, "Route");
        this.lock.lock();
        try {
            return getMax(t3);
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxTotal() {
        this.lock.lock();
        try {
            return this.maxTotal;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getStats(T t3) {
        Args.notNull(t3, "Route");
        this.lock.lock();
        try {
            RouteSpecificPool<T, C, E> pool = getPool(t3);
            return new PoolStats(pool.getLeasedCount(), pool.getPendingCount(), pool.getAvailableCount(), getMax(t3));
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getTotalStats() {
        this.lock.lock();
        try {
            return new PoolStats(this.leased.size(), this.pending.size(), this.available.size(), this.maxTotal);
        } finally {
            this.lock.unlock();
        }
    }

    public boolean isShutdown() {
        return this.isShutDown;
    }

    @Override // org.apache.http.pool.ConnPool
    public Future<E> lease(final T t3, final Object obj, FutureCallback<E> futureCallback) {
        Args.notNull(t3, "Route");
        Asserts.check(!this.isShutDown, "Connection pool shut down");
        return new PoolEntryFuture<E>(this.lock, futureCallback) { // from class: org.apache.http.pool.AbstractConnPool.2
            @Override // org.apache.http.pool.PoolEntryFuture
            public E getPoolEntry(long j4, TimeUnit timeUnit) throws InterruptedException, TimeoutException, IOException {
                E e4 = (E) AbstractConnPool.this.getPoolEntryBlocking(t3, obj, j4, timeUnit, this);
                AbstractConnPool.this.onLease(e4);
                return e4;
            }
        };
    }

    protected void onLease(E e4) {
    }

    protected void onRelease(E e4) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.pool.ConnPool
    public /* bridge */ /* synthetic */ void release(Object obj, boolean z3) {
        release((AbstractConnPool<T, C, E>) ((PoolEntry) obj), z3);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setDefaultMaxPerRoute(int i2) {
        Args.notNegative(i2, "Max per route value");
        this.lock.lock();
        try {
            this.defaultMaxPerRoute = i2;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxPerRoute(T t3, int i2) {
        Args.notNull(t3, "Route");
        Args.notNegative(i2, "Max per route value");
        this.lock.lock();
        try {
            this.maxPerRoute.put(t3, Integer.valueOf(i2));
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxTotal(int i2) {
        Args.notNegative(i2, "Max value");
        this.lock.lock();
        try {
            this.maxTotal = i2;
        } finally {
            this.lock.unlock();
        }
    }

    public void shutdown() throws IOException {
        if (this.isShutDown) {
            return;
        }
        this.isShutDown = true;
        this.lock.lock();
        try {
            Iterator<E> it2 = this.available.iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
            for (E e4 : this.leased) {
                e4.close();
            }
            for (RouteSpecificPool<T, C, E> routeSpecificPool : this.routeToPool.values()) {
                routeSpecificPool.shutdown();
            }
            this.routeToPool.clear();
            this.leased.clear();
            this.available.clear();
        } finally {
            this.lock.unlock();
        }
    }

    public String toString() {
        return "[leased: " + this.leased + "][available: " + this.available + "][pending: " + this.pending + "]";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void release(E e4, boolean z3) {
        this.lock.lock();
        try {
            if (this.leased.remove(e4)) {
                RouteSpecificPool pool = getPool(e4.getRoute());
                pool.free(e4, z3);
                if (z3 && !this.isShutDown) {
                    this.available.addFirst(e4);
                    onRelease(e4);
                } else {
                    e4.close();
                }
                PoolEntryFuture<E> nextPending = pool.nextPending();
                if (nextPending != null) {
                    this.pending.remove(nextPending);
                } else {
                    nextPending = this.pending.poll();
                }
                if (nextPending != null) {
                    nextPending.wakeup();
                }
            }
        } finally {
            this.lock.unlock();
        }
    }

    public Future<E> lease(T t3, Object obj) {
        return lease(t3, obj, null);
    }
}
