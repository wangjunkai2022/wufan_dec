package org.apache.http.impl.conn;

import android.util.Log;
import com.facebook.common.util.f;
import java.io.Closeable;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpHost;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.Lookup;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.ConnectionRequest;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.LangUtils;
@ThreadSafe
/* loaded from: classes5.dex */
public class BasicHttpClientConnectionManager implements HttpClientConnectionManager, Closeable {
    private static final String TAG = "HttpClient";
    @GuardedBy("this")
    private ManagedHttpClientConnection conn;
    @GuardedBy("this")
    private ConnectionConfig connConfig;
    private final HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> connFactory;
    private final HttpClientConnectionOperator connectionOperator;
    @GuardedBy("this")
    private long expiry;
    private final AtomicBoolean isShutdown;
    @GuardedBy("this")
    private boolean leased;
    @GuardedBy("this")
    private HttpRoute route;
    @GuardedBy("this")
    private SocketConfig socketConfig;
    @GuardedBy("this")
    private Object state;
    @GuardedBy("this")
    private long updated;

    public BasicHttpClientConnectionManager(Lookup<ConnectionSocketFactory> lookup, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory, SchemePortResolver schemePortResolver, DnsResolver dnsResolver) {
        this.connectionOperator = new HttpClientConnectionOperator(lookup, schemePortResolver, dnsResolver);
        this.connFactory = httpConnectionFactory == null ? ManagedHttpClientConnectionFactory.INSTANCE : httpConnectionFactory;
        this.expiry = Long.MAX_VALUE;
        this.socketConfig = SocketConfig.DEFAULT;
        this.connConfig = ConnectionConfig.DEFAULT;
        this.isShutdown = new AtomicBoolean(false);
    }

    private void checkExpiry() {
        if (this.conn == null || System.currentTimeMillis() < this.expiry) {
            return;
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Connection expired @ ");
            sb.append(new Date(this.expiry));
        }
        closeConnection();
    }

    private void closeConnection() {
        if (this.conn != null) {
            Log.isLoggable(TAG, 3);
            try {
                this.conn.close();
            } catch (IOException unused) {
                Log.isLoggable(TAG, 3);
            }
            this.conn = null;
        }
    }

    private static Registry<ConnectionSocketFactory> getDefaultRegistry() {
        return RegistryBuilder.create().register(f.f11765a, PlainConnectionSocketFactory.getSocketFactory()).register("https", SSLConnectionSocketFactory.getSocketFactory()).build();
    }

