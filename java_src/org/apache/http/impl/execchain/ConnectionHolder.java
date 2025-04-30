package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpClientConnection;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.concurrent.Cancellable;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.conn.HttpClientConnectionManager;
@ThreadSafe
/* loaded from: classes5.dex */
class ConnectionHolder implements ConnectionReleaseTrigger, Cancellable, Closeable {
    private static final String TAG = "HttpClient";
    private final HttpClientConnection managedConn;
    private final HttpClientConnectionManager manager;
    private volatile boolean released;
    private volatile boolean reusable;
    private volatile Object state;
    private volatile TimeUnit tunit;
    private volatile long validDuration;

    public ConnectionHolder(HttpClientConnectionManager httpClientConnectionManager, HttpClientConnection httpClientConnection) {
        this.manager = httpClientConnectionManager;
        this.managedConn = httpClientConnection;
    }

    public void abortConnection() {
        HttpClientConnectionManager httpClientConnectionManager;
        HttpClientConnection httpClientConnection;
        Object obj;
        long j4;
        TimeUnit timeUnit;
        synchronized (this.managedConn) {
            if (this.released) {
                return;
            }
            this.released = true;
            try {
                this.managedConn.shutdown();
                Log.isLoggable(TAG, 3);
                httpClientConnectionManager = this.manager;
                httpClientConnection = this.managedConn;
                obj = null;
                j4 = 0;
                timeUnit = TimeUnit.MILLISECONDS;
            } catch (IOException e4) {
                if (Log.isLoggable(TAG, 3)) {
                    e4.getMessage();
                }
                httpClientConnectionManager = this.manager;
                httpClientConnection = this.managedConn;
                obj = null;
                j4 = 0;
                timeUnit = TimeUnit.MILLISECONDS;
            }
            httpClientConnectionManager.releaseConnection(httpClientConnection, obj, j4, timeUnit);
        }
    }

    @Override // org.apache.http.concurrent.Cancellable
    public boolean cancel() {
        boolean z3 = this.released;
        Log.isLoggable(TAG, 3);
        abortConnection();
        return !z3;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        abortConnection();
    }

    public boolean isReleased() {
        return this.released;
    }

    public boolean isReusable() {
        return this.reusable;
    }

    public void markNonReusable() {
        this.reusable = false;
    }

    public void markReusable() {
        this.reusable = true;
    }

    public void releaseConnection() {
        HttpClientConnectionManager httpClientConnectionManager;
        HttpClientConnection httpClientConnection;
        Object obj;
        long j4;
        TimeUnit timeUnit;
        synchronized (this.managedConn) {
            if (this.released) {
                return;
            }
            this.released = true;
            if (this.reusable) {
                this.manager.releaseConnection(this.managedConn, this.state, this.validDuration, this.tunit);
            } else {
                try {
                    this.managedConn.close();
                    Log.isLoggable(TAG, 3);
                    httpClientConnectionManager = this.manager;
                    httpClientConnection = this.managedConn;
                    obj = null;
                    j4 = 0;
                    timeUnit = TimeUnit.MILLISECONDS;
                } catch (IOException e4) {
                    if (Log.isLoggable(TAG, 3)) {
                        e4.getMessage();
                    }
                    httpClientConnectionManager = this.manager;
                    httpClientConnection = this.managedConn;
                    obj = null;
                    j4 = 0;
                    timeUnit = TimeUnit.MILLISECONDS;
                }
                httpClientConnectionManager.releaseConnection(httpClientConnection, obj, j4, timeUnit);
            }
        }
    }

    public void setState(Object obj) {
        this.state = obj;
    }

    public void setValidFor(long j4, TimeUnit timeUnit) {
        synchronized (this.managedConn) {
            this.validDuration = j4;
            this.tunit = timeUnit;
        }
    }
}
