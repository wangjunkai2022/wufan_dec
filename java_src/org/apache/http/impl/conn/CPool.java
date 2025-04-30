package org.apache.http.impl.conn;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.AbstractConnPool;
import org.apache.http.pool.ConnFactory;
@ThreadSafe
/* loaded from: classes5.dex */
class CPool extends AbstractConnPool<HttpRoute, ManagedHttpClientConnection, CPoolEntry> {
    private static final AtomicLong COUNTER = new AtomicLong();
    private final long timeToLive;
    private final TimeUnit tunit;

    public CPool(ConnFactory<HttpRoute, ManagedHttpClientConnection> connFactory, int i2, int i4, long j4, TimeUnit timeUnit) {
        super(connFactory, i2, i4);
        this.timeToLive = j4;
        this.tunit = timeUnit;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.http.pool.AbstractConnPool
    public CPoolEntry createEntry(HttpRoute httpRoute, ManagedHttpClientConnection managedHttpClientConnection) {
        return new CPoolEntry(Long.toString(COUNTER.getAndIncrement()), httpRoute, managedHttpClientConnection, this.timeToLive, this.tunit);
    }
}
