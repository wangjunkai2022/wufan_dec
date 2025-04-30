package org.apache.http.pool;

import java.util.concurrent.TimeUnit;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.util.Args;
@ThreadSafe
/* loaded from: classes5.dex */
public abstract class PoolEntry<T, C> {
    private final C conn;
    private final long created;
    @GuardedBy("this")
    private long expiry;
    private final String id;
    private final T route;
    private volatile Object state;
    @GuardedBy("this")
    private long updated;
    private final long validUnit;

    public PoolEntry(String str, T t3, C c4, long j4, TimeUnit timeUnit) {
        Args.notNull(t3, "Route");
        Args.notNull(c4, "Connection");
        Args.notNull(timeUnit, "Time unit");
        this.id = str;
        this.route = t3;
        this.conn = c4;
        long currentTimeMillis = System.currentTimeMillis();
        this.created = currentTimeMillis;
        if (j4 > 0) {
            this.validUnit = currentTimeMillis + timeUnit.toMillis(j4);
        } else {
            this.validUnit = Long.MAX_VALUE;
        }
        this.expiry = this.validUnit;
    }

    public abstract void close();

    public C getConnection() {
        return this.conn;
    }

    public long getCreated() {
        return this.created;
    }

    public synchronized long getExpiry() {
        return this.expiry;
    }

    public String getId() {
        return this.id;
    }

    public T getRoute() {
        return this.route;
    }

    public Object getState() {
        return this.state;
    }

    public synchronized long getUpdated() {
        return this.updated;
    }

    public long getValidUnit() {
        return this.validUnit;
    }

    public abstract boolean isClosed();

    public synchronized boolean isExpired(long j4) {
        return j4 >= this.expiry;
    }

    public void setState(Object obj) {
        this.state = obj;
    }

    public String toString() {
        return "[id:" + this.id + "][route:" + this.route + "][state:" + this.state + "]";
    }

    public synchronized void updateExpiry(long j4, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        long currentTimeMillis = System.currentTimeMillis();
        this.updated = currentTimeMillis;
        this.expiry = Math.min(j4 > 0 ? currentTimeMillis + timeUnit.toMillis(j4) : Long.MAX_VALUE, this.validUnit);
    }

    public PoolEntry(String str, T t3, C c4) {
        this(str, t3, c4, 0L, TimeUnit.MILLISECONDS);
    }
}
