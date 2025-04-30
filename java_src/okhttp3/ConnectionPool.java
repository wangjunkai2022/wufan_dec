package okhttp3;

import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.platform.Platform;
/* loaded from: classes.dex */
public final class ConnectionPool {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Executor executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp ConnectionPool", true));
    private final Runnable cleanupRunnable;
    boolean cleanupRunning;
    private final Deque<RealConnection> connections;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;
    final RouteDatabase routeDatabase;

    public ConnectionPool() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    private int pruneAndGetAllocationCount(RealConnection realConnection, long j4) {
        List<Reference<StreamAllocation>> list = realConnection.allocations;
        int i2 = 0;
        while (i2 < list.size()) {
            Reference<StreamAllocation> reference = list.get(i2);
            if (reference.get() != null) {
                i2++;
            } else {
                Platform.get().logCloseableLeak("A connection to " + realConnection.route().address().url() + " was leaked. Did you forget to close a response body?", ((StreamAllocation.StreamAllocationReference) reference).callStackTrace);
                list.remove(i2);
                realConnection.noNewStreams = true;
                if (list.isEmpty()) {
                    realConnection.idleAtNanos = j4 - this.keepAliveDurationNs;
                    return 0;
                }
            }
        }
        return list.size();
    }

    long cleanup(long j4) {
        synchronized (this) {
            RealConnection realConnection = null;
            long j5 = Long.MIN_VALUE;
            int i2 = 0;
            int i4 = 0;
            for (RealConnection realConnection2 : this.connections) {
                if (pruneAndGetAllocationCount(realConnection2, j4) > 0) {
                    i4++;
                } else {
                    i2++;
                    long j6 = j4 - realConnection2.idleAtNanos;
                    if (j6 > j5) {
                        realConnection = realConnection2;
                        j5 = j6;
                    }
                }
            }
            long j7 = this.keepAliveDurationNs;
            if (j5 < j7 && i2 <= this.maxIdleConnections) {
                if (i2 > 0) {
                    return j7 - j5;
                } else if (i4 > 0) {
                    return j7;
                } else {
                    this.cleanupRunning = false;
                    return -1L;
                }
            }
            this.connections.remove(realConnection);
            Util.closeQuietly(realConnection.socket());
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean connectionBecameIdle(RealConnection realConnection) {
        if (!realConnection.noNewStreams && this.maxIdleConnections != 0) {
            notifyAll();
            return false;
        }
        this.connections.remove(realConnection);
        return true;
    }

    public synchronized int connectionCount() {
        return this.connections.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Socket deduplicate(Address address, StreamAllocation streamAllocation) {
        for (RealConnection realConnection : this.connections) {
            if (realConnection.isEligible(address, null) && realConnection.isMultiplexed() && realConnection != streamAllocation.connection()) {
                return streamAllocation.releaseAndAcquire(realConnection);
            }
        }
        return null;
    }

    public void evictAll() {
        ArrayList<RealConnection> arrayList = new ArrayList();
        synchronized (this) {
            Iterator<RealConnection> it2 = this.connections.iterator();
            while (it2.hasNext()) {
                RealConnection next = it2.next();
                if (next.allocations.isEmpty()) {
                    next.noNewStreams = true;
                    arrayList.add(next);
                    it2.remove();
                }
            }
        }
        for (RealConnection realConnection : arrayList) {
            Util.closeQuietly(realConnection.socket());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public RealConnection get(Address address, StreamAllocation streamAllocation, Route route) {
        for (RealConnection realConnection : this.connections) {
            if (realConnection.isEligible(address, route)) {
                streamAllocation.acquire(realConnection, true);
                return realConnection;
            }
        }
        return null;
    }

    public synchronized int idleConnectionCount() {
        int i2;
        i2 = 0;
        for (RealConnection realConnection : this.connections) {
            if (realConnection.allocations.isEmpty()) {
                i2++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void put(RealConnection realConnection) {
        if (!this.cleanupRunning) {
            this.cleanupRunning = true;
            executor.execute(this.cleanupRunnable);
        }
        this.connections.add(realConnection);
    }

    public ConnectionPool(int i2, long j4, TimeUnit timeUnit) {
        this.cleanupRunnable = new Runnable() { // from class: okhttp3.ConnectionPool.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long cleanup = ConnectionPool.this.cleanup(System.nanoTime());
                    if (cleanup == -1) {
                        return;
                    }
                    if (cleanup > 0) {
                        long j5 = cleanup / 1000000;
                        long j6 = cleanup - (1000000 * j5);
                        synchronized (ConnectionPool.this) {
                            try {
                                ConnectionPool.this.wait(j5, (int) j6);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            }
        };
        this.connections = new ArrayDeque();
        this.routeDatabase = new RouteDatabase();
        this.maxIdleConnections = i2;
        this.keepAliveDurationNs = timeUnit.toNanos(j4);
        if (j4 > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j4);
    }
}