    private void shutdownConnection() {
        if (this.conn != null) {
            Log.isLoggable(TAG, 3);
            try {
                this.conn.shutdown();
            } catch (IOException unused) {
                Log.isLoggable(TAG, 3);
            }
            this.conn = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        shutdown();
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public synchronized void closeExpiredConnections() {
        if (this.isShutdown.get()) {
            return;
        }
        if (!this.leased) {
            checkExpiry();
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public synchronized void closeIdleConnections(long j4, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        if (this.isShutdown.get()) {
            return;
        }
        if (!this.leased) {
            long millis = timeUnit.toMillis(j4);
            if (millis < 0) {
                millis = 0;
            }
            if (this.updated <= System.currentTimeMillis() - millis) {
                closeConnection();
            }
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void connect(HttpClientConnection httpClientConnection, HttpRoute httpRoute, int i2, HttpContext httpContext) throws IOException {
        HttpHost targetHost;
        Args.notNull(httpClientConnection, "Connection");
        Args.notNull(httpRoute, "HTTP route");
        Asserts.check(httpClientConnection == this.conn, "Connection not obtained from this manager");
        if (httpRoute.getProxyHost() != null) {
            targetHost = httpRoute.getProxyHost();
        } else {
            targetHost = httpRoute.getTargetHost();
        }
        this.connectionOperator.connect(this.conn, targetHost, httpRoute.getLocalAddress() != null ? new InetSocketAddress(httpRoute.getLocalAddress(), 0) : null, i2, this.socketConfig, httpContext);
    }

    protected void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    synchronized HttpClientConnection getConnection(HttpRoute httpRoute, Object obj) {
        Asserts.check(!this.isShutdown.get(), "Connection manager has been shut down");
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Get connection for route ");
            sb.append(httpRoute);
        }
        Asserts.check(this.leased ? false : true, "Connection is still allocated");
        if (!LangUtils.equals(this.route, httpRoute) || !LangUtils.equals(this.state, obj)) {
            closeConnection();
        }
        this.route = httpRoute;
        this.state = obj;
        checkExpiry();
        if (this.conn == null) {
            this.conn = this.connFactory.create(httpRoute, this.connConfig);
        }
        this.leased = true;
        return this.conn;
    }

    public synchronized ConnectionConfig getConnectionConfig() {
        return this.connConfig;
    }

    HttpRoute getRoute() {
        return this.route;
    }

    public synchronized SocketConfig getSocketConfig() {
        return this.socketConfig;
    }

    Object getState() {
        return this.state;
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public synchronized void releaseConnection(HttpClientConnection httpClientConnection, Object obj, long j4, TimeUnit timeUnit) {
        String str;
        Args.notNull(httpClientConnection, "Connection");
        Asserts.check(httpClientConnection == this.conn, "Connection not obtained from this manager");
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Releasing connection ");
            sb.append(httpClientConnection);
        }
        if (this.isShutdown.get()) {
            return;
        }
        this.updated = System.currentTimeMillis();
        if (!this.conn.isOpen()) {
            this.conn = null;
            this.route = null;
            this.conn = null;
            this.expiry = Long.MAX_VALUE;
        } else {
            this.state = obj;
            if (Log.isLoggable(TAG, 3)) {
                if (j4 > 0) {
                    str = "for " + j4 + " " + timeUnit;
                } else {
                    str = "indefinitely";
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Connection can be kept alive ");
                sb2.append(str);
            }
            if (j4 > 0) {
                this.expiry = this.updated + timeUnit.toMillis(j4);
            } else {
                this.expiry = Long.MAX_VALUE;
            }
        }
        this.leased = false;
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public final ConnectionRequest requestConnection(final HttpRoute httpRoute, final Object obj) {
        Args.notNull(httpRoute, "Route");
        return new ConnectionRequest() { // from class: org.apache.http.impl.conn.BasicHttpClientConnectionManager.1
            @Override // org.apache.http.concurrent.Cancellable
            public boolean cancel() {
                return false;
            }

            @Override // org.apache.http.conn.ConnectionRequest
            public HttpClientConnection get(long j4, TimeUnit timeUnit) {
                return BasicHttpClientConnectionManager.this.getConnection(httpRoute, obj);
            }
        };
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void routeComplete(HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpContext httpContext) throws IOException {
    }

    public synchronized void setConnectionConfig(ConnectionConfig connectionConfig) {
        if (connectionConfig == null) {
            connectionConfig = ConnectionConfig.DEFAULT;
        }
        this.connConfig = connectionConfig;
    }

    public synchronized void setSocketConfig(SocketConfig socketConfig) {
        if (socketConfig == null) {
            socketConfig = SocketConfig.DEFAULT;
        }
        this.socketConfig = socketConfig;
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public synchronized void shutdown() {
        if (this.isShutdown.compareAndSet(false, true)) {
            shutdownConnection();
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void upgrade(HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpContext httpContext) throws IOException {
        Args.notNull(httpClientConnection, "Connection");
        Args.notNull(httpRoute, "HTTP route");
        Asserts.check(httpClientConnection == this.conn, "Connection not obtained from this manager");
        this.connectionOperator.upgrade(this.conn, httpRoute.getTargetHost(), httpContext);
    }

    public BasicHttpClientConnectionManager(Lookup<ConnectionSocketFactory> lookup, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory) {
        this(lookup, httpConnectionFactory, null, null);
    }

    public BasicHttpClientConnectionManager(Lookup<ConnectionSocketFactory> lookup) {
        this(lookup, null, null, null);
    }

    public BasicHttpClientConnectionManager() {
        this(getDefaultRegistry(), null, null, null);
    }
}
