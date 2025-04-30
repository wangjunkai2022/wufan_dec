package org.apache.http.impl.conn;

import android.util.Log;
import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.PoolEntry;
@ThreadSafe
/* loaded from: classes5.dex */
class CPoolEntry extends PoolEntry<HttpRoute, ManagedHttpClientConnection> {
    private static final String TAG = "HttpClient";
    private volatile boolean routeComplete;

    public CPoolEntry(String str, HttpRoute httpRoute, ManagedHttpClientConnection managedHttpClientConnection, long j4, TimeUnit timeUnit) {
        super(str, httpRoute, managedHttpClientConnection, j4, timeUnit);
    }

    @Override // org.apache.http.pool.PoolEntry
    public void close() {
        try {
            closeConnection();
        } catch (IOException unused) {
            Log.isLoggable(TAG, 3);
        }
    }

    public void closeConnection() throws IOException {
        getConnection().close();
    }

    @Override // org.apache.http.pool.PoolEntry
    public boolean isClosed() {
        return !getConnection().isOpen();
    }

    @Override // org.apache.http.pool.PoolEntry
    public boolean isExpired(long j4) {
        boolean isExpired = super.isExpired(j4);
        if (isExpired && Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Connection ");
            sb.append(this);
            sb.append(" expired @ ");
            sb.append(new Date(getExpiry()));
        }
        return isExpired;
    }

    public boolean isRouteComplete() {
        return this.routeComplete;
    }

    public void markRouteComplete() {
        this.routeComplete = true;
    }

    public void shutdownConnection() throws IOException {
        getConnection().shutdown();
    }
}
